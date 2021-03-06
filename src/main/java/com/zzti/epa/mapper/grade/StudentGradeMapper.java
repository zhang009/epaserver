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
    List<com.zzti.epa.model.analysis.StudentGrade> getStudentGradeOfListByClassIdAndTestpaperId(@Param("classId")Integer classId,@Param("testpaperId")Integer testpaperId);
    //    write by writer end
    //    write by writer end

    //
    List<StudentGrade> getStudentGrades(@Param("page") Integer page,
                                        @Param("size") Integer size,
                                        @Param("studentGrade") StudentGrade studentGrade);

    Long getStudentGradesTotal(@Param("studentGrade")StudentGrade studentGrade);

    List<StudentGrade> allOnlyStudentGrades(@Param("studentGrade")StudentGrade studentGrade);



    int deleteGradeByIds(@Param("ids")Integer[] ids);//批量删除

    //根据试卷id和学生学号查询学生的成绩
    Float selectGradeByStudentNumAndTestPaperId(@Param("testPaperId") Integer id, @Param("studentNum") String studentNum);
    //根据学号和试卷号获取该学生的成绩信息
    StudentGrade getStudentGradeByStudentNumAndTestPaperId(@Param("studentNum")String studentNum, @Param("testPaperId") Integer testPaperId);
}