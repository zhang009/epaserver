package com.zzti.epa.mapper.question;

import com.zzti.epa.model.QuestionCheck;

public interface QuestionCheckMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(QuestionCheck record);

    int insertSelective(QuestionCheck record);

    QuestionCheck selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(QuestionCheck record);

    int updateByPrimaryKey(QuestionCheck record);
}