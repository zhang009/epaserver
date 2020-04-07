package com.zzti.epa.mapper.question;

import com.zzti.epa.model.FBQuestion;

public interface FBQuestionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FBQuestion record);

    int insertSelective(FBQuestion record);

    FBQuestion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FBQuestion record);

    int updateByPrimaryKey(FBQuestion record);
}