package com.zzti.epa.service.testpaper;

import com.zzti.epa.mapper.paper.QuestionScoreMapper;
import com.zzti.epa.mapper.paper.TestPaperMapper;
import com.zzti.epa.mapper.question.*;
import com.zzti.epa.model.*;
import com.zzti.epa.model.pojo.*;
import com.zzti.epa.utils.TeacherUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @ClassName TestPaperService
 * @Description 试卷处理业务层
 * @Author Administrator
 * @Date 2020-04-22 11:34
 **/
@Service
public class TestPaperService {

    @Autowired
    TestPaperMapper testPaperMapper;
    @Autowired
    QuestionScoreMapper questionScoreMapper;

    @Autowired
    SCQuestionMapper scQuestionMapper;
    @Autowired
    MCQuestionMapper mcQuestionMapper;
    @Autowired
    TFQuestionMapper tfQuestionMapper;
    @Autowired
    FBQuestionMapper fbQuestionMapper;
    @Autowired
    QAQuestionMapper qaQuestionMapper;


    String []charNum= {"A.","B.","C.","D.","E.","F.","G.","H.","I.","J."};
    //将前端传来的临时试卷对象数据处理，添加一些参数
    public TempTestPaper handleTempTestPaper(TempTestPaper tempTestPaper) {
        //设置单选题的总分
        if(tempTestPaper.getSclist()!=null&&tempTestPaper.getScScore()!=null){
            ScPapTitle scPapTitle=new ScPapTitle();
            scPapTitle.setScTotalScore(tempTestPaper.getSclist().size()*tempTestPaper.getScScore());
            scPapTitle.setScLength(tempTestPaper.getSclist().size());
            scPapTitle.setScScore(tempTestPaper.getScScore());
            tempTestPaper.setScTitle(scPapTitle);

            //设置序号和答案
            String answer="";
            for (int i = 0; i < tempTestPaper.getSclist().size(); i++) {
                SCQuestion scQuestion=tempTestPaper.getSclist().get(i);
                scQuestion.setStem((i+1)+"."+scQuestion.getStem());
                answer+=(i+1)+"."+scQuestion.getAnswer()+"  ";
            }
            scPapTitle.setScAnswer(answer);


        }
         //设置多选题的总分
        if(tempTestPaper.getMclist()!=null&&tempTestPaper.getMcScore()!=null){
            McPapTitle mcPapTitle=new McPapTitle();
            mcPapTitle.setMcLength(tempTestPaper.getMclist().size());
            mcPapTitle.setMcTotalScore(tempTestPaper.getMclist().size()*tempTestPaper.getMcScore());
            mcPapTitle.setMcScore(tempTestPaper.getMcScore());
            tempTestPaper.setMcPapTitle(mcPapTitle);

            //设置序号和答案
            String answer="";
            for (int i = 0; i < tempTestPaper.getMclist().size(); i++) {
                MCQuestion mcQuestion=tempTestPaper.getMclist().get(i);
                mcQuestion.setStem((i+1)+"."+mcQuestion.getStem());
                answer+=(i+1)+"."+mcQuestion.getAnswer()+"  ";
            }
            mcPapTitle.setMcAnswer(answer);
        }
         //设置判断的总分
        if(tempTestPaper.getTflist()!=null&&tempTestPaper.getTfScore()!=null){
            TfPapTitle tfPapTitle=new TfPapTitle();
            tfPapTitle.setTfLength(tempTestPaper.getTflist().size());
            tfPapTitle.setTfTotalScore(tempTestPaper.getTflist().size()*tempTestPaper.getTfScore());
            tempTestPaper.setTfPapTitle(tfPapTitle);



            //设置序号和答案
            String answer="";
            for (int i = 0; i < tempTestPaper.getTflist().size(); i++) {
                TFQuestion tfQuestion=tempTestPaper.getTflist().get(i);
                tfQuestion.setStem((i+1)+"."+tfQuestion.getStem());
                answer+=(i+1)+"."+tfQuestion.getAnswer()+"  ";
            }
            tfPapTitle.setTfAnswer(answer);
        }
         //设置填空题的总分
        if(tempTestPaper.getFblist()!=null&&(tempTestPaper.getFbScore().length>0)){
            Integer total=0;
            Integer [] fbScores=tempTestPaper.getFbScore();
            for (int i = 0; i < fbScores.length; i++) {
                total+=fbScores[i];
            }
            FbPapTitle fbPapTitle=new FbPapTitle();
            fbPapTitle.setFbLength(tempTestPaper.getFblist().size());
            fbPapTitle.setFbTotalScore(total);

            tempTestPaper.setFbPapTitle(fbPapTitle);
            //设置序号和答案
            String [] tmp =new String[tempTestPaper.getFblist().size()];
            for (int i = 0; i < tempTestPaper.getFblist().size(); i++) {
                FBQuestion fbQuestion=tempTestPaper.getFblist().get(i);
                fbQuestion.setStem((i+1)+"."+fbQuestion.getStem());
                tmp[i]=(i+1)+"."+fbQuestion.getAnswer();
            }
            fbPapTitle.setFbAnswer(StringUtils.join(tmp,"\r"));

        }
         //设置简答题的总分
        if(tempTestPaper.getQalist()!=null&&(tempTestPaper.getQaScore().length>0)){
            Integer total=0;
            Integer [] qaScores=tempTestPaper.getQaScore();
            for (int i = 0; i < qaScores.length; i++) {
                total+=qaScores[i];
            }
            QaPapTitle qaPapTitle=new QaPapTitle();
            qaPapTitle.setQaLength(tempTestPaper.getQalist().size());
            qaPapTitle.setQaTotalScore(total);
            tempTestPaper.setQaPapTitle(qaPapTitle);

            //设置序号和答案
            String [] tmp =new String[tempTestPaper.getQalist().size()];
            for (int i = 0; i < tempTestPaper.getQalist().size(); i++) {
                QAQuestion qaQuestion=tempTestPaper.getQalist().get(i);
                qaQuestion.setStem((i+1)+"."+qaQuestion.getStem());
                tmp[i]=(i+1)+"."+qaQuestion.getAnswer();
            }
            qaPapTitle.setQaAnswer(StringUtils.join(tmp,"\r"));

        }
        //设置多选题的选项序号
        if(tempTestPaper.getMclist()!=null&&tempTestPaper.getMcScore()!=null){

            for (int i = 0; i < tempTestPaper.getMclist().size(); i++) {
                List<MCOption> options=tempTestPaper.getMclist().get(i).getOptions();
              /*  ArrayList<TextRenderData> textRenderDatas= new ArrayList<TextRenderData>();*/

                for (int j = 0; j < options.size(); j++) {
                    /*TextRenderData textRenderData = new TextRenderData(options.get(j).getOptionContent().toString());//获取多选题的每一个选项
                    textRenderDatas.add(textRenderData);*/
                    options.get(j).setOptionContent(charNum[j]+options.get(j).getOptionContent());
                }
               /* tempTestPaper.getMclist().get(i).setOptions2( new NumbericRenderData(textRenderDatas));*/
             /*   FMT_UPPER_LETTER,*/

            }


        }


        return tempTestPaper;
    }

