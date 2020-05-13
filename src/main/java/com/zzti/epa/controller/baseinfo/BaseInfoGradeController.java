package com.zzti.epa.controller.baseinfo;

import com.zzti.epa.model.Grade;
import com.zzti.epa.service.baseinfo.BaseInfoGradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @ClassName GradeController
 * @Description 年级
 * @Author Administrator
 * @Date 2020-05-13 22:10
 **/
@RestController
@RequestMapping("/baseinfo/grade")
public class BaseInfoGradeController {
    @Autowired
    BaseInfoGradeService baseInfoGradeService;
    //获取所有年级
    @GetMapping("/")
    public List<Grade> getAllGrade(){

        return baseInfoGradeService.getAllGrade();
    }

}
