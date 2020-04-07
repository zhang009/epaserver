package com.zzti.epa.mapper.question;

import com.zzti.epa.model.MCQuestion;

public interface MCQuestionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MCQuestion record);

    int insertSelective(MCQuestion record);

    MCQuestion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MCQuestion record);

    int updateByPrimaryKey(MCQuestion record);
}