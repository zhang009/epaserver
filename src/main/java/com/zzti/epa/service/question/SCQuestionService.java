package com.zzti.epa.service.question;


import com.zzti.epa.config.IAuthenticationFacade;
import com.zzti.epa.mapper.baseinfo.ChapterMapper;
import com.zzti.epa.mapper.baseinfo.KnowsMapper;
import com.zzti.epa.mapper.question.QuestionCheckMapper;
import com.zzti.epa.mapper.question.SCQuestionMapper;
import com.zzti.epa.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @ClassName SCQuestionService
 * @Description 单选题业务层
 * @Author Administrator
 * @Date 2020-04-08 10:45
 **/
@Service
public class SCQuestionService {

   @Autowired
   SCQuestionMapper scQuestionMapper;
   @Autowired
   QuestionCheckMapper questionCheckMapper;
    @Autowired
    KnowsMapper knowsMapper;
    @Autowired
    ChapterMapper chapterMapper;


    @Autowired
    private IAuthenticationFacade authenticationFacade;
    /**
    * @Description:插入单选试题，并插入试题审核表记录
    * @Date: 2020-04-08  16:17
    * @Param scQuestion:
     * @Param request:
    * @return: java.lang.Integer
    **/
    @Transactional
    public Integer AddSCQuestion(SCQuestion scQuestion) {
        Authentication authentication = authenticationFacade.getAuthentication();
        Teacher teacher=(Teacher)authentication.getPrincipal();//获取当前教师信息
        scQuestion.setTeacherId(teacher.getId());//设置提交教师id
        scQuestionMapper.insertSelective(scQuestion);//插入单选试题（试题状态字段默认为0（未审核））
        int scQuestionId=scQuestion.getId();
        QuestionCheck questionCheck=new QuestionCheck();//新建试题审核对象


        questionCheck.setPostTeacherId(teacher.getId());//设置提交教师id
        questionCheck.setCheckTeacherId(scQuestion.getCheckTeacherId());//设置审核教师id
        questionCheck.setQuestionId(scQuestionId);//设置试题id
        //审核状态默认为0，这里不再设置
        questionCheck.setQuestionType("sc");//设置试题类型
        questionCheck.setPostTime(new Date());
        System.out.println(questionCheck.getPostTime());
        return  questionCheckMapper.insertSelective(questionCheck);
    }


    public RespPageBean getSCQuestionByPage(Integer page, Integer size, SCQuestion scQuestion) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<SCQuestion> data=scQuestionMapper.getSCQuestionByPage(page,size,scQuestion);
        for (int i=0;i<data.size();i++){//遍历查询知识点,把“|”分割的知识点id查询出来赋值到List<Knows>数组中
            SCQuestion scQuestion1=data.get(i);
            String knowIds=scQuestion1.getKnowIds();
            String [] knowIds2=knowIds.split("@");
            List<Knows> listKnows=new ArrayList<>();//存放每个试题的知识点
            for (int j=0;j<knowIds2.length;j++){
                Knows knows=knowsMapper.getKnowsById(knowIds2[j]);
                if(knows!=null){
                    listKnows.add(knows);
                }
            }
            scQuestion1.setKnows(listKnows);
        }

        Long total=scQuestionMapper.getTotal(scQuestion);//总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(data);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;
    }

    public Integer deleteSCQuestionByCid(Integer id) {
        return scQuestionMapper.deleteByPrimaryKey(id);
    }

    public Integer updateSCQuestion(SCQuestion scQuestion) {
        if(scQuestion.getStatus()==2){//如果是处于审核不通过状态，状态码为2，则把更新过后的状态码调整为0，未审核状态
            scQuestion.setStatus(0);
            questionCheckMapper.updateStatusByQueIdAndType("sc",scQuestion.getId());
        }
        return scQuestionMapper.updateByPrimaryKeySelective(scQuestion);//更新操作
    }
    public SCQuestion getSCQuestionById(Integer id){//带有章节和知识点信息的单选试题

        SCQuestion scQuestion=scQuestionMapper.getSCQuestionById(id);
        String knowIds=scQuestion.getKnowIds();

        String [] knowIds2=knowIds.split("@");
        List<Knows> listKnows=new ArrayList<>();//存放每个试题的知识点
        for (int j=0;j<knowIds2.length;j++){
            Knows knows=knowsMapper.getKnowsById(knowIds2[j]);
            if(knows!=null){
                listKnows.add(knows);
            }
        }
        scQuestion.setKnows(listKnows);

        Integer chapterId=scQuestion.getChapterId();
        Chapter chapter=chapterMapper.selectByPrimaryKey(chapterId);
        scQuestion.setChapter(chapter);
        return scQuestion;

    }
}
