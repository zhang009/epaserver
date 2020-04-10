package com.zzti.epa.service.question;

import com.zzti.epa.config.IAuthenticationFacade;
import com.zzti.epa.mapper.question.QAQuestionMapper;
import com.zzti.epa.mapper.question.QuestionCheckMapper;
import com.zzti.epa.model.QAQuestion;
import com.zzti.epa.model.QuestionCheck;
import com.zzti.epa.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

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
}
