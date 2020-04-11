package com.zzti.epa.service.question;

import com.zzti.epa.config.IAuthenticationFacade;
import com.zzti.epa.mapper.question.FBQuestionMapper;
import com.zzti.epa.mapper.question.QuestionCheckMapper;
import com.zzti.epa.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName FBQuestionService
 * @Description 填空题业务层
 * @Author Administrator
 * @Date 2020-04-09 13:49
 **/
@Service
public class FBQuestionService {
    @Autowired
    FBQuestionMapper fbQuestionMapper;
    @Autowired
    QuestionCheckMapper questionCheckMapper;
    @Autowired
    IAuthenticationFacade authenticationFacade;
    public Integer AddFBQuestion(FBQuestion fbQuestion) {
        Authentication authentication = authenticationFacade.getAuthentication();
        Teacher teacher=(Teacher)authentication.getPrincipal();//获取user信息
        fbQuestion.setTeacherId(teacher.getId());

        fbQuestionMapper.insertSelective(fbQuestion);
        int fbQuestionId=fbQuestion.getId();
        QuestionCheck questionCheck=new QuestionCheck();

        questionCheck.setPostTeacherId(teacher.getId());
        questionCheck.setCheckTeacherId(fbQuestion.getCheckTeacherId());
        questionCheck.setQuestionId(fbQuestionId);
        questionCheck.setQuestionType("fb");//设置试题类型
        return questionCheckMapper.insertSelective(questionCheck);


    }

    public RespPageBean getFBQuestionByPage(Integer page, Integer size, FBQuestion fbQuestion) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<FBQuestion> data=fbQuestionMapper.getFBQuestionByPage(page,size,fbQuestion);
        Long total=fbQuestionMapper.getTotal(fbQuestion);//总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(data);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;

    }

    public Integer deleteFBQuestionById(Integer id) {
        return fbQuestionMapper.deleteByPrimaryKey(id);
    }

    public Integer updateFBQuestion(FBQuestion fbQuestion) {
        return fbQuestionMapper.updateByPrimaryKeySelective(fbQuestion);
    }
}
