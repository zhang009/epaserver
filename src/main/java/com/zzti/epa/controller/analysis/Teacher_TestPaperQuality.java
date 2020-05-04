package com.zzti.epa.controller.analysis;

import com.zzti.epa.model.analysis.ListOfTestPaper;
import com.zzti.epa.model.analysis.ListOfTestPaperForWeb;
import com.zzti.epa.model.analysis.TestPaperForAnalysis;
import com.zzti.epa.model.analysis.TotalScoreDistribution;
import com.zzti.epa.service.analysis.Analysis_TestPaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.List;

@RestController
@RequestMapping(("/analysis"))
public class Teacher_TestPaperQuality {

    @Autowired
    Analysis_TestPaperService analysis_testPaperService;
    //得到试卷列表
    @GetMapping("/getListOfTestPaper")
    public List<ListOfTestPaperForWeb> getListOfTestPaper(){
        return analysis_testPaperService.getListOfTestPaper();
    }
    //根据试卷id，得到这张试卷所有人的考试分数
    @PostMapping("/getTestPaperScoreById")
    public TotalScoreDistribution getTestPaperScoreById(@RequestParam int id){
        //根据id查询出试卷
        TestPaperForAnalysis testPaperForAnalysis = analysis_testPaperService.getTestPaperById(id);
        //输入试卷对象，得到试卷的统计分数区间
        TotalScoreDistribution totalScoreDistribution = analysis_testPaperService.calculate_score_section(testPaperForAnalysis);

        //测试：查看分数区间函数是否执行正确
//        String[] section = totalScoreDistribution.getSection();
//        for(int i=0;i<totalScoreDistribution.getLength();i++){
//            System.out.println(section[i]);
//        }

        //根据试卷id，查询试卷成绩表，并获取所有的成绩，统计到对应的分数区间中。
        analysis_testPaperService.TotalScoreDistribution_service(id,totalScoreDistribution);
//        //测试：查看是否真的将人数统计成功了
//        int[] people_num = totalScoreDistribution.getPeople_num();
//        String[] s = totalScoreDistribution.getSection();
//        for(int i=0;i<totalScoreDistribution.getLength();i++){
//            System.out.println(s[i] +":" +people_num[i]);
//        }
        return totalScoreDistribution;
    }
}
