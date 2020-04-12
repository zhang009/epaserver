package com.zzti.epa.mapper.question;

import com.zzti.epa.model.SCQuestion;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SCQuestionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SCQuestion record);

    int insertSelective(SCQuestion record);

    SCQuestion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SCQuestion record);

    int updateByPrimaryKey(SCQuestion record);

    List<SCQuestion> getSCQuestionByPage(@Param("page")Integer page,@Param("size") Integer size, @Param("sc")SCQuestion scQuestion);

    Long getTotal(@Param("sc")SCQuestion scQuestion);

    SCQuestion getSCQuestionById(@Param("id") Integer questionId);
}