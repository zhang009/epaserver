package com.zzti.epa.controller.analysis;

import com.zzti.epa.model.analysis.ListOfTestPaperForWeb;
import com.zzti.epa.model.analysis.ScoreRateOfPersonalKnowledgePoints;
import com.zzti.epa.model.analysis.ScoringRateOfIndividualChapters;
import com.zzti.epa.service.analysis.Analysis_LearningFeedbaek;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/learningFeedbaek")
public class Student_LearningFeedbaek {
    @Autowired
    Analysis_LearningFeedbaek analysis_learningFeedbaek;
    //通过卷子id获取个人章节得分率
    @GetMapping("/getScoringRateOfIndividualChapters")
    public ScoringRateOfIndividualChapters grtScoringRateOfIndividualChapters(@RequestParam int testpaper_id,@RequestParam String student_id){
        return analysis_learningFeedbaek.grtScoringRateOfIndividualChapters(testpaper_id,student_id);
    }
    //通过卷子id获取个人知识点得分率
    @GetMapping("/getScoreRateOfPersonalKnowledgePoints")
    public ScoreRateOfPersonalKnowledgePoints getScoreRateOfPersonalKnowledgePoints(@RequestParam int testpaper_id,@RequestParam String student_id){
        return analysis_learningFeedbaek.getScoreRateOfPersonalKnowledgePoints(testpaper_id,student_id);
    }
}
