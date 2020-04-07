package com.zzti.epa.mapper.question;

import com.zzti.epa.model.SCQuestion;

public interface SCQuestionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SCQuestion record);

    int insertSelective(SCQuestion record);

    SCQuestion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SCQuestion record);

    int updateByPrimaryKey(SCQuestion record);
}