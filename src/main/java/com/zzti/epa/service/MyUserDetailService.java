package com.zzti.epa.service;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * @ClassName MyUserDetailService
 * @Description 自定义UserDetailService
 * @Author Administrator
 * @Date 2020-05-12 20:53
 **/
@Service
public class MyUserDetailService implements UserDetailsService {
    @Autowired
    StudentService studentService;
    @Autowired
    TeacherService teacherService;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        System.out.println(",,,,,,,,,,,,,,,,"+username);
        String[] usernameAndUserType = StringUtils.split(
                username, String.valueOf("@"));
        if (usernameAndUserType == null || usernameAndUserType.length != 2) {
            throw new UsernameNotFoundException("Username and userType must be provided");
        }
        //判断用户类型
        System.out.println("==========1:"+usernameAndUserType[0]);
        System.out.println("==========2:"+usernameAndUserType[1]);
        if("student".equals(usernameAndUserType[1])){
            //学生用户
            return studentService.loadUserByUsername(usernameAndUserType[0]);
        }else if("teacher".equals(usernameAndUserType[1])){
            //教师用户
           return teacherService.loadUserByUsername(usernameAndUserType[0]);
        }
        return null;
    }
}
