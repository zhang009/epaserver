package com.zzti.epa.service.question;

import com.zzti.epa.mapper.question.*;
import com.zzti.epa.model.*;
import com.zzti.epa.utils.TeacherUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName QuestionCheckService
 * @Description 试题审核业务层
 * @Author Administrator
 * @Date 2020-04-12 16:43
 **/
@Service
public class QuestionCheckService {

    @Autowired
    QuestionCheckMapper questionCheckMapper;
    @Autowired
    SCQuestionMapper scQuestionMapper;
    @Autowired
    MCQuestionMapper mcQuestionMapper;
    @Autowired
    TFQuestionMapper tfQuestionMapper;
    @Autowired
    FBQuestionMapper fbQuestionMapper;
    @Autowired
    QAQuestionMapper qaQuestionMapper;

    /**
    * @Description:获取收到的审核
    * @Date: 2020-04-12  17:27
    * @Param page:
     * @Param size:
    * @return: com.zzti.epa.model.RespPageBean
    **/
    public RespPageBean getReceiveCheck(Integer page, Integer size) {
        Teacher teacher=TeacherUtils.getTeacher();//获取当前用户信息
        Integer teacherId= teacher.getId();
        List<QuestionCheck> qclist=questionCheckMapper.getQuestionCheckByCheckTId(teacherId,page,size);
        QuestionCheck questionCheck=null;
        for (int i=0;i<qclist.size();i++){
            questionCheck=qclist.get(i);
            System.out.println(questionCheck.getQuestionType());
            if(questionCheck.getQuestionType().equals("sc")){//初始化试题信息
                SCQuestion scQuestion=scQuestionMapper.getSCQuestionById(questionCheck.getQuestionId());
                questionCheck.setScQuestion(scQuestion);

            }else if(questionCheck.getQuestionType().equals("mc")){
                MCQuestion mcQuestion=mcQuestionMapper.getMCQuestionById(questionCheck.getQuestionId());
                questionCheck.setMcQuestion(mcQuestion);

            }else if(questionCheck.getQuestionType().equals("tf")){
                TFQuestion tfQuestion=tfQuestionMapper.getTFQuestionById(questionCheck.getQuestionId());
                questionCheck.setTfQuestion(tfQuestion);
            }else if(questionCheck.getQuestionType().equals("fb")){
                FBQuestion fbQuestion=fbQuestionMapper.getFBQuestionById(questionCheck.getQuestionId());
                questionCheck.setFbQuestion(fbQuestion);
            }else if(questionCheck.getQuestionType().equals("qa")){
                QAQuestion qaQuestion=qaQuestionMapper.getQAQuestionById(questionCheck.getQuestionId());
                questionCheck.setQaQuestion(qaQuestion);
            }
            //初始化用户个人信息,提交者信息已经初始化完毕
            questionCheck.setCheckTeacher(teacher);
        }
        Long total=questionCheckMapper.getTotal(teacherId);//总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(qclist);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;


    }

    /**
    * @Description:获取提交的审核
    * @Date: 2020-04-12  18:13
    * @Param page:
     * @Param size:
    * @return: com.zzti.epa.model.RespPageBean
    **/
    public RespPageBean getSubmitCheck(Integer page, Integer size) {
        Teacher teacher=TeacherUtils.getTeacher();//获取当前用户信息
        Integer teacherId= teacher.getId();
        List<QuestionCheck> qclist=questionCheckMapper.getQuestionReceiveByCheckTId(teacherId,page,size);
        for (int i=0;i<qclist.size();i++){
            QuestionCheck questionCheck=qclist.get(i);
            if(questionCheck.getQuestionType()=="sc"){//初始化试题信息
                SCQuestion scQuestion=scQuestionMapper.getSCQuestionById(questionCheck.getQuestionId());
                questionCheck.setScQuestion(scQuestion);

            }else if(questionCheck.getQuestionType()=="mc"){
                MCQuestion mcQuestion=mcQuestionMapper.getMCQuestionById(questionCheck.getQuestionId());
                questionCheck.setMcQuestion(mcQuestion);

            }else if(questionCheck.getQuestionType()=="tf"){
                TFQuestion tfQuestion=tfQuestionMapper.getTFQuestionById(questionCheck.getQuestionId());
                questionCheck.setTfQuestion(tfQuestion);
            }else if(questionCheck.getQuestionType()=="fb"){
                FBQuestion fbQuestion=fbQuestionMapper.getFBQuestionById(questionCheck.getQuestionId());
                questionCheck.setFbQuestion(fbQuestion);
            }else if(questionCheck.getQuestionType()=="qa"){
                QAQuestion qaQuestion=qaQuestionMapper.getQAQuestionById(questionCheck.getQuestionId());
                questionCheck.setQaQuestion(qaQuestion);
            }
            //初始化用户个人信息,提交者信息已经初始化完毕
            questionCheck.setPostTeacher(teacher);
        }
        Long total=questionCheckMapper.getTotal2(teacherId);//总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(qclist);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;

    }

    public Integer passQuestionCheck(Integer id) {
        return questionCheckMapper.passQuestionCheck(id);
    }

    public Integer deleteQuestionCheckById(Integer id) {
        return questionCheckMapper.deleteByPrimaryKey(id);
    }

    public Integer refuseQuestionCheck(Integer id, String refuseReason) {
        return questionCheckMapper.refuseQuestionCheck(id,refuseReason);
    }
}
