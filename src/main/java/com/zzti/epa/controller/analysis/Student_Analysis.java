package com.zzti.epa.controller.analysis;

import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ClassName Student_Analysis
 * @Description TODO
 * @Author Administrator
 * @Date 2020-05-20 19:49
 **/
@RestController
@RequestMapping("/stu/analysis")
public class Student_Analysis {

    @Autowired
    StudentService studentService;

    //根据学生的id查询出该学生的试卷
    @GetMapping("/getAllMyTestPaper")
    public RespPageBean getAllMyTestPaper(@RequestParam("page")Integer page,
                                          @RequestParam("size") Integer size,
                                          @RequestParam("studentNum")String studentNum){
        return studentService.getAllMyTestPaper(page,size,studentNum);
    }

}
