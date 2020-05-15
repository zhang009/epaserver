package com.zzti.epa.mapper.question;

import com.zzti.epa.model.MCQuestion;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MCQuestionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MCQuestion record);

    int insertSelective(MCQuestion record);

    MCQuestion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MCQuestion record);

    int updateByPrimaryKey(MCQuestion record);


    List<MCQuestion> getMCQuestionByPage(@Param("page") Integer page, @Param("size") Integer size, @Param("mc") MCQuestion mcQuestion);

    Long getTotal(@Param("mc")MCQuestion mcQuestion);

    MCQuestion getMCQuestionById(@Param("id") Integer questionId);
    MCQuestion getMCQuestionById2(@Param("id") Integer questionId);

    List<MCQuestion> getMCQuestionByCourseId(@Param("id") Integer id);


}