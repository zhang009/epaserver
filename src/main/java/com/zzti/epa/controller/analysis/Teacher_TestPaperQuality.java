package com.zzti.epa.controller.analysis;

import com.zzti.epa.model.analysis.ListOfTestPaper;
import com.zzti.epa.model.analysis.ListOfTestPaperForWeb;
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
    public float[] getTestPaperScoreById(@RequestParam String id){
        //根据id查询出试卷的满分和及格分

        return null;
    }
}
