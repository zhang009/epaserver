package com.zzti.epa.mapper;

import com.zzti.epa.model.Student;
import com.zzti.epa.model.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

    List<Teacher> getStudentByPage(@Param("page") Integer page,@Param("size") Integer size,@Param("stu") Student student);

    Long getTotal(@Param("stu") Student student);

    Integer deleteStuByIds(@Param("ids") Integer[] ids);

    Integer addStus(@Param("list")List<Student> list);

    List<Student> getAllStudentByClassId(Integer classId);

    Student loadUserByUsername(String username);

    int modifyPass(Integer sno,String rePassword);

    Integer isExistStudentNum(String studentNum);
}