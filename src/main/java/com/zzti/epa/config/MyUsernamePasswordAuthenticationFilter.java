package com.zzti.epa.config;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @ClassName MyUsernamePasswordAuthenticationFilter
 * @Description 自定义用户名密码过滤器，主要用来区分学生和教师用户
 * @Author Administrator
 * @Date 2020-05-12 14:04
 **/


public class MyUsernamePasswordAuthenticationFilter extends UsernamePasswordAuthenticationFilter {
//AbstractAuthenticationProcessingFilter

    public static final String SPRING_SECURITY_FORM_USERTYPE_KEY = "userType";



    @Override
    public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response)
            throws AuthenticationException {
      //  System.out.println("哎，，，，，，，，");
        if (!request.getMethod()
                    .equals("POST")) {
                        throw new AuthenticationServiceException("Authentication method not supported: " + request.getMethod());
                    }

        UsernamePasswordAuthenticationToken authRequest = getAuthRequest(request);

        // Allow subclasses to set the "details" property
        setDetails(request, authRequest);

        return this.getAuthenticationManager()
                     .authenticate(authRequest);

    }
    //新建方法===========================================================
    private UsernamePasswordAuthenticationToken getAuthRequest(

            HttpServletRequest request) {
        String username = obtainUsername(request);
        String password = obtainPassword(request);
        String userType=obtainDomain(request);
        if (username == null) {
            username = "";
            }
         if (password == null) {
                 password = "";
             }
         if (userType == null) {
             userType = "";
         }

        // ...
        //把用户类型与用户名进行拼接
        System.out.println( String.valueOf(Character.LINE_SEPARATOR));
        String usernameDomain = String.format("%s%s%s", username.trim(),
                String.valueOf("@"), userType);
        System.out.println(usernameDomain+password);
        return new UsernamePasswordAuthenticationToken(
                usernameDomain, password);
    }



    //新建方法===========================================================
    public void setAuthenticationManager(AuthenticationManager authenticationManager) {
        super.setAuthenticationManager(authenticationManager);
    }


    protected void setDetails(HttpServletRequest request,
                              UsernamePasswordAuthenticationToken authRequest) {
        authRequest.setDetails(authenticationDetailsSource.buildDetails(request));
    }
    private String obtainDomain(HttpServletRequest request) {
                 return request.getParameter(SPRING_SECURITY_FORM_USERTYPE_KEY);
             }


}
