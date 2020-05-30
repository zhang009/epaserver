package com.zzti.epa.service.analysis;

import com.zzti.epa.mapper.baseinfo.ChapterMapper;
import com.zzti.epa.mapper.baseinfo.KnowsMapper;
import com.zzti.epa.mapper.grade.StudentGradeMapper;
import com.zzti.epa.mapper.paper.QuestionScoreMapper;
import com.zzti.epa.mapper.paper.TestPaperMapper;
import com.zzti.epa.model.Chapter;
import com.zzti.epa.model.Knows;
import com.zzti.epa.model.QuestionScore;
import com.zzti.epa.model.analysis.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Service
public class Analysis_TestPaperService {

    @Autowired
    TestPaperMapper testPaperMapper;
    @Autowired
    StudentGradeMapper studentGradeMapper;
    @Autowired
    ChapterMapper chapterMapper;
    @Autowired
    Analysis_TestPaperService analysis_testPaperService;
    @Autowired
    QuestionScoreMapper questionScoreMapper;
    @Autowired
    KnowsMapper knowsMapper;

    //根据试卷id，计算出试卷知识点分值分布后，将其返回
    public ScoreDistributionOfKnowledgePointsInTestPaper getScoreDistributionOfKnowledgePointsInTestPaper(int id){
        ScoreDistributionOfKnowledgePointsInTestPaper scoreDistributionOfKnowledgePointsInTestPaper = new ScoreDistributionOfKnowledgePointsInTestPaper();
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
        scoreDistributionOfKnowledgePointsInTestPaper.setNames(knowledgePointsName);
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
        //4，计算知识点得分率
        float[] scoreDistribution = new float[knowledgePointsId.length];
        for(int i=0;i<scoreDistribution.length;i++){
            scoreDistribution[i] = fullMarks[i]/testpaper.getTotalScore();
        }
        //让知识点分值占比精确到小数点后两位小数
        DecimalFormat decimalFormat = new DecimalFormat("#.0000");
        for(int i=0;i<scoreDistribution.length;i++){
            scoreDistribution[i] = Float.parseFloat(decimalFormat.format(scoreDistribution[i]));
        }
        scoreDistributionOfKnowledgePointsInTestPaper.setScoreDistribution(scoreDistribution);
        return scoreDistributionOfKnowledgePointsInTestPaper;
    }
    //根据试卷id，计算出试卷章节分值分布后，将其返回
    public ScoreDistributionOfTestPaperChapters getScoreDistributionOfTestPaperChapters(int id){
        ScoreDistributionOfTestPaperChapters scoreDistributionOfTestPaperChapters = new ScoreDistributionOfTestPaperChapters();
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
        scoreDistributionOfTestPaperChapters.setNames(chapterNames);
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
        //4，计算出试卷的分值占比
        float[] scoreDistribution = new float[chapterIds.length];
        for(int i=0;i<scoreDistribution.length;i++){
            scoreDistribution[i] = fullMarks[i]/testpaper.getTotalScore();
        }
        //让章节分值占比精确到小数点后两位小数
        DecimalFormat decimalFormat = new DecimalFormat("#.0000");
        for(int i=0;i<scoreDistribution.length;i++){
            scoreDistribution[i] = Float.parseFloat(decimalFormat.format(scoreDistribution[i]));
        }
        scoreDistributionOfTestPaperChapters.setScoreDistribution(scoreDistribution);
        return scoreDistributionOfTestPaperChapters;
    }

