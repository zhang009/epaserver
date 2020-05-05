package com.zzti.epa.service.analysis;

import com.zzti.epa.mapper.grade.QuestionGradeMapper;
import com.zzti.epa.mapper.grade.StudentGradeMapper;
import com.zzti.epa.mapper.paper.QueTypeMapper;
import com.zzti.epa.mapper.paper.QuestionScoreMapper;
import com.zzti.epa.model.QuestionGrade;
import com.zzti.epa.model.QuestionScore;
import com.zzti.epa.model.analysis.ScoringRateOfQuestionType;
import com.zzti.epa.model.analysis.StudentGrade;
import com.zzti.epa.model.analysis.TestPaperForAnalysis;
import com.zzti.epa.service.grade.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

@Service
public class Analysis_TeachingFeedback {
    @Autowired
    QuestionScoreMapper questionScoreMapper;
    @Autowired
    Analysis_TestPaperService analysis_testPaperService;
    @Autowired
    QuestionGradeMapper questionGradeMapper;
    @Autowired
    StudentGradeMapper studentGradeMapper;
    @Autowired
    QueTypeMapper queTypeMapper;
    public ScoringRateOfQuestionType getScoringRateOfQuestionType(int id){
        ScoringRateOfQuestionType scoringRateOfQuestionType = new ScoringRateOfQuestionType();
        //根据试卷id获得题目中包含的所有题型
        TestPaperForAnalysis testpaper = analysis_testPaperService.getTestPaperById(id);
        String[] questionType = testpaper.getQueTypes().split("@");
        scoringRateOfQuestionType.setQuestionType(questionType);
        scoringRateOfQuestionType.setLength(questionType.length);
        //卷子id获取所有小题（查询试题分数表）
        List<QuestionScore> questionScoreList = questionScoreMapper.getQuestionScoreByTestPaperId2(id);
        //根据中文题型，得到所有题型的满分
            //一张试卷上每种题型的满分（比如所有单选题分数相加就是单选题的满分）
        float[] fullMarks = new float[questionType.length];
        for(int i=0;i<questionScoreList.size();i++){
            String queType = questionScoreList.get(i).getQueType();
            for(int j=0;j<questionType.length;j++){
                if(queType.equals(questionType[j])){
                    //将每种类型的题目的分数都加到这里来
                    fullMarks[j] += questionScoreList.get(i).getQueScore();
                }
            }
        }
            //将每种题型的满分放到model当中
        scoringRateOfQuestionType.setFullMarks(fullMarks);
        //根据试卷id，获取试卷成绩表id(List)[考过该试卷的每个考生都会有一条试卷成绩表记录]
        List<StudentGrade> studentGrades = studentGradeMapper.getStudentGradeOfListByTestPaperId(id);
        //根据试卷成绩表id，获取所有的小题成绩表(循环查询，得到多个List)
        float[] studentScoreOfSmallQuestion = new float[questionType.length];//存储每个题型的真实成绩
        for(int i=0;i<studentGrades.size();i++){
            List<QuestionGrade> questionGrades = questionGradeMapper.getQuestionGradeByStudentGradeId(studentGrades.get(i).getId());
            //根据中文题型，将查出来的小题成绩表各个类型的学生真实成绩算出来（question_ grade表）
            for(int j=0;j<questionGrades.size();j++){
                for(int k=0;k<questionType.length;k++){
                    if(questionType[k].equals(questionGrades.get(j).getQueType())){
                        studentScoreOfSmallQuestion[k] += questionGrades.get(j).getQueGrade();
                    }
                }
            }

        }
        //某题型所有学生的真实成绩之和/学生人数*某题型的满分
        float[] scoreRate = new float[questionType.length];  //存储小题得分率
        for(int i=0;i<questionType.length;i++){
            scoreRate[i] = studentScoreOfSmallQuestion[i]/(fullMarks[i]*studentGrades.size());
        }
        //让题型得分率精确到小数点后两位小数
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        for(int i=0;i<scoreRate.length;i++){
            scoreRate[i] = Float.parseFloat(decimalFormat.format(scoreRate[i]));
        }
        //放到scoringRateOfQuestionType中，返回给前台
        scoringRateOfQuestionType.setScoringRate(scoreRate);
        return scoringRateOfQuestionType;
    }
}
