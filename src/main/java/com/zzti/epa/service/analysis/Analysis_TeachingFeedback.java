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
import com.zzti.epa.model.analysis.*;
import com.zzti.epa.service.grade.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

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
    @Autowired
    ChapterMapper chapterMapper;
    @Autowired
    KnowsMapper knowsMapper;
    //根据试卷id，得到这张试卷的知识点得分率
    public ScoringRateOfKnowledgePoints getScoringRateOfKnowledgePoints(int id){
        ScoringRateOfKnowledgePoints scoringRateOfKnowledgePoints = new ScoringRateOfKnowledgePoints();
//        2，通过试卷id，查出testpaper
        TestPaperForAnalysis testpaper = analysis_testPaperService.getTestPaperById(id);
//                通过testpaper得到知识点id字符串,通过分割函数将知识点id字符串分割成一个知识点id数组arr
        String[] knowledgePointsId = testpaper.getKnowIds().split("@");
//        通过知识点id数组arr查询出知识点名称数组，赋值给ScoringRateOfKnowledgePoints
        String[] knowledgePointsName = new String[knowledgePointsId.length];
        for(int i=0;i<knowledgePointsId.length;i++){
            Knows knows = knowsMapper.selectByPrimaryKey(Integer.parseInt(knowledgePointsId[i]));
            knowledgePointsName[i] = knows.getName();
        }
        scoringRateOfKnowledgePoints.setKnowledgePotins(knowledgePointsName);
//        3，通过试卷id，查询试题分数表（quesiotn_score）得到一个List<QuestionScore>
        List<QuestionScore> questionScoreList = questionScoreMapper.getQuestionScoreByTestPaperId2(id);
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
//        4，通过试卷id，查询试卷分数表（student_grade），得到一个List，它表示这个试卷的所有学生的成绩
        List<StudentGrade> studentGrades = studentGradeMapper.getStudentGradeOfListByTestPaperId(id);
//        通过这个学生的成绩的list的id，查询每个学生的小题得到的具体的分数，
//        通过小题的id和试题分数表中的id比较，将学生的真实分数均匀的平分到所有知识点中.
        float[] studentScoreOfSmallQuestion = new float[knowledgePointsId.length];//存储每个知识点的真实成绩
        for(int i=0;i<studentGrades.size();i++){
//            通过试卷成绩表id获取，每个人的所有小题的成绩
            List<QuestionGrade> questionGrades = questionGradeMapper.getQuestionGradeByStudentGradeId(studentGrades.get(i).getId());
//            循环每个人的小题成绩，将其统计到对应的章节分数中
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
        }
//        5，所有学生的每个知识点的真实成绩/每个知识点的满分成绩*学生人数
        float[] scoreRate = new float[knowledgePointsId.length];
        for(int i=0;i<scoreRate.length;i++){
            scoreRate[i] = studentScoreOfSmallQuestion[i]/(fullMarks[i]*studentGrades.size());
        }
        //让题型得分率精确到小数点后两位小数
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        for(int i=0;i<scoreRate.length;i++){
            scoreRate[i] = Float.parseFloat(decimalFormat.format(scoreRate[i]));
        }
        scoringRateOfKnowledgePoints.setScoringRate(scoreRate);
        return scoringRateOfKnowledgePoints;
    }


    //根据试卷id，得到这张试卷的章节得分率
    public ScoringRateOfAllChapters getScoringRateOfAllChapters(int id){
        ScoringRateOfAllChapters scoringRateOfAllChapters = new ScoringRateOfAllChapters();
//        2，根据试卷id查询出，试卷
        TestPaperForAnalysis testpaper = analysis_testPaperService.getTestPaperById(id);
//        通过试卷对象得到章节id（数组）
        String[] chapterIds = testpaper.getChapterIds().split("@");
        String[] chapterNames = new String[chapterIds.length];
//          通过章节id查询出，具体的章节对象，新建变量保存章节名称数组
        for(int i=0;i<chapterIds.length;i++){
            Chapter chapter = chapterMapper.selectByPrimaryKey(Integer.parseInt(chapterIds[i]));
            chapterNames[i] = chapter.getName();
        }
//            将章节名称放到ScoringRateOfAllChapter中
        scoringRateOfAllChapters.setChapterName(chapterNames);
//        3，根据试卷id查询试卷分数表，获得所有的小题（List<QuestionScore>）
        List<QuestionScore> questionScoreList = questionScoreMapper.getQuestionScoreByTestPaperId2(id);
//        通过questionScoreList获取，每个章节的满分
        float[] fullMarks = new float[chapterIds.length];
        for(int i=0;i<questionScoreList.size();i++){
            for(int j=0;j<chapterNames.length;j++){
                if(chapterIds[j].equals(""+questionScoreList.get(i).getChapterId())){
                    fullMarks[j] += questionScoreList.get(i).getQueScore();
                }
            }
        }
//        4，通过试卷id查询出，试卷成绩表（List<StudentGrade>）
        List<StudentGrade> studentGrades = studentGradeMapper.getStudentGradeOfListByTestPaperId(id);
//        这个list的长度就是考试这张卷子的人数
//        5，通过试卷成绩表id，获取所有的小题成绩表
        float[] studentScoreOfSmallQuestion = new float[chapterIds.length];//存储每个题型的真实成绩
//            循环每个试卷成绩表中的记录，每个学生都要统计他的真实成绩
        for(int i=0;i<studentGrades.size();i++){
//            通过试卷成绩表id获取，每个人的所有小题的成绩
            List<QuestionGrade> questionGrades = questionGradeMapper.getQuestionGradeByStudentGradeId(studentGrades.get(i).getId());
//            循环每个人的小题成绩，将其统计到对应的章节分数中
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

        }

//        通过小题成绩表中的questionScoreId和试卷分数表中的id，求得某章节的所有真实成绩
        float[] scoreRate = new float[chapterIds.length];
        for(int i=0;i<scoreRate.length;i++){
            scoreRate[i] = studentScoreOfSmallQuestion[i]/(fullMarks[i]*studentGrades.size());
        }
        //让题型得分率精确到小数点后两位小数
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        for(int i=0;i<scoreRate.length;i++){
            scoreRate[i] = Float.parseFloat(decimalFormat.format(scoreRate[i]));
        }
        scoringRateOfAllChapters.setLength(scoreRate.length);
        scoringRateOfAllChapters.setScoringRate(scoreRate);
//        6，真实成绩/(满分成绩*考生人数)
        return scoringRateOfAllChapters;
    }





    //根据试卷id，得到这张试卷的题型得分率分析
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
