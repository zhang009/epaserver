package com.zzti.epa.service.analysis;

import com.zzti.epa.mapper.baseinfo.ChapterMapper;
import com.zzti.epa.mapper.baseinfo.KnowsMapper;
import com.zzti.epa.mapper.grade.QuestionGradeMapper;
import com.zzti.epa.mapper.grade.StudentGradeMapper;
import com.zzti.epa.mapper.paper.QueTypeMapper;
import com.zzti.epa.mapper.paper.QuestionScoreMapper;
import com.zzti.epa.model.Chapter;
import com.zzti.epa.model.Knows;
import com.zzti.epa.model.QuestionGrade;
import com.zzti.epa.model.QuestionScore;
import com.zzti.epa.model.analysis.ScoreRateOfPersonalKnowledgePoints;
import com.zzti.epa.model.analysis.ScoringRateOfIndividualChapters;
import com.zzti.epa.model.analysis.StudentGrade;
import com.zzti.epa.model.analysis.TestPaperForAnalysis;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.DecimalFormat;
import java.util.List;
@Service
public class Analysis_LearningFeedbaek {
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
    @Autowired
    ChapterMapper chapterMapper;
    @Autowired
    KnowsMapper knowsMapper;
    //通过卷子id获取个人章节得分率
    public ScoringRateOfIndividualChapters grtScoringRateOfIndividualChapters(int testpaper_id,int student_id){
        ScoringRateOfIndividualChapters scoringRateOfIndividualChapters = new ScoringRateOfIndividualChapters();
        //        2，根据卷子id获取卷子
        TestPaperForAnalysis testpaper = analysis_testPaperService.getTestPaperById(testpaper_id);
//        通过试卷对象得到章节id（数组）
        String[] chapterIds = testpaper.getChapterIds().split("@");
        String[] chapterNames = new String[chapterIds.length];
//          通过章节id查询出，具体的章节对象，新建变量保存章节名称数组
        for(int i=0;i<chapterIds.length;i++){
            Chapter chapter = chapterMapper.selectByPrimaryKey(Integer.parseInt(chapterIds[i]));
            chapterNames[i] = chapter.getName();
        }
//            3,将章节名称放到ScoringRateOfAllChapter中
        scoringRateOfIndividualChapters.setName(chapterNames);


//        4，根据学生id和卷子id，获取试卷成绩表
        List<StudentGrade> studentGrades = studentGradeMapper.getStudentGradeOfListByTestPaperId(testpaper_id);
        StudentGrade studentGrade = new StudentGrade();
        for(int i=0;i<studentGrades.size();i++){
            if(studentGrades.get(i).getStuId().equals(""+student_id)){
                studentGrade = studentGrades.get(i);
            }
        }
//        5，根据试卷成绩表id获取所有小题满分成绩
        List<QuestionScore> questionScoreList = questionScoreMapper.getQuestionScoreByTestPaperId2(testpaper_id);
//        通过questionScoreList获取，每个章节的满分
        float[] fullMarks = new float[chapterIds.length];
        for(int i=0;i<questionScoreList.size();i++){
            for(int j=0;j<chapterNames.length;j++){
                if(chapterIds[j].equals(""+questionScoreList.get(i).getChapterId())){
                    fullMarks[j] += questionScoreList.get(i).getQueScore();
                }
            }
        }

//        6，根据试卷成绩表id和学生id获取所有真实小题成绩，并计算章节得分率
        float[] studentScoreOfSmallQuestion = new float[chapterIds.length];//存储每个题型的真实成绩
//            循环每个试卷成绩表中的记录，每个学生都要统计他的真实成绩
//            通过试卷成绩表id获取，每个人的所有小题的成绩
            List<QuestionGrade> questionGrades = questionGradeMapper.getQuestionGradeByStudentGradeId(studentGrade.getId());
//            循环小题成绩，将其统计到对应的章节分数中
            for(int j=0;j<questionGrades.size();j++){
                for(int m=0;m<questionScoreList.size();m++){
                    //Integer类型不能直接比较，所以将其赋值给int后，再比较
                    int qg = questionGrades.get(j).getQuestionScoreId();
                    int qs = questionScoreList.get(m).getId();
                    if(qg == qs){
                        for(int k=0;k<chapterIds.length;k++){
                            if(chapterIds[k].equals(""+questionScoreList.get(m).getChapterId())){
                                studentScoreOfSmallQuestion[k] += questionGrades.get(j).getQueGrade();
                            }
                        }
                    }
                }
//
            }
//        计算章节得分率
        float[] scoreRate = new float[chapterIds.length];
        for(int i=0;i<scoreRate.length;i++){
            scoreRate[i] = studentScoreOfSmallQuestion[i]/fullMarks[i];
        }
        //让章节得分率精确到小数点后两位小数
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        for(int i=0;i<scoreRate.length;i++){
            scoreRate[i] = Float.parseFloat(decimalFormat.format(scoreRate[i]));
        }
        scoringRateOfIndividualChapters.setRate(scoreRate);
        return scoringRateOfIndividualChapters;
    }
    //通过卷子id获取个人知识点得分率
    public ScoreRateOfPersonalKnowledgePoints getScoreRateOfPersonalKnowledgePoints(int testpaper_id,int student_id){
        ScoreRateOfPersonalKnowledgePoints scoreRateOfPersonalKnowledgePoints = new ScoreRateOfPersonalKnowledgePoints();
//        2，根据卷子id获取卷子
        TestPaperForAnalysis testpaper = analysis_testPaperService.getTestPaperById(testpaper_id);
//        3，根据卷子获取所有知识点
        //                通过testpaper得到知识点id字符串,通过分割函数将知识点id字符串分割成一个知识点id数组arr
        String[] knowledgePointsId = testpaper.getKnowIds().split("@");
//        通过知识点id数组arr查询出知识点名称数组，赋值给ScoringRateOfKnowledgePoints
        String[] knowledgePointsName = new String[knowledgePointsId.length];
        for(int i=0;i<knowledgePointsId.length;i++){
            Knows knows = knowsMapper.selectByPrimaryKey(Integer.parseInt(knowledgePointsId[i]));
            knowledgePointsName[i] = knows.getName();
        }
        //将知识点名称放入
        scoreRateOfPersonalKnowledgePoints.setName(knowledgePointsName);
//        4，根据学生id和卷子id，获取试卷成绩表
        List<StudentGrade> studentGrades = studentGradeMapper.getStudentGradeOfListByTestPaperId(testpaper_id);
        StudentGrade studentGrade = new StudentGrade();
        for(int i=0;i<studentGrades.size();i++){
            if(studentGrades.get(i).getStuId().equals(""+student_id)){
                studentGrade = studentGrades.get(i);
            }
        }
//        5，根据试卷id获取所有小题的满分
        List<QuestionScore> questionScoreList = questionScoreMapper.getQuestionScoreByTestPaperId2(testpaper_id);
//        循环每个小题，统计每个知识点的满分,若是一道题设计多个知识点，则这道题的满分分数被这几个知识点平分
        float[] fullMarks = new float[knowledgePointsId.length];
        for(int i=0;i<questionScoreList.size();i++){
            for(int j=0;j<knowledgePointsId.length;j++){
                String[] knowsledgePointsId2 = questionScoreList.get(i).getKnowIds().split("@");
                for(int k=0;k<knowsledgePointsId2.length;k++){
                    //如果知识点id相等，则
                    if(knowledgePointsId[j].equals(knowsledgePointsId2[k])){
                        fullMarks[j] += questionScoreList.get(i).getQueScore()/knowsledgePointsId2.length;
                    }
                }
            }
        }
//        6，根据学生id和试卷成绩表id获取所有小题的真实成绩
        float[] studentScoreOfSmallQuestion = new float[knowledgePointsId.length];//存储每个知识点的真实成绩
//            通过试卷成绩表id获取，每个人的所有小题的成绩
            List<QuestionGrade> questionGrades = questionGradeMapper.getQuestionGradeByStudentGradeId(studentGrade.getId());
//            循环小题成绩，将其统计到对应的章节分数中
            for(int j=0;j<questionGrades.size();j++){
                for(int m=0;m<questionScoreList.size();m++){
                    //Integer类型不能直接比较，所以将其赋值给int后，再比较
                    int qg = questionGrades.get(j).getQuestionScoreId();
                    int qs = questionScoreList.get(m).getId();
                    if(qg == qs){
                        String[] knowsledgePointsId3 = questionScoreList.get(m).getKnowIds().split("@");
                        for(int k=0;k<knowsledgePointsId3.length;k++){
                            for(int n=0;n<knowledgePointsId.length;n++){
                                if(knowledgePointsId[n].equals(knowsledgePointsId3[k])){
                                    studentScoreOfSmallQuestion[n] += questionGrades.get(j).getQueGrade()/knowsledgePointsId3.length;
                                }
                            }

                        }
                    }
                }
//
            }

//        7 ，计算知识点得分率
        float[] scoreRate = new float[knowledgePointsId.length];
        for(int i=0;i<scoreRate.length;i++){
            scoreRate[i] = studentScoreOfSmallQuestion[i]/fullMarks[i];
        }
        //让知识点得分率精确到小数点后两位小数
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        for(int i=0;i<scoreRate.length;i++){
            scoreRate[i] = Float.parseFloat(decimalFormat.format(scoreRate[i]));
        }
        scoreRateOfPersonalKnowledgePoints.setRate(scoreRate);
        return scoreRateOfPersonalKnowledgePoints;
    }
}
