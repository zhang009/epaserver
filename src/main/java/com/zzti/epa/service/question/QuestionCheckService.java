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


    //获取收到的审核
    public RespPageBean getReceiveCheck(Integer page, Integer size) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        Teacher teacher=TeacherUtils.getTeacher();//获取当前用户信息
        Integer teacherId= teacher.getId();
        List<QuestionCheck> qclist=questionCheckMapper.getQuestionCheckByCheckTId(teacherId,page,size);
        QuestionCheck questionCheck=null;
        for (int i=0;i<qclist.size();i++){
            questionCheck=qclist.get(i);

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
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        Teacher teacher=TeacherUtils.getTeacher();//获取当前用户信息
        Integer teacherId= teacher.getId();
        QuestionCheck questionCheck=null;
        List<QuestionCheck> qclist=questionCheckMapper.getQuestionReceiveByCheckTId(teacherId,page,size);
        for (int i=0;i<qclist.size();i++){
            questionCheck=qclist.get(i);
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
            questionCheck.setPostTeacher(teacher);
        }
        Long total=questionCheckMapper.getTotal2(teacherId);//总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(qclist);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;

    }

    //通过审核
    public Integer passQuestionCheck(Integer id) {
        //1.获取到试题id,和试题类型
        return questionCheckMapper.passQuestionCheck(id);
    }

    public Integer deleteQuestionCheckById(Integer id) {
        return questionCheckMapper.deleteByPrimaryKey(id);
    }

    public Integer refuseQuestionCheck(Integer id, String refuseReason) {
        return questionCheckMapper.refuseQuestionCheck(id,refuseReason);
    }

    public int updateQuestionCheck(QuestionCheck questionCheck) {
        //1.获取到试题id,和试题类型,更新试题状态
        System.out.println("QuestionCheck:"+questionCheck.toString());
        if(questionCheck.getQuestionType().equals("sc")){//初始化试题信息
            SCQuestion scQuestion=scQuestionMapper.getSCQuestionById2(questionCheck.getQuestionId());
            scQuestion.setStatus(questionCheck.getCheckStatus());
            scQuestionMapper.updateByPrimaryKeySelective(scQuestion);//更新单选题试题状态

        }else if(questionCheck.getQuestionType().equals("mc")){
            MCQuestion mcQuestion=mcQuestionMapper.getMCQuestionById2(questionCheck.getQuestionId());
            mcQuestion.setStatus(questionCheck.getCheckStatus());
            mcQuestionMapper.updateByPrimaryKeySelective(mcQuestion);
        }else if(questionCheck.getQuestionType().equals("tf")){
            TFQuestion tfQuestion=tfQuestionMapper.getTFQuestionById2(questionCheck.getQuestionId());
            tfQuestion.setStatus(questionCheck.getCheckStatus());
            tfQuestionMapper.updateByPrimaryKeySelective(tfQuestion);

        }else if(questionCheck.getQuestionType().equals("fb")){
            FBQuestion fbQuestion=fbQuestionMapper.getFBQuestionById2(questionCheck.getQuestionId());
            fbQuestion.setStatus(questionCheck.getCheckStatus());
            fbQuestionMapper.updateByPrimaryKeySelective(fbQuestion);
        }else if(questionCheck.getQuestionType().equals("qa")){
            QAQuestion qaQuestion=qaQuestionMapper.getQAQuestionById2(questionCheck.getQuestionId());
            qaQuestion.setStatus(questionCheck.getCheckStatus());
            qaQuestionMapper.updateByPrimaryKeySelective(qaQuestion);
        }
        return questionCheckMapper.updateByPrimaryKeySelective(questionCheck);
    }
}
