package com.zzti.epa.service.testpaper;

import com.zzti.epa.mapper.paper.QuestionScoreMapper;
import com.zzti.epa.mapper.paper.TestPaperMapper;
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
    public RespPageBean getTestPaperByPage(Integer page, Integer size, TestPaper testPaper) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<TestPaper> data=testPaperMapper.getTestPaperByPage(page,size,testPaper);


        Long total=testPaperMapper.getTotal(testPaper);//总记录数

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
        testPaperMapper.insertSelective(testPaper);
        Integer testPaperId=testPaper.getId();
        List<QuestionScore> questionScores=new ArrayList<>();
        List<TemplateQuestions> questions=tempTestPaper2.getQuestions();//大题集合
        for (int i = 0; i < questions.size(); i++) {
            TemplateQuestions questions1=questions.get(i);
            if(questions1.getQueType()!=null){
                queTypes+=questions1.getQueType()+"@";
            }
            QuestionScore questionScore=new QuestionScore();
            for (int j = 0; j < questions1.getQueInfo().size(); j++) {
                QueInfo queInfo=questions1.getQueInfo().get(j);//小题集合
                questionScore.setSortNum(j);//设置试题序号，这里序号为前端试题下标
                questionScore.setQueScore(queInfo.getScore());//设置分数
                questionScore.setQueType(questions1.getQueType());//设置题型
                questionScore.setTestPaperId(testPaperId);//设置试卷模板id
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
}
