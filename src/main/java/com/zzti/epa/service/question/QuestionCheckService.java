package com.zzti.epa.service.question;

import com.zzti.epa.mapper.question.*;
import com.zzti.epa.model.*;
import com.zzti.epa.utils.TeacherUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
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
        System.out.println("==========================================================");
        System.out.println(qclist.toString());
        for (int i = 0; i < qclist.size(); i++) {
            System.out.println(qclist.get(i).toString());
        }
        System.out.println(qclist.size());
        QuestionCheck questionCheck=null;
        for (int i=0;i<qclist.size();i++){
            questionCheck=qclist.get(i);

            if(questionCheck.getQuestionType().equals("sc")){//初始化试题信息
                SCQuestion scQuestion=scQuestionMapper.getSCQuestionById(questionCheck.getQuestionId());
                //这里需要进行判断，原因是因为，如果试题时由批量导入的，那么就没有章节和知识点信息，此时查询到的试题就为空，而实际上试题时存在的
                //如果试题为空，就重新查询
                if(scQuestion==null){
                    scQuestion=scQuestionMapper.getSCQuestionById3(questionCheck.getQuestionId());
                }
                if(scQuestion!=null){
                    questionCheck.setScQuestion(scQuestion);
                    questionCheck.setPostTime(scQuestion.getUpdateTime());//设置审核时间与试题修改时间一致
                }else{
                    qclist.remove(i);
                }


            }else if(questionCheck.getQuestionType().equals("mc")){
                MCQuestion mcQuestion=mcQuestionMapper.getMCQuestionById(questionCheck.getQuestionId());
                if(mcQuestion==null){
                    mcQuestion=mcQuestionMapper.getMCQuestionById3(questionCheck.getQuestionId());
                }
                if(mcQuestion!=null){
                    questionCheck.setMcQuestion(mcQuestion);
                    questionCheck.setPostTime(mcQuestion.getUpdateTime());//设置审核时间与试题修改时间一致
                }else{
                    qclist.remove(i);
                }


            }else if(questionCheck.getQuestionType().equals("tf")){
                TFQuestion tfQuestion=tfQuestionMapper.getTFQuestionById(questionCheck.getQuestionId());
                if(tfQuestion==null){
                    tfQuestion=tfQuestionMapper.getTFQuestionById2(questionCheck.getQuestionId());
                }
                if(tfQuestion!=null){
                    questionCheck.setTfQuestion(tfQuestion);
                    questionCheck.setPostTime(tfQuestion.getUpdateTime());//设置审核时间与试题修改时间一致
                }else{
                    qclist.remove(i);
                }

            }else if(questionCheck.getQuestionType().equals("fb")){
                FBQuestion fbQuestion=fbQuestionMapper.getFBQuestionById(questionCheck.getQuestionId());
                if(fbQuestion==null){
                    fbQuestion=fbQuestionMapper.getFBQuestionById2(questionCheck.getQuestionId());
                }
                if(fbQuestion!=null){
                    questionCheck.setFbQuestion(fbQuestion);
                    questionCheck.setPostTime(fbQuestion.getUpdateTime());//设置审核时间与试题修改时间一致
                }else{
                    qclist.remove(i);
                }

            }else if(questionCheck.getQuestionType().equals("qa")){
                QAQuestion qaQuestion=qaQuestionMapper.getQAQuestionById(questionCheck.getQuestionId());
                if(qaQuestion==null){
                    qaQuestion=qaQuestionMapper.getQAQuestionById2(questionCheck.getQuestionId());
                }
                if(qaQuestion!=null){
                    questionCheck.setQaQuestion(qaQuestion);
                    questionCheck.setPostTime(qaQuestion.getUpdateTime());//设置审核时间与试题修改时间一致
                }else{
                    qclist.remove(i);
                }

            }
            //初始化用户个人信息,提交者信息已经初始化完毕
            questionCheck.setCheckTeacher(teacher);
        }
        System.out.println("============================end==============================");
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
                //这里需要进行判断，原因是因为，如果试题时由批量导入的，那么就没有章节和知识点信息，此时查询到的试题就为空，而实际上试题时存在的
                //如果试题为空，就重新查询
                if(scQuestion==null){
                    scQuestion=scQuestionMapper.getSCQuestionById3(questionCheck.getQuestionId());
                }
                questionCheck.setScQuestion(scQuestion);
                questionCheck.setPostTime(scQuestion.getUpdateTime());//设置审核时间与试题修改时间一致

            }else if(questionCheck.getQuestionType().equals("mc")){
                MCQuestion mcQuestion=mcQuestionMapper.getMCQuestionById(questionCheck.getQuestionId());
                if(mcQuestion==null){
                    mcQuestion=mcQuestionMapper.getMCQuestionById3(questionCheck.getQuestionId());
                }
                questionCheck.setMcQuestion(mcQuestion);
                questionCheck.setPostTime(mcQuestion.getUpdateTime());//设置审核时间与试题修改时间一致

            }else if(questionCheck.getQuestionType().equals("tf")){
                TFQuestion tfQuestion=tfQuestionMapper.getTFQuestionById(questionCheck.getQuestionId());
                if(tfQuestion==null){
                    tfQuestion=tfQuestionMapper.getTFQuestionById2(questionCheck.getQuestionId());
                }
                questionCheck.setTfQuestion(tfQuestion);
                questionCheck.setPostTime(tfQuestion.getUpdateTime());//设置审核时间与试题修改时间一致
            }else if(questionCheck.getQuestionType().equals("fb")){
                FBQuestion fbQuestion=fbQuestionMapper.getFBQuestionById(questionCheck.getQuestionId());
                if(fbQuestion==null){
                    fbQuestion=fbQuestionMapper.getFBQuestionById2(questionCheck.getQuestionId());
                }
                questionCheck.setFbQuestion(fbQuestion);
                questionCheck.setPostTime(fbQuestion.getUpdateTime());//设置审核时间与试题修改时间一致
            }else if(questionCheck.getQuestionType().equals("qa")){
                QAQuestion qaQuestion=qaQuestionMapper.getQAQuestionById(questionCheck.getQuestionId());
                if(qaQuestion==null){
                    qaQuestion=qaQuestionMapper.getQAQuestionById2(questionCheck.getQuestionId());
                }
                questionCheck.setQaQuestion(qaQuestion);
                questionCheck.setPostTime(qaQuestion.getUpdateTime());//设置审核时间与试题修改时间一致
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

    //批量删除
    public int deleteQueByIds(Integer[] ids) {
        return questionCheckMapper.deleteQueCheckByIds(ids);
    }
    //批量审核
    @Transactional
    public int updateQuestionManyCheck(QuestionCheck questionCheck) {
        Integer [] ids=questionCheck.getIds();//获取批量审核的id数组
        //这里需要获取试题审核的对象
        List<QuestionCheck> list=new ArrayList<>();
        for (int i = 0; i < ids.length; i++) {
            QuestionCheck qc=questionCheckMapper.getQuestionCheckByCheckId(ids[i]);
            if(qc!=null){
                list.add(qc);
            }
        }
        for (int i = 0; i < list.size(); i++) {
            QuestionCheck questionCheck1=list.get(i);
            questionCheck1.setCheckStatus(questionCheck.getCheckStatus());//设置新的审核状态
            questionCheck1.setRefuseReason(questionCheck.getRefuseReason());//设置新的拒绝原因
            //1.获取到试题id,和试题类型,更新试题状态
            System.out.println("QuestionCheck:"+questionCheck1.toString());
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
            questionCheckMapper.updateByPrimaryKeySelective(questionCheck1);//更新试题审核
        }

        return 1;
    }
}
