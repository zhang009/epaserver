package com.zzti.epa.controller.grade;

import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.model.TestPaper;
import com.zzti.epa.service.grade.GradeService;
import com.zzti.epa.service.testpaper.TestPaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ClassName GradeController
 * @Description 成绩管理接口
 * @Author Administrator
 * @Date 2020-05-01 6:50
 **/
@RestController
@RequestMapping("/gra")
public class GradeController {
    @Autowired
    GradeService gradeService;
    @Autowired
    TestPaperService testPaperService;

    @GetMapping("/")
    public RespPageBean getAllTestPaper(@RequestParam("page")Integer page,
                                        @RequestParam("size") Integer size,
                                        TestPaper testPaper){
        return testPaperService.getAllTestPaperByPage(page,size,testPaper);
    }




}
