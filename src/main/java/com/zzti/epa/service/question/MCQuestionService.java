package com.zzti.epa.service.question;

import com.zzti.epa.config.IAuthenticationFacade;
import com.zzti.epa.mapper.baseinfo.ChapterMapper;
import com.zzti.epa.mapper.baseinfo.KnowsMapper;
import com.zzti.epa.mapper.question.MCOptionMapper;
import com.zzti.epa.mapper.question.MCQuestionMapper;
import com.zzti.epa.mapper.question.QuestionCheckMapper;
import com.zzti.epa.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
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
    KnowsMapper knowsMapper;
    @Autowired
    ChapterMapper chapterMapper;
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
        questionCheck.setPostTime(new Date());
        return questionCheckMapper.insertSelective(questionCheck);
    }

    public RespPageBean getMCQuestionByPage(Integer page, Integer size, MCQuestion mcQuestion) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<MCQuestion> data=mcQuestionMapper.getMCQuestionByPage(page,size,mcQuestion);
        for (int i=0;i<data.size();i++){//遍历查询知识点,把“|”分割的知识点id查询出来赋值到List<Knows>数组中
            MCQuestion mcQuestion1=data.get(i);
            String knowIds=mcQuestion1.getKnowIds();
            String [] knowIds2=knowIds.split("@");
            List<Knows> listKnows=new ArrayList<>();//存放每个试题的知识点
            for (int j=0;j<knowIds2.length;j++){
                Knows knows=knowsMapper.getKnowsById(knowIds2[j]);
                if(knows!=null){
                    listKnows.add(knows);
                }
            }
            mcQuestion1.setKnows(listKnows);
        }
        for (int i = 0; i < data.size(); i++) {
            System.out.println(data.get(i).toString());
        }


        Long total=mcQuestionMapper.getTotal(mcQuestion);//总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(data);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;
    }

    public Integer deleteMCQuestionById(Integer id) {
        return mcQuestionMapper.deleteByPrimaryKey(id);
    }

    public Integer updateMCQuestion(MCQuestion mcQuestion) {
        //如果是处于审核不通过状态，状态码为2，则把更新过后的状态码调整为0，未审核状态
            mcQuestion.setStatus(0);
            mcQuestion.setUpdateTime(new Date());//设置最新的时间
            questionCheckMapper.updateStatusByQueIdAndType("mc",mcQuestion.getId());

        return mcQuestionMapper.updateByPrimaryKeySelective(mcQuestion);
    }
    public MCQuestion getMCQuestionById(Integer id){
        MCQuestion mcQuestion=mcQuestionMapper.getMCQuestionById(id);
        String knowIds=mcQuestion.getKnowIds();

        String [] knowIds2=knowIds.split("@");
        List<Knows> listKnows=new ArrayList<>();//存放每个试题的知识点
        for (int j=0;j<knowIds2.length;j++){
            Knows knows=knowsMapper.getKnowsById(knowIds2[j]);
            if(knows!=null){
                listKnows.add(knows);
            }
        }
        mcQuestion.setKnows(listKnows);

        Integer chapterId=mcQuestion.getChapterId();
        Chapter chapter=chapterMapper.selectByPrimaryKey(chapterId);
        mcQuestion.setChapter(chapter);
        return mcQuestion;
    }
}
