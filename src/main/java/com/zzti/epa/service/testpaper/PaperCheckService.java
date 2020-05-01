package com.zzti.epa.service.testpaper;

import com.zzti.epa.mapper.paper.PaperCheckMapper;
import com.zzti.epa.mapper.paper.QuestionScoreMapper;
import com.zzti.epa.mapper.paper.TestPaperMapper;
import com.zzti.epa.model.*;
import com.zzti.epa.service.question.*;
import com.zzti.epa.utils.TeacherUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName PaperCheckService
 * @Description 试卷审核业务层
 * @Author Administrator
 * @Date 2020-04-30 9:51
 **/
@Service
public class PaperCheckService {
    @Autowired
    PaperCheckMapper paperCheckMapper;
    @Autowired
    TestPaperMapper testPaperMapper;
    @Autowired
    SCQuestionService scQuestionService;
    @Autowired
    MCQuestionService mcQuestionService;
    @Autowired
    TFQuestionService tfQuestionService;
    @Autowired
    FBQuestionService fbQuestionService;
    @Autowired
    QAQuestionService qaQuestionService;
    @Autowired
    QuestionScoreMapper questionScoreMapper;
    //收到的试卷审核
    public RespPageBean getReceiveCheck(Integer page, Integer size) {

        //1.获取用户信息
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        Teacher teacher= TeacherUtils.getTeacher();//获取当前用户信息
        Integer teacherId= teacher.getId();
        List<PaperCheck> paperChecks=paperCheckMapper.getTestPaperCheckByCheckTId(teacherId,page,size);
        //获取试卷信息
        for (int i = 0; i < paperChecks.size(); i++) {
            PaperCheck paperCheck=paperChecks.get(i);
            TestPaper testPaper=testPaperMapper.getTestPaperById(paperCheck.getTestPaperId());
            //这里把试题信息进行封装
            //首先获取试卷中的试题类型，放到集合中
            List<SCQuestion> sclist=new ArrayList<>();
            List<MCQuestion> mclist=new ArrayList<>();
            List<TFQuestion> tflist=new ArrayList<>();
            List<FBQuestion> fblist=new ArrayList<>();
            List<QAQuestion> qalist=new ArrayList<>();

            List<QuestionScore> questionScoreList=questionScoreMapper.getQuestionScoreByTestPaperId2(testPaper.getId());

            for (int j = 0; j < questionScoreList.size(); j++) {
                QuestionScore questionScore=questionScoreList.get(j);
                //
                if(questionScore.getQueType().equals("单选题")){
                    SCQuestion scQuestion=scQuestionService.getSCQuestionById(questionScore.getQuestionId());
                    sclist.add(scQuestion);
                }else if(questionScore.getQueType().equals("多选题")){
                    MCQuestion mcQuestion=mcQuestionService.getMCQuestionById(questionScore.getQuestionId());
                    mclist.add(mcQuestion);
                }else if(questionScore.getQueType().equals("判断题")){
                    TFQuestion tfQuestion=tfQuestionService.getTFQuestionById(questionScore.getQuestionId());
                    tflist.add(tfQuestion);
                }else if(questionScore.getQueType().equals("填空题")){
                    FBQuestion fbQuestion=fbQuestionService.getFBQuestionById(questionScore.getQuestionId());
                    fblist.add(fbQuestion);

                }else if(questionScore.getQueType().equals("简答题")){
                    QAQuestion qaQuestion=qaQuestionService.getQAQuestionById(questionScore.getQuestionId());
                    qalist.add(qaQuestion);
                }
            }

            // System.out.println(">>>>questionScoreList:"+questionScoreList);
            testPaper.setQuestionScores(questionScoreList);
            testPaper.setSclist(sclist);
            testPaper.setMclist(mclist);
            testPaper.setTflist(tflist);
            testPaper.setFblist(fblist);
            testPaper.setQalist(qalist);
            paperCheck.setTestPaper(testPaper);
            paperCheck.setCheckTeacher(teacher);//初始化审核者信息

        }
        Long total=paperCheckMapper.getTestPaperCheckTotal(teacherId);//总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(paperChecks);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;


    }

    public Integer refuseTestPaperCheck(Integer id, String refuseReason) {
        return paperCheckMapper.refuseTestPaperCheck(id,refuseReason);
    }


    public Integer deletePaperCheckById(Integer id) {
        return paperCheckMapper.deleteByPrimaryKey(id);
    }

    //提交的试卷审核
    public RespPageBean getSubmitCheck(Integer page, Integer size) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        Teacher teacher=TeacherUtils.getTeacher();//获取当前用户信息
        Integer teacherId= teacher.getId();
        List<PaperCheck> paperChecks=paperCheckMapper.getSubmmitedTestPaperCheckByCheckTId(teacherId,page,size);
        //获取试卷信息
        for (int i = 0; i < paperChecks.size(); i++) {
            PaperCheck paperCheck = paperChecks.get(i);
            TestPaper testPaper = testPaperMapper.getTestPaperById(paperCheck.getTestPaperId());
            //这里把试题信息进行封装
            //首先获取试卷中的试题类型，放到集合中
            List<SCQuestion> sclist = new ArrayList<>();
            List<MCQuestion> mclist = new ArrayList<>();
            List<TFQuestion> tflist = new ArrayList<>();
            List<FBQuestion> fblist = new ArrayList<>();
            List<QAQuestion> qalist = new ArrayList<>();

            List<QuestionScore> questionScoreList = questionScoreMapper.getQuestionScoreByTestPaperId2(testPaper.getId());

            for (int j = 0; j < questionScoreList.size(); j++) {
                QuestionScore questionScore = questionScoreList.get(j);
                //
                if (questionScore.getQueType().equals("单选题")) {
                    SCQuestion scQuestion = scQuestionService.getSCQuestionById(questionScore.getQuestionId());
                    sclist.add(scQuestion);
                } else if (questionScore.getQueType().equals("多选题")) {
                    MCQuestion mcQuestion = mcQuestionService.getMCQuestionById(questionScore.getQuestionId());
                    mclist.add(mcQuestion);
                } else if (questionScore.getQueType().equals("判断题")) {
                    TFQuestion tfQuestion = tfQuestionService.getTFQuestionById(questionScore.getQuestionId());
                    tflist.add(tfQuestion);
                } else if (questionScore.getQueType().equals("填空题")) {
                    FBQuestion fbQuestion = fbQuestionService.getFBQuestionById(questionScore.getQuestionId());
                    fblist.add(fbQuestion);

                } else if (questionScore.getQueType().equals("简答题")) {
                    QAQuestion qaQuestion = qaQuestionService.getQAQuestionById(questionScore.getQuestionId());
                    qalist.add(qaQuestion);
                }
            }

            // System.out.println(">>>>questionScoreList:"+questionScoreList);
            testPaper.setQuestionScores(questionScoreList);
            testPaper.setSclist(sclist);
            testPaper.setMclist(mclist);
            testPaper.setTflist(tflist);
            testPaper.setFblist(fblist);
            testPaper.setQalist(qalist);
            paperCheck.setTestPaper(testPaper);
            paperCheck.setPostTeacher(teacher);//初始化审核者信息
        }
            Long total=paperCheckMapper.getSubmmitedTestPaperCheckTotal(teacherId);//总记录数
            RespPageBean bean = new RespPageBean();
            bean.setData(paperChecks);//放入数据
            bean.setTotal(total);//放入总记录数
            return bean;
    }
}
