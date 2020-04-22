package com.zzti.epa.mapper.paper;

import com.zzti.epa.model.Semester;

import java.util.List;

public interface SemesterMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Semester record);

    int insertSelective(Semester record);

    Semester selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Semester record);

    int updateByPrimaryKey(Semester record);

    List<Semester> getAllSemesters();

}