    //根据试卷名称进行模糊查询，返回试卷列表
    public List<ListOfTestPaperForWeb> getListOfTestPaperByName(String name){
        List<ListOfTestPaper> list = testPaperMapper.select_ListOfTestPaperByName("%"+name+"%");
        List<ListOfTestPaperForWeb> listOfTestPaperForWebs= new ArrayList<ListOfTestPaperForWeb>();
        for(int i=0;i<list.size();i++){
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            String createTime = formatter.format(list.get(i).getCreateTime());
            ListOfTestPaperForWeb listOfTestPaperForWeb=new ListOfTestPaperForWeb();
            //将数据放到List<ListOfTestPaperForWeb>中，返回给前端
            listOfTestPaperForWeb.setId(list.get(i).getId());
            listOfTestPaperForWeb.setName(list.get(i).getName());
            listOfTestPaperForWeb.setTeacher(list.get(i).getTeacher());
            listOfTestPaperForWeb.setCreateTime(createTime);
            listOfTestPaperForWebs.add(listOfTestPaperForWeb);
        }
        return  listOfTestPaperForWebs;
    }

    //根据班级id和试卷id获取，及格人数，不及格人数，优秀人数，其他人数，总人数
    public PassStudentNumAndOutstandingStudentNum getPassStudentNumAndOutstandingStudentNum(int classId,int testpaperId){
        //根据卷子id得到及格分数
        TestPaperForAnalysis testPaper = getTestPaperById(testpaperId);
        float passScore = testPaper.getPassScore();
        //根据班级id和试卷id，查询出这个班级的所有试卷分数（ScoreOfListByClassId）
        List<StudentGrade> studentGrades = scoreOfListByClassId(classId,testpaperId);
        //根据及格分数和studentGrades统计出，总人数，不及格人数，及格人数，优秀人数和其他人数,封装后返回
        PassStudentNumAndOutstandingStudentNum passStudentNumAndOutstandingStudentNum = new PassStudentNumAndOutstandingStudentNum();
        passStudentNumAndOutstandingStudentNum.setTotalStudentNum(studentGrades.size());
        int passStudentNum=0;   //及格人数
        int outstandingStudentNum=0;//优秀人数
        float OutstandingScore = passScore*0.85f;//优秀标准，大于这个分数判断为优秀
        for(int i=0;i<studentGrades.size();i++){
            //及格人数
            if(studentGrades.get(i).getTotalScore() > passScore){
                passStudentNum++;
            }
            //优秀人数
            if(studentGrades.get(i).getTotalScore() > OutstandingScore){
                outstandingStudentNum++;
            }
        }
        passStudentNumAndOutstandingStudentNum.setPassStudentNum(passStudentNum);
        passStudentNumAndOutstandingStudentNum.setOutstandingStudentNum(outstandingStudentNum);
        passStudentNumAndOutstandingStudentNum.setFailStudentNum(studentGrades.size()-passStudentNum);
        passStudentNumAndOutstandingStudentNum.setOtherStudentNum(studentGrades.size()-outstandingStudentNum);
        return passStudentNumAndOutstandingStudentNum;
    }

    //根据班级id和试卷id，查询出这个班级的所有试卷分数
    public List<StudentGrade> scoreOfListByClassId(int classId,int testpaperId){
        return studentGradeMapper.getStudentGradeOfListByClassIdAndTestpaperId(classId,testpaperId);
    }

    //得到全部试卷的试卷列表
    public List<ListOfTestPaperForWeb> getAllListOfTestPaper(){
        List<ListOfTestPaper> list = testPaperMapper.select_ListOfTestPaper();
        List<ListOfTestPaperForWeb> listOfTestPaperForWebs= new ArrayList<ListOfTestPaperForWeb>();
        for(int i=0;i<list.size();i++){
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            String createTime = formatter.format(list.get(i).getCreateTime());
            ListOfTestPaperForWeb listOfTestPaperForWeb=new ListOfTestPaperForWeb();
            //将数据放到List<ListOfTestPaperForWeb>中，返回给前端
            listOfTestPaperForWeb.setId(list.get(i).getId());
            listOfTestPaperForWeb.setName(list.get(i).getName());
            listOfTestPaperForWeb.setTeacher(list.get(i).getTeacher());
            listOfTestPaperForWeb.setCreateTime(createTime);
            listOfTestPaperForWebs.add(listOfTestPaperForWeb);
        }
        return  listOfTestPaperForWebs;
    }

