package com.zzti.epa.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.Student;
import com.zzti.epa.model.Teacher;
import com.zzti.epa.service.MyUserDetailService;
import com.zzti.epa.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.*;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.ObjectPostProcessor;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.access.intercept.FilterSecurityInterceptor;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @ClassName SecurityConfig
 * @Description TODO
 * @Author Administrator
 * @Date 2020/2/29 9:37
 **/
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    MyUserDetailService myUserDetailService;
    @Autowired
    TeacherService teacherService;

    public AuthenticationProvider authProvider() {
        DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
        provider.setUserDetailsService(myUserDetailService);
        provider.setPasswordEncoder(passwordEncoder());
        return provider;
    }
    //SpringSecurity5之后才有
    @Autowired
     public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
                 auth.authenticationProvider(authProvider());
             }

    @Bean
    PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }
   /* @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        //
        //System.out.println(auth.toString());
        //auth.userDetailsService(myUserDetailService);//对userDetailService进行修该
        auth.authenticationProvider(authProvider());
    }*/
    @Autowired
    CustomFilterInvocationSecurityMetadataSource customFilterInvocationSecurityMetadataSource;
    @Autowired
    CustomUrlDecisionManager myDecisionManager;



    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/login","/css/**","/js/**","/index.html","/img/**","/font/**","/favicon.ico");//如果要访问login登录页面，不用经过spirngSecurity拦截
    }


   public MyUsernamePasswordAuthenticationFilter myAuthenticationFilter() throws Exception {
       System.out.println("执行了没啊");
        MyUsernamePasswordAuthenticationFilter filter = new MyUsernamePasswordAuthenticationFilter();
        filter.setAuthenticationSuccessHandler(new AuthenticationSuccessHandler() {
            @Override
            public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
                //登录成功，前提工作-》在model里面封装自定义返回实体类RespBean
                //resp.setContentType("application/json:charset=utf-8");
                response.setContentType("application/json;charset=utf-8");

                PrintWriter out=response.getWriter();
                String s="";
                if("student".equals(request.getParameter("userType"))){//学生登录
                    request.getSession().setAttribute("userType", "student");//在session中设置登录用户类型
                    Student student=(Student) authentication.getPrincipal();//获取登录成功的hr对象
                    student.setPassword(null);//避免密码泄露
                    RespBean ok = RespBean.ok("登录成功！", student);
                     s = new ObjectMapper().writeValueAsString(ok);
                }else{
                    request.getSession().setAttribute("userType", "teacher");//在session中设置登录用户类型
                    Teacher teacher=(Teacher)authentication.getPrincipal();//获取登录成功的hr对象
                    teacher.setPassword(null);//避免密码泄露
                    RespBean ok = RespBean.ok("登录成功！", teacher);
                    s = new ObjectMapper().writeValueAsString(ok);
                }

             //   System.out.println("@@@@"+authentication.getPrincipal());
              //  System.out.println("@@@@"+authentication.getPrincipal().toString());
                // System.out.println("hr:"+hr.toString());


                out.write(s);
                out.flush();
                out.close();
            }
        });
        filter.setAuthenticationFailureHandler(new AuthenticationFailureHandler() {
            @Override
            public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException e) throws IOException, ServletException {
                //登录失败
                response.setContentType("application/json;charset=utf-8");
                PrintWriter out=response.getWriter();
                RespBean respBean =RespBean.error("登录失败！");
                if(e instanceof LockedException){
                    respBean.setMsg("账户被锁定，请联系管理员");
                }else if(e instanceof CredentialsExpiredException){
                    respBean.setMsg("账户密码过期");
                }else if(e instanceof AccountExpiredException){
                    respBean.setMsg("账户过期");
                }else if(e instanceof DisabledException){
                    respBean.setMsg("账户被禁用");
                }else if(e instanceof BadCredentialsException){
                    respBean.setMsg("用户名或密码输入错误,请重新输入");
                }
                String s = new ObjectMapper().writeValueAsString(respBean);
                out.write(s);
                out.flush();
                out.close();
            }
        });
        filter.setAuthenticationManager(authenticationManagerBean());
        filter.setFilterProcessesUrl("/doLogin");
        return filter;
    }
    /*@Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        AuthenticationManager manager = super.authenticationManagerBean();
        return manager;
    }*/
    @Override
    protected void configure(HttpSecurity http) throws Exception {


        http


                .authorizeRequests()
                .anyRequest().authenticated()//任何请求在认证之后才能访问
                //这里加入动态权限
                .withObjectPostProcessor(new ObjectPostProcessor<FilterSecurityInterceptor>() {
                    @Override
                    public <O extends FilterSecurityInterceptor> O postProcess(O object) {
                        object.setAccessDecisionManager(myDecisionManager);
                        object.setSecurityMetadataSource(customFilterInvocationSecurityMetadataSource);
                        return object;
                    }
                })

                .and()
                .formLogin()
                .usernameParameter("username")
                .passwordParameter("password")
                .loginProcessingUrl("/doLogin")
                .loginPage("/login")//本来默认是有登录页，但你这在里配置后，默认的就失效了
                                    //注意：但是我们后端不应该有页面跳转的，只应该返回json

                .successHandler(new AuthenticationSuccessHandler() {
                    @Override
                    public void onAuthenticationSuccess(HttpServletRequest req, HttpServletResponse resp, Authentication authentication) throws IOException, ServletException {

                    }
                })
                .failureHandler(new AuthenticationFailureHandler() {
                    @Override
                    public void onAuthenticationFailure(HttpServletRequest req, HttpServletResponse resp, AuthenticationException e) throws IOException, ServletException {

                    }
                })
                .permitAll()//跟登录相关的接口不需要认证即可访问
                .and()
                .logout()//注销登录，如果想配置，这里有.logouturl
                .logoutSuccessHandler(new LogoutSuccessHandler() {
                    @Override
                    public void onLogoutSuccess(HttpServletRequest req, HttpServletResponse resp, Authentication authentication) throws IOException, ServletException {
                        resp.setContentType("application/json;charset=utf-8");
                        PrintWriter out = resp.getWriter();
                        out.write(new ObjectMapper().writeValueAsString(RespBean.ok("注销成功!")));
                        out.flush();
                        out.close();
                    }
                })
                .permitAll()
                .and()
                //.csrf().disable();//postman测试需关闭，如果有疑问看第十章
                .csrf().disable().exceptionHandling().authenticationEntryPoint(new AuthenticationEntryPoint() {
                    @Override
                    public void commence(HttpServletRequest req, HttpServletResponse resp, AuthenticationException e) throws IOException, ServletException {
                        //在这里你可以选择请求失败了之后，是重定向还是直接返回结果
                        //没有登录认证，在这里处理结果，不要重定向
                        resp.setContentType("application/json;charset=utf-8");
                        resp.setStatus(401);
                        PrintWriter out=resp.getWriter();
                        RespBean respBean =RespBean.error("访问失败！");
                        if(e instanceof InsufficientAuthenticationException){
                            respBean.setMsg("请求失败，请联系管理员！");
                        }
                        String s = new ObjectMapper().writeValueAsString(respBean);
                        out.write(s);
                        out.flush();
                        out.close();
                    }
                });
        http.addFilterAt(myAuthenticationFilter(), UsernamePasswordAuthenticationFilter.class);


    }
}
