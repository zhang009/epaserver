package com.zzti.epa.mapper.grade;

import com.zzti.epa.model.QuestionGrade;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QuestionGradeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(QuestionGrade record);

    int insertSelective(QuestionGrade record);

    QuestionGrade selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(QuestionGrade record);

    int updateByPrimaryKey(QuestionGrade record);

    Integer addQuestonGradeList(@Param("list") List<QuestionGrade> questionGrades);

    List<QuestionGrade> getQuestionGradeByStudentGradeId(@Param("studentGradeId")Integer studentGradeId);
}