    @Transactional
    public boolean addTestPaper(TestPaper testPaper) {

        //1.设置基本参数：创建时间，提交教师id,试卷状态，试题类型
        testPaper.setCreateTime(new Date());
        testPaper.setPostTeacherId(TeacherUtils.getTeacher().getId());
        testPaper.setStatus(0);//状态为0表示未审核
        String queTypes="";
        if(testPaper.getSclist()!=null&&testPaper.getSclist().size()>0){
            queTypes+="单选题@";
        }
        if(testPaper.getMclist()!=null&&testPaper.getMclist().size()>0){
            queTypes+="多选题@";
        }
        if(testPaper.getTflist()!=null&&testPaper.getTflist().size()>0){
            queTypes+="判断题@";
        }
        if(testPaper.getFblist()!=null&&testPaper.getFblist().size()>0){
            queTypes+="填空题@";
        }
        if(testPaper.getQalist()!=null&&testPaper.getQalist().size()>0){
            queTypes+="简答题@";
        }
        Integer testPaperId=testPaperMapper.insertSelective(testPaper);
        //添加试卷分数表

        List<QuestionScore> questionScores=new ArrayList<>();
        //设置单选题
        if(testPaper.getSclist()!=null&&testPaper.getSclist().size()>0){
            List<SCQuestion> sclist=testPaper.getSclist();
            for (int i = 0; i < sclist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(sclist.get(i).getId());//设置单选题id
                questionScore.setQueType("单选题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getScScore());//设置单选题分数
                questionScores.add(questionScore);//加入集合
            }
        }
        //设置多选题
        if(testPaper.getMclist()!=null&&testPaper.getMclist().size()>0){
            List<MCQuestion> mclist=testPaper.getMclist();
            for (int i = 0; i < mclist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(mclist.get(i).getId());//设置多选题id
                questionScore.setQueType("多选题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getMcScore());//设置单选题分数
                questionScores.add(questionScore);//加入集合
            }
        }
        //设置判断题
        if(testPaper.getTflist()!=null&&testPaper.getTflist().size()>0){
            List<TFQuestion> tflist=testPaper.getTflist();
            for (int i = 0; i < tflist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(tflist.get(i).getId());//设置单选题id
                questionScore.setQueType("判断题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getTfScore());//设置单选题分数
                questionScores.add(questionScore);//加入集合
            }
        }
        //设置填空题
        if(testPaper.getFblist()!=null&&testPaper.getFblist().size()>0){
            List<FBQuestion> fblist=testPaper.getFblist();
            for (int i = 0; i < fblist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(fblist.get(i).getId());//设置单选题id
                questionScore.setQueType("填空题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getFbScore()[i]);//设置填空题分数
                questionScores.add(questionScore);//加入集合
            }
        }
        //设置简答题
        if(testPaper.getQalist()!=null&&testPaper.getQalist().size()>0){
            List<QAQuestion> qalist=testPaper.getQalist();
            for (int i = 0; i < qalist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(qalist.get(i).getId());//设置单选题id
                questionScore.setQueType("简答题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getQaScore()[i]);//设置单选题分数
                questionScores.add(questionScore);//加入集合
            }
        }
        return (questionScoreMapper.addQueScoreList(questionScores)==questionScores.size());

    }

    //根据课程id获取各题型的列表，封装到TestPaper对象中
    public TestPaper getQueTypeNums(Integer courseId){
        List<SCQuestion> sclist=scQuestionMapper.getSCQuestionByCourseId(courseId);
        List<MCQuestion> mclist=mcQuestionMapper.getMCQuestionByCourseId(courseId);
        List<TFQuestion> tflist=tfQuestionMapper.getTFQuestionByCourseId(courseId);
        List<FBQuestion> fblist=fbQuestionMapper.getFBQuestionByCourseId(courseId);
        List<QAQuestion> qalist=qaQuestionMapper.getQAQuestionByCourseId(courseId);
        TestPaper testPaper=new TestPaper();
        testPaper.setSclist(sclist);
        testPaper.setMclist(mclist);
        testPaper.setTflist(tflist);
        testPaper.setFblist(fblist);
        testPaper.setQalist(qalist);
        return testPaper;
    }
}
