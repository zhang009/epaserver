package com.zzti.epa.controller.analysis;

import com.zzti.epa.model.analysis.ScoringRateOfAllChapters;
import com.zzti.epa.model.analysis.ScoringRateOfKnowledgePoints;
import com.zzti.epa.model.analysis.ScoringRateOfQuestionType;
import com.zzti.epa.service.analysis.Analysis_TeachingFeedback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/teachingFeedback")
public class Teacher_TeachingFeedback {
    @Autowired
    Analysis_TeachingFeedback analysis_teachingFeedback;
    //根据试卷id，获得题型得分率
    @PostMapping("/getScoringRateOfQuestionType")
    public ScoringRateOfQuestionType getScoringRateOfQuestionType(@RequestParam int id){
        //根据试卷id，返回题型和题型得分率，以及数组长度
        return analysis_teachingFeedback.getScoringRateOfQuestionType(id);
    }
    //根据试卷id，获取章节得分率
    @PostMapping("/getScoringRateOfAllChapters")
    public ScoringRateOfAllChapters getScoringRateOfAllChapters(@RequestParam int id){
        //根据试卷id，返回章节得分率
        return analysis_teachingFeedback.getScoringRateOfAllChapters(id);
    }

    //根据试卷id，获取知识点得分率
    @PostMapping("/getScoringRateOfKnowledgePoints")
    public ScoringRateOfKnowledgePoints getScoringRateOfKnowledgePoints(@RequestParam int id){
        //根据试卷id，返回知识点得分率
        return analysis_teachingFeedback.getScoringRateOfKnowledgePoints(id);
    }

}
