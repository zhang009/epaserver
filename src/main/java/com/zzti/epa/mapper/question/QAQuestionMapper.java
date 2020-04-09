package com.zzti.epa.mapper.question;

import com.zzti.epa.model.QAQuestion;

public interface QAQuestionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(QAQuestion record);

    int insertSelective(QAQuestion record);

    QAQuestion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(QAQuestion record);

    int updateByPrimaryKey(QAQuestion record);
}