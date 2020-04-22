package com.zzti.epa.mapper.paper;

import com.zzti.epa.model.QuestionScore;

public interface QuestionScoreMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(QuestionScore record);

    int insertSelective(QuestionScore record);

    QuestionScore selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(QuestionScore record);

    int updateByPrimaryKey(QuestionScore record);

    Integer addQueScoreList();
}