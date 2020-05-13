package com.zzti.epa.mapper.baseinfo;

import com.zzti.epa.model.Grade;

import java.util.List;

/**
* @Description:年级
* @Date: 2020-05-13  22:06
* @Param null:
* @return: null
**/
public interface GradeMapper {
    int insert(Grade record);

    int insertSelective(Grade record);

    //获取所有年级
    List<Grade> getAllGrade();
}