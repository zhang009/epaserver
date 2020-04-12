package com.zzti.epa.service.question;

import com.zzti.epa.config.IAuthenticationFacade;
import com.zzti.epa.mapper.baseinfo.KnowsMapper;
import com.zzti.epa.mapper.question.FBQuestionMapper;
import com.zzti.epa.mapper.question.QuestionCheckMapper;
import com.zzti.epa.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
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
    KnowsMapper knowsMapper;
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
        questionCheck.setPostTime(new Date());
        return questionCheckMapper.insertSelective(questionCheck);


    }

    public RespPageBean getFBQuestionByPage(Integer page, Integer size, FBQuestion fbQuestion) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<FBQuestion> data=fbQuestionMapper.getFBQuestionByPage(page,size,fbQuestion);
        for (int i=0;i<data.size();i++){//遍历查询知识点,把“|”分割的知识点id查询出来赋值到List<Knows>数组中
            FBQuestion fbQuestion1=data.get(i);
            String knowIds=fbQuestion1.getKnowIds();
            String [] knowIds2=knowIds.split("@");
            List<Knows> listKnows=new ArrayList<>();//存放每个试题的知识点
            for (int j=0;j<knowIds2.length;j++){
                Knows knows=knowsMapper.getKnowsById(knowIds2[j]);
                if(knows!=null){
                    listKnows.add(knows);
                }
            }
            fbQuestion1.setKnows(listKnows);
        }

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
