package com.zzti.epa.service.question;

import com.zzti.epa.config.IAuthenticationFacade;
import com.zzti.epa.mapper.baseinfo.ChapterMapper;
import com.zzti.epa.mapper.baseinfo.KnowsMapper;
import com.zzti.epa.mapper.question.QAQuestionMapper;
import com.zzti.epa.mapper.question.QuestionCheckMapper;
import com.zzti.epa.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
    KnowsMapper knowsMapper;
    @Autowired
    ChapterMapper chapterMapper;
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
        questionCheck.setPostTime(new Date());
        return  questionCheckMapper.insertSelective(questionCheck);
    }

    public RespPageBean getQAQuestionByPage(Integer page, Integer size, QAQuestion qaQuestion) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }

        List<QAQuestion> data=qaQuestionMapper.getQAQuestionByPage(page,size,qaQuestion);
        for (int i=0;i<data.size();i++){//遍历查询知识点,把“|”分割的知识点id查询出来赋值到List<Knows>数组中
            QAQuestion qaQuestion1=data.get(i);
            String knowIds=qaQuestion1.getKnowIds();
            String [] knowIds2=knowIds.split("@");
            List<Knows> listKnows=new ArrayList<>();//存放每个试题的知识点
            for (int j=0;j<knowIds2.length;j++){
                Knows knows=knowsMapper.getKnowsById(knowIds2[j]);
                if(knows!=null){
                    listKnows.add(knows);
                }
            }
            qaQuestion1.setKnows(listKnows);
        }


        Long total=qaQuestionMapper.getTotal(qaQuestion);//总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(data);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;
    }

    public Integer deleteQAQuestionById(Integer id) {
        return qaQuestionMapper.deleteByPrimaryKey(id);
    }

    public Integer updateQAQuestion(QAQuestion qaQuestion) {
        if(qaQuestion.getStatus()==2){//如果是处于审核不通过状态，状态码为2，则把更新过后的状态码调整为0，未审核状态
            qaQuestion.setStatus(0);
            questionCheckMapper.updateStatusByQueIdAndType("qa",qaQuestion.getId());
        }
        return qaQuestionMapper.updateByPrimaryKey(qaQuestion);
    }
    public QAQuestion getQAQuestionById(Integer id){//带有章节和知识点信息的单选试题
        QAQuestion qaQuestion=qaQuestionMapper.getQAQuestionById(id);
        String knowIds=qaQuestion.getKnowIds();

        String [] knowIds2=knowIds.split("@");
        List<Knows> listKnows=new ArrayList<>();//存放每个试题的知识点
        for (int j=0;j<knowIds2.length;j++){
            Knows knows=knowsMapper.getKnowsById(knowIds2[j]);
            if(knows!=null){
                listKnows.add(knows);
            }
        }
        qaQuestion.setKnows(listKnows);

        Integer chapterId=qaQuestion.getChapterId();
        Chapter chapter=chapterMapper.selectByPrimaryKey(chapterId);
        qaQuestion.setChapter(chapter);
        return qaQuestion;

    }
}
