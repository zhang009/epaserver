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

    //    write by writer start
    //    write by writer start
    List<com.zzti.epa.model.analysis.StudentGrade> getStudentGradeOfListByTestPaperId(@Param("testPaperId")Integer testPaperId);
    //    write by writer end
    //    write by writer end
}