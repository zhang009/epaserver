package com.zzti.epa.controller.baseinfo;

import com.zzti.epa.model.Semester;
import com.zzti.epa.service.baseinfo.SemesterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @ClassName SemesterController
 * @Description 学期接口
 * @Author Administrator
 * @Date 2020-04-21 10:06
 **/
@RestController
@RequestMapping("/baseinfo/semester")
public class SemesterController {
    @Autowired
    SemesterService semesterService;
    @GetMapping("/")
    public List<Semester> getAllSemesters(){


        return semesterService.getAllSemesters();
    }

}
