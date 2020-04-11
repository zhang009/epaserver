package com.zzti.epa.service.question;

import com.zzti.epa.config.IAuthenticationFacade;
import com.zzti.epa.mapper.question.QAQuestionMapper;
import com.zzti.epa.mapper.question.QuestionCheckMapper;
import com.zzti.epa.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName QAQuestionService
 * @Description 问答题业务层
 * @Author Administrator
 * @Date 2020-04-09 14:18
 **/
@Service
public class QAQuestionService {

    @Autowired
    QAQuestionMapper qaQuestionMapper;
    @Autowired
    QuestionCheckMapper questionCheckMapper;
    @Autowired
    private IAuthenticationFacade authenticationFacade;
    public Integer AddQAQuestion(QAQuestion qaQuestion) {
        Authentication authentication = authenticationFacade.getAuthentication();
        Teacher teacher=(Teacher)authentication.getPrincipal();//获取user信息
        qaQuestion.setTeacherId(teacher.getId());
        qaQuestionMapper.insertSelective(qaQuestion);
        int qaQuestionId=qaQuestion.getId();

        QuestionCheck questionCheck=new QuestionCheck();
        questionCheck.setPostTeacherId(teacher.getId());
        questionCheck.setCheckTeacherId(qaQuestion.getCheckTeacherId());
        questionCheck.setQuestionId(qaQuestionId);
        questionCheck.setQuestionType("qa");//设置试题类型
        return  questionCheckMapper.insertSelective(questionCheck);
    }

    public RespPageBean getQAQuestionByPage(Integer page, Integer size, QAQuestion qaQuestion) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<QAQuestion> data=qaQuestionMapper.getQAQuestionByPage(page,size,qaQuestion);
        Long total=qaQuestionMapper.getTotal(qaQuestion);//总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(data);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;
    }

    public Integer deleteQAQuestionById(Integer id) {
        return qaQuestionMapper.deleteByPrimaryKey(id);
    }

    public Integer updateQAQuestion(QAQuestion qaQuestion) {
        return qaQuestionMapper.updateByPrimaryKey(qaQuestion);
    }
}
