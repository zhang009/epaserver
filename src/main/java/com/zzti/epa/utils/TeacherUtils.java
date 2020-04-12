package com.zzti.epa.utils;

import com.zzti.epa.model.Teacher;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 * @ClassName TeacherUtils
 * @Description TODO
 * @Author Administrator
 * @Date 2020-04-12 14:54
 **/
public class TeacherUtils {
    public static Teacher getTeacher(){
        return (Teacher) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    }
}
