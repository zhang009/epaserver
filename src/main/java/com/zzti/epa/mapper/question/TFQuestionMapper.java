package com.zzti.epa.mapper.question;

import com.zzti.epa.model.TFQuestion;

public interface TFQuestionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TFQuestion record);

    int insertSelective(TFQuestion record);

    TFQuestion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TFQuestion record);

    int updateByPrimaryKey(TFQuestion record);
}