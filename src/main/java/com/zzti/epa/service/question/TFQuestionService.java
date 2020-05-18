package com.zzti.epa.service.question;

import com.zzti.epa.config.IAuthenticationFacade;
import com.zzti.epa.mapper.baseinfo.ChapterMapper;
import com.zzti.epa.mapper.baseinfo.KnowsMapper;
import com.zzti.epa.mapper.question.QuestionCheckMapper;
import com.zzti.epa.mapper.question.TFQuestionMapper;
import com.zzti.epa.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @ClassName TFQuestionService
 * @Description 判断题接口层
 * @Author Administrator
 * @Date 2020-04-09 15:08
 **/
@Service
public class TFQuestionService {
    @Autowired
    TFQuestionMapper tfQuestionMapper;
    @Autowired
    QuestionCheckMapper questionCheckMapper;
    @Autowired
    KnowsMapper knowsMapper;
    @Autowired
    ChapterMapper chapterMapper;
    @Autowired
    private IAuthenticationFacade authenticationFacade;
    public Integer AddTFQuestion(TFQuestion tfQuestion) {
        Authentication authentication = authenticationFacade.getAuthentication();
        Teacher teacher=(Teacher)authentication.getPrincipal();//获取user信息
        tfQuestion.setTeacherId(teacher.getId());

        tfQuestionMapper.insertSelective(tfQuestion);
        int tfQuestionId=tfQuestion.getId();
        QuestionCheck questionCheck=new QuestionCheck();
        questionCheck.setPostTeacherId(teacher.getId());
        questionCheck.setCheckTeacherId(tfQuestion.getCheckTeacherId());
        questionCheck.setQuestionId(tfQuestionId);
        questionCheck.setQuestionType("tf");//设置试题类型
        questionCheck.setPostTime(new Date());
        return  questionCheckMapper.insertSelective(questionCheck);
    }

    public RespPageBean getTFQuestionByPage(Integer page, Integer size, TFQuestion tfQuestion) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<TFQuestion> data=tfQuestionMapper.getTFQuestionByPage(page,size,tfQuestion);
        for (int i=0;i<data.size();i++){//遍历查询知识点,把“|”分割的知识点id查询出来赋值到List<Knows>数组中
            TFQuestion tfQuestion1=data.get(i);
            String knowIds=tfQuestion1.getKnowIds();
            if(knowIds!=null&&knowIds!=""){
                String [] knowIds2=knowIds.split("@");
                List<Knows> listKnows=new ArrayList<>();//存放每个试题的知识点
                for (int j=0;j<knowIds2.length;j++){
                    Knows knows=knowsMapper.getKnowsById(knowIds2[j]);
                    if(knows!=null){
                        listKnows.add(knows);
                    }
                }
                tfQuestion1.setKnows(listKnows);
            }

        }
        Long total=tfQuestionMapper.getTotal(tfQuestion);//总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(data);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;
    }

    public Integer deleteTFQuestionById(Integer id) {
        return  tfQuestionMapper.deleteByPrimaryKey(id);
    }

    @Transactional
    public Integer updateTFQuestion(TFQuestion tfQuestion) {
        System.out.println(tfQuestion.toString());
       //这里是审核拒绝后的更新操作，需要在审核表里改变试题的状态
            tfQuestion.setStatus(0);
            tfQuestion.setUpdateTime(new Date());//设置最新的时间
            questionCheckMapper.updateStatusByQueIdAndType("tf",tfQuestion.getId());


        return tfQuestionMapper.updateByPrimaryKeySelective(tfQuestion);
    }
    public TFQuestion getTFQuestionById(Integer id){//带有章节和知识点信息的单选试题
        TFQuestion tfQuestion=tfQuestionMapper.getTFQuestionById(id);
        String knowIds=tfQuestion.getKnowIds();

        String [] knowIds2=knowIds.split("@");
        List<Knows> listKnows=new ArrayList<>();//存放每个试题的知识点
        for (int j=0;j<knowIds2.length;j++){
            Knows knows=knowsMapper.getKnowsById(knowIds2[j]);
            if(knows!=null){
                listKnows.add(knows);
            }
        }
        tfQuestion.setKnows(listKnows);

        Integer chapterId=tfQuestion.getChapterId();
        Chapter chapter=chapterMapper.selectByPrimaryKey(chapterId);
        tfQuestion.setChapter(chapter);
        return tfQuestion;

    }
}
