package com.zzti.epa.controller.analysis;

import com.zzti.epa.model.analysis.PassStudentNumAndOutstandingStudentNum;
import com.zzti.epa.model.analysis.TestPaperForAnalysis;
import com.zzti.epa.service.analysis.Analysis_TestPaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/teachingEffectiveness")
public class Teacher_TeachingEffectiveness {
    @Autowired
    Analysis_TestPaperService analysis_testPaperService;

    //班级优秀率+班级及格率
    @PostMapping("/getPassStudentNumAndOutstandingStudentNum")
    public PassStudentNumAndOutstandingStudentNum getPassStudentNumAndOutstandingStudentNum(@RequestParam int classId, @RequestParam int testpaperId){
        return analysis_testPaperService.getPassStudentNumAndOutstandingStudentNum(classId,testpaperId);
    }
}
