package com.zzti.epa.controller.teacher;

import com.zzti.epa.model.Teacher;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ClassName TeacherInfoController
 * @Description TODO
 * @Author Administrator
 * @Date 2020-05-12 10:50
 **/
@RestController
public class TeacherInfoController {
    @GetMapping("/teacher/info")
    public Teacher getCurrentTeacher(Authentication authentication){
        return (Teacher) authentication.getPrincipal();
    }
}
