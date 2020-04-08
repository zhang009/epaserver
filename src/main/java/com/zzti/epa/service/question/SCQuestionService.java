package com.zzti.epa.service.question;


import com.zzti.epa.config.IAuthenticationFacade;
import com.zzti.epa.mapper.question.QuestionCheckMapper;
import com.zzti.epa.mapper.question.SCQuestionMapper;
import com.zzti.epa.model.QuestionCheck;
import com.zzti.epa.model.SCQuestion;
import com.zzti.epa.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
        Teacher teacher=(Teacher)authentication.getPrincipal();//获取user信息
        scQuestion.setTeacherId(teacher.getId());
        scQuestionMapper.insertSelective(scQuestion);
        int scQuestionId=scQuestion.getId();
        QuestionCheck questionCheck=new QuestionCheck();


        questionCheck.setPostTeacherId(teacher.getId());
        questionCheck.setCheckTeacherId(scQuestion.getCheckTeacherId());
        questionCheck.setQuestionId(scQuestionId);
        questionCheck.setQuestionType("sc");//设置试题类型
        return  questionCheckMapper.insertSelective(questionCheck);
    }
}
