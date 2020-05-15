package com.zzti.epa.mapper.question;

import com.zzti.epa.model.QAQuestion;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QAQuestionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(QAQuestion record);

    int insertSelective(QAQuestion record);

    QAQuestion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(QAQuestion record);

    int updateByPrimaryKey(QAQuestion record);

    List<QAQuestion> getQAQuestionByPage(@Param("page") Integer page,@Param("size") Integer size, @Param("qa") QAQuestion qaQuestion);

    Long getTotal(@Param("qa") QAQuestion qaQuestion);

    QAQuestion getQAQuestionById(@Param("id") Integer questionId);
    QAQuestion getQAQuestionById2(@Param("id") Integer questionId);

    List<QAQuestion> getQAQuestionByCourseId(@Param("id") Integer id);
}