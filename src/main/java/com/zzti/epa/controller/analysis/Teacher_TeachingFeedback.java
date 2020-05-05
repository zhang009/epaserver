package com.zzti.epa.controller.analysis;

import com.zzti.epa.model.analysis.ScoringRateOfQuestionType;
import com.zzti.epa.service.analysis.Analysis_TeachingFeedback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(("/teachingFeedback"))
public class Teacher_TeachingFeedback {
    @Autowired
    Analysis_TeachingFeedback analysis_teachingFeedback;
    @PostMapping("/getScoringRateOfQuestionType")
    public ScoringRateOfQuestionType getScoringRateOfQuestionType(@RequestParam int id){
        //根据试卷id，返回题型和题型得分率，以及数组长度
        return analysis_teachingFeedback.getScoringRateOfQuestionType(id);
    }

}