    //得到试过的试卷的试卷列表
    public List<ListOfTestPaperForWeb> getListOfTestPaper(){
        List<ListOfTestPaper> list = testPaperMapper.select_ListOfTestPaper();
        List<ListOfTestPaperForWeb> listOfTestPaperForWebs= new ArrayList<ListOfTestPaperForWeb>();
        for(int i=0;i<list.size();i++){
            //如果试卷没有被考试过，试卷成绩表中就不会有数据
            List<StudentGrade> studentGrades = null;
            studentGrades = studentGradeMapper.getStudentGradeOfListByTestPaperId(list.get(i).getId());
            if(studentGrades.size() == 0){
                continue;
            }
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            String createTime = formatter.format(list.get(i).getCreateTime());
            ListOfTestPaperForWeb listOfTestPaperForWeb=new ListOfTestPaperForWeb();
            //将数据放到List<ListOfTestPaperForWeb>中，返回给前端
            listOfTestPaperForWeb.setId(list.get(i).getId());
            listOfTestPaperForWeb.setName(list.get(i).getName());
            listOfTestPaperForWeb.setTeacher(list.get(i).getTeacher());
            listOfTestPaperForWeb.setCreateTime(createTime);
            listOfTestPaperForWebs.add(listOfTestPaperForWeb);
        }
        return  listOfTestPaperForWebs;
    }
    //根据试卷id查询试卷
    public TestPaperForAnalysis getTestPaperById(int id){
        return testPaperMapper.getTestPaperByIdForAnalysis(id);
    }
    //根据试卷计算该试卷应该统计的分数区间，赋值给TotalScoreDistribution
    public TotalScoreDistribution calculate_score_section(TestPaperForAnalysis testPaperForAnalysis){
        //得到满分和及格分计算柱状图的分数区间
        float full_score = testPaperForAnalysis.getTotalScore();
        float pass_score = testPaperForAnalysis.getPassScore();
        String[] section = new String[10];
        section[0] = pass_score+"以上";
        int n=(int)pass_score,m=(int)pass_score,i=1;
        while (n<full_score){
            n+=9;
            if(n+1 != full_score){
                section[i] = m+"-"+n;
                m = n = n+1;
            }else {
                n = n+1;
                section[i] = m+"-"+n;
            }
            i++;
        }
        int arr_length = i;
        TotalScoreDistribution totalScoreDistribution = new TotalScoreDistribution();
        totalScoreDistribution.setLength(arr_length);
        totalScoreDistribution.setSection(section);
        return totalScoreDistribution;
    }
    //根据试卷id，查询试卷成绩表(得到一个List)，并获取所有的成绩，统计到对应的分数区间中。
    public void TotalScoreDistribution_service(int testPaperId,TotalScoreDistribution totalScoreDistribution){
        //根据试卷id，以列表形式得到成绩表中的数据
        List<StudentGrade> studentGrades = studentGradeMapper.getStudentGradeOfListByTestPaperId(testPaperId);


        String[] section = totalScoreDistribution.getSection();
        int[] paper_num = new int[totalScoreDistribution.getLength()];
        //获取所有成绩，统计到对应的分数区间中
        for(int i=0;i<studentGrades.size();i++){
            for(int j=1;j<totalScoreDistribution.getLength();j++){
                float passscore = Float.parseFloat(section[0].split("以上")[0]);
                float min = Float.parseFloat(section[j].split("-")[0]);
                float max = Float.parseFloat(section[j].split("-")[1]);
                //如果这个学生的分数在这个区间之内，这个区间的人数就+1
                if(studentGrades.get(i).getTotalScore() - min >=0 && studentGrades.get(i).getTotalScore()-max <= 0 ){
                    paper_num[j]+=1;
                }else if(studentGrades.get(i).getTotalScore()>passscore){
                    paper_num[0]+=1;
                }
            }
        }
        totalScoreDistribution.setPeople_num(paper_num);
    }

}
