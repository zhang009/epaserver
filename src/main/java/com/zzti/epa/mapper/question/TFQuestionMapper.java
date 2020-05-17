package com.zzti.epa.mapper.question;

import com.zzti.epa.model.TFQuestion;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TFQuestionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TFQuestion record);

    int insertSelective(TFQuestion record);

    TFQuestion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TFQuestion record);

    int updateByPrimaryKey(TFQuestion record);

    List<TFQuestion> getTFQuestionByPage(@Param("page") Integer page,@Param("size") Integer size,@Param("tf") TFQuestion tfQuestion);

    Long getTotal(@Param("tf") TFQuestion tfQuestion);

    TFQuestion getTFQuestionById(@Param("id")Integer questionId);
    TFQuestion getTFQuestionById2(@Param("id")Integer questionId);
    TFQuestion getTFQuestionById3(@Param("id")Integer questionId);

    List<TFQuestion> getTFQuestionByCourseId(@Param("id") Integer id);
}