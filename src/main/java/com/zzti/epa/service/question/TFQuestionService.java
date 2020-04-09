package com.zzti.epa.service.question;

import com.zzti.epa.config.IAuthenticationFacade;
import com.zzti.epa.mapper.question.QuestionCheckMapper;
import com.zzti.epa.mapper.question.TFQuestionMapper;
import com.zzti.epa.model.QuestionCheck;
import com.zzti.epa.model.TFQuestion;
import com.zzti.epa.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

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
        return  questionCheckMapper.insertSelective(questionCheck);
    }
}
