package com.zzti.epa.service.testpaper;

import com.zzti.epa.mapper.baseinfo.KnowsMapper;
import com.zzti.epa.mapper.paper.QuestionScoreMapper;
import com.zzti.epa.mapper.paper.TestPaperMapper;
import com.zzti.epa.model.Knows;
import com.zzti.epa.model.QuestionScore;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.model.TestPaper;
import com.zzti.epa.model.pojo.QueInfo;
import com.zzti.epa.model.pojo.TempTestPaper2;
import com.zzti.epa.model.pojo.TemplateQuestions;
import com.zzti.epa.utils.TeacherUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @ClassName TestPaperTemplateService
 * @Description 试卷模板管理
 * @Author Administrator
 * @Date 2020-04-25 21:44
 **/
@Service
public class TestPaperTemplateService {

    @Autowired
    TestPaperMapper testPaperMapper;
    @Autowired
    QuestionScoreMapper questionScoreMapper;
    @Autowired
    KnowsMapper knowsMapper;

    public RespPageBean getTestPaperTemplateByPage(Integer page, Integer size, TestPaper testPaper) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<TestPaper> data=testPaperMapper.getTestPaperTemplateByPage(page,size,testPaper);
        //这里把试题信息进行封装
        for (int i = 0; i < data.size(); i++) {
            TestPaper testPaper1=data.get(i);
            List<QuestionScore> questionScoreList=questionScoreMapper.getQuestionScoreByTestPaperId(testPaper1.getId());
         //   System.out.println("questionScore.size:"+questionScoreList.size());
            for (int j = 0; j < questionScoreList.size(); j++) {
                QuestionScore questionScore=questionScoreList.get(j);
                String knowIds=questionScore.getKnowIds();
                String [] knowIds2=knowIds.split("@");
                List<Knows> knowsList=new ArrayList<>();//存放每个试题的知识点
                for (int k=0;k<knowIds2.length;k++){
                    Knows knows=knowsMapper.getKnowsById(knowIds2[k]);
                    if(knows!=null){
                        knowsList.add(knows);
                    }
                }
             //   System.out.println("listKnows:"+knowsList.size());
                questionScore.setKnows(knowsList);
                System.out.println("<<<"+questionScore.toString());
            }
            System.out.println(">>>>questionScoreList:"+questionScoreList);
            testPaper1.setQuestionScores(questionScoreList);
        }
        Long total=testPaperMapper.getTestPaperTemplateTotal(testPaper);//总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(data);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;
    }

    @Transactional
    public boolean addPaperTemplate(TempTestPaper2 tempTestPaper2) {//添加试卷模板
        TestPaper testPaper=new TestPaper();
        testPaper.setName(tempTestPaper2.getName());
        testPaper.setSchoolId(tempTestPaper2.getSchoolId());
        testPaper.setMajorId(tempTestPaper2.getMajorId());
        testPaper.setSemester(tempTestPaper2.getSemester());
        testPaper.setCourseId(tempTestPaper2.getCourseId());
        testPaper.setRemark(tempTestPaper2.getRemark());
        testPaper.setTotalScore(tempTestPaper2.getTotalScore());
        testPaper.setPassScore(tempTestPaper2.getPassScore());

        testPaper.setCreateTime(new Date());
        testPaper.setPostTeacherId(TeacherUtils.getTeacher().getId());
        /*testPaper.setPaperType(1);//试题组卷类型，0代表手动组卷，1代表自动组卷*/
        testPaper.setStatus(1);//状态为0表示未审核，这里试卷模板不用设置审核,这里统一设置为1
        testPaper.setIsTemplate(1);//设置试卷模板添加，试卷模板添加为1
        String queTypes="";
        //这里需要遍历一次大题集合，获取题型，封装到一起
        List<TemplateQuestions> templateQuestions=tempTestPaper2.getQuestions();//大题集合
        for (int i = 0; i < templateQuestions.size(); i++) {
            TemplateQuestions templateQuestions1 = templateQuestions.get(i);
            if (templateQuestions1.getQueType() != null) {
                queTypes += templateQuestions1.getQueType() + "@";
            }
        }
        testPaper.setQueTypes(queTypes);
        testPaperMapper.insertSelective(testPaper);//添加试卷模板到数据库，获取试卷模板的id
        Integer testPaperId=testPaper.getId();
        List<QuestionScore> questionScores=new ArrayList<>();//存储试卷模板中的试题集合
        List<TemplateQuestions> largeQuestions=tempTestPaper2.getQuestions();// 获取大题集合
        for (int i = 0; i < largeQuestions.size(); i++) {
            TemplateQuestions largeQuestion=largeQuestions.get(i);//获取大题信息


            for (int j = 0; j < largeQuestion.getQueInfo().size(); j++) {
                QuestionScore questionScore=new QuestionScore();//新建试题空对象
                QueInfo queInfo=largeQuestion.getQueInfo().get(j);//小题信息
                questionScore.setQueType(largeQuestion.getQueType());//设置小题题型
                questionScore.setTestPaperId(testPaperId);//设置试卷模板id

                questionScore.setSortNum(j+1);//设置试题排序序号，这里序号为试题下标+1
                questionScore.setQueScore(queInfo.getScore());//设置分数
                questionScore.setChapterId(queInfo.getChapterId());
                //遍历知识点数组，组合成字符串，中间以@分割
                if(queInfo.getKnowIds()!=null){
                    Integer knowIds[]=queInfo.getKnowIds();
                    String strKnows= StringUtils.join(knowIds,"@");
                    questionScore.setKnowIds(strKnows);
                }

                questionScores.add(questionScore);
            }

        }

        return (questionScoreMapper.addQueScoreList(questionScores)==questionScores.size());

    }

    //更新试卷模板
    @Transactional
    public boolean updatePaperTemplate(TempTestPaper2 tempTestPaper2) {
        //这里更新试题信息，需要把所有的旧试题删除，然后重新添加
        TestPaper testPaper=new TestPaper();
        testPaper.setName(tempTestPaper2.getName());
        testPaper.setSchoolId(tempTestPaper2.getSchoolId());
        testPaper.setMajorId(tempTestPaper2.getMajorId());
        testPaper.setSemester(tempTestPaper2.getSemester());
        testPaper.setCourseId(tempTestPaper2.getCourseId());
        testPaper.setRemark(tempTestPaper2.getRemark());
        testPaper.setTotalScore(tempTestPaper2.getTotalScore());
        testPaper.setPassScore(tempTestPaper2.getPassScore());
        testPaper.setId(tempTestPaper2.getId());

        String queTypes="";
        //这里需要遍历一次大题集合，获取题型，封装到一起
        List<TemplateQuestions> templateQuestions=tempTestPaper2.getQuestions();//大题集合
        for (int i = 0; i < templateQuestions.size(); i++) {
            TemplateQuestions templateQuestions1 = templateQuestions.get(i);
            if (templateQuestions1.getQueType() != null) {
                queTypes += templateQuestions1.getQueType() + "@";
            }
        }
        testPaper.setQueTypes(queTypes);

        System.out.println("tempTestPaper2:"+tempTestPaper2.toString());
        testPaperMapper.updateByPrimaryKeySelective(testPaper);//更新试卷模板
        questionScoreMapper.deleteByTestPaperId(tempTestPaper2.getId());//删除旧试题

        List<QuestionScore> questionScores=new ArrayList<>();//存储试卷模板中的试题集合
        List<TemplateQuestions> largeQuestions=tempTestPaper2.getQuestions();// 获取大题集合
        for (int i = 0; i < largeQuestions.size(); i++) {
            TemplateQuestions largeQuestion=largeQuestions.get(i);//获取大题信息


            for (int j = 0; j < largeQuestion.getQueInfo().size(); j++) {
                QuestionScore questionScore=new QuestionScore();//新建试题空对象
                QueInfo queInfo=largeQuestion.getQueInfo().get(j);//小题信息
                questionScore.setQueType(largeQuestion.getQueType());//设置小题题型
                questionScore.setTestPaperId(tempTestPaper2.getId());//设置试卷模板id

                questionScore.setSortNum(j+1);//设置试题排序序号，这里序号为试题下标+1
                questionScore.setQueScore(queInfo.getScore());//设置分数
                questionScore.setChapterId(queInfo.getChapterId());
                //遍历知识点数组，组合成字符串，中间以@分割
                if(queInfo.getKnowIds()!=null){
                    Integer knowIds[]=queInfo.getKnowIds();
                    String strKnows= StringUtils.join(knowIds,"@");
                    questionScore.setKnowIds(strKnows);
                }

                questionScores.add(questionScore);
            }

        }

        return (questionScoreMapper.addQueScoreList(questionScores)==questionScores.size());
    }


    public Integer deleteTestPaperTemplateById(Integer id) {
        return  testPaperMapper.deleteByPrimaryKey(id);
    }
}
