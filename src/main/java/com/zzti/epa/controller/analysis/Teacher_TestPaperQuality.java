package com.zzti.epa.controller.analysis;

import com.zzti.epa.model.analysis.ListOfTestPaper;
import com.zzti.epa.service.analysis.Analysis_TestPaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(("/analysis"))
public class Teacher_TestPaperQuality {

    @Autowired
    Analysis_TestPaperService analysis_testPaperService;

    //得到试卷列表
    @GetMapping("/getListOfTestPaper")
    public List<ListOfTestPaper> getListOfTestPaper(){
        System.out.println("没有执行吗？");
        System.out.println(analysis_testPaperService.getListOfTestPaper());
        return analysis_testPaperService.getListOfTestPaper();
    }
}
