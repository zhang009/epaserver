package com.zzti.epa.mapper.question;

import com.zzti.epa.model.FBQuestion;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FBQuestionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FBQuestion record);

    int insertSelective(FBQuestion record);

    FBQuestion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FBQuestion record);

    int updateByPrimaryKey(FBQuestion record);

    List<FBQuestion> getFBQuestionByPage(@Param("page") Integer page, @Param("size") Integer size,@Param("fb") FBQuestion fbQuestion);

    Long getTotal(@Param("fb") FBQuestion fbQuestion);

    FBQuestion getFBQuestionById(@Param("id") Integer questionId);
}