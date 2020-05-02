package com.zzti.epa.mapper.grade;

import com.zzti.epa.model.StudentGrade;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentGradeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(StudentGrade record);

    int insertSelective(StudentGrade record);

    StudentGrade selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(StudentGrade record);

    int updateByPrimaryKey(StudentGrade record);

    //
    List<StudentGrade> getStudentGrades(@Param("page") Integer page,
                                        @Param("size") Integer size,
                                        @Param("studentGrade") StudentGrade studentGrade);

    Long getStudentGradesTotal(@Param("studentGrade")StudentGrade studentGrade);
}