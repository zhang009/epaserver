package com.zzti.epa.mapper.grade;

import com.zzti.epa.model.QuestionGrade;

public interface QuestionGradeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(QuestionGrade record);

    int insertSelective(QuestionGrade record);

    QuestionGrade selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(QuestionGrade record);

    int updateByPrimaryKey(QuestionGrade record);
}