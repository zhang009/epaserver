package com.zzti.epa.controller.testpaper;

import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.model.Teacher;
import com.zzti.epa.model.TestPaper;
import com.zzti.epa.service.TeacherService;
import com.zzti.epa.service.testpaper.TestPaperTemplateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @ClassName TestPaperTemplateController
 * @Description 试卷模板管理接口
 * @Author zhangyifang
 * @Date 2020-04-25 21:39
 **/
@RestController
@RequestMapping("/pap/template")
public class TestPaperTemplateController {

    @Autowired
    TestPaperTemplateService testPaperTemplateService;
    @Autowired
    TeacherService teacherService;

    @GetMapping("/")
    public RespPageBean getTestPaperByPage(@RequestParam("page")Integer page,
                                           @RequestParam("size") Integer size,
                                           TestPaper testPaper){
        return testPaperTemplateService.getTestPaperByPage(page,size,testPaper);
    }
    @GetMapping("/getTeacher")
    public List<Teacher> getTemplatePostTeacher(){
        return teacherService.getTemplatePostTeacher();
    }
}
