package com.zzti.epa.service.question;

import com.zzti.epa.config.IAuthenticationFacade;
import com.zzti.epa.mapper.question.MCOptionMapper;
import com.zzti.epa.mapper.question.MCQuestionMapper;
import com.zzti.epa.mapper.question.QuestionCheckMapper;
import com.zzti.epa.model.MCOption;
import com.zzti.epa.model.MCQuestion;
import com.zzti.epa.model.QuestionCheck;
import com.zzti.epa.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @ClassName MCQuestionService
 * @Description 多选题业务层
 * @Author Administrator
 * @Date 2020-04-09 11:15
 **/
@Service
public class MCQuestionService {
    @Autowired
    MCQuestionMapper mcQuestionMapper;
    @Autowired
    QuestionCheckMapper questionCheckMapper;
    @Autowired
    MCOptionMapper mcOptionMapper;
    @Autowired
    private IAuthenticationFacade authenticationFacade;

    /**
    * @Description:插入多选试题，并插入试题审核表记录
    * @Date: 2020-04-09  11:24
    * @Param mcQuestion:
    * @return: java.lang.Integer
    **/
    @Transactional
    public Integer AddMCQuestion(MCQuestion mcQuestion) {
        Authentication authentication = authenticationFacade.getAuthentication();
        Teacher teacher=(Teacher)authentication.getPrincipal();//获取user信息
        mcQuestion.setTeacherId(teacher.getId());
        mcQuestionMapper.insertSelective(mcQuestion);
        int mcQuestionId=mcQuestion.getId();
        //将选项进行拆分
        List<MCOption> options=mcQuestion.getOptions();
        //
        MCOption mcOption=null;
        for(int i=0;i<options.size();i++){
            mcOption=options.get(i);
            if(mcOption!=null){
                mcOption.setMcId(mcQuestionId);
                mcOptionMapper.insertSelective(mcOption);
            }
        }



        QuestionCheck questionCheck=new QuestionCheck();
        questionCheck.setPostTeacherId(teacher.getId());
        questionCheck.setCheckTeacherId(mcQuestion.getCheckTeacherId());
        questionCheck.setQuestionId(mcQuestionId);
        questionCheck.setQuestionType("mc");//设置试题类型
        return questionCheckMapper.insertSelective(questionCheck);
    }
}
