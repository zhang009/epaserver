package com.zzti.epa.mapper.baseinfo;

import com.zzti.epa.model.Knows;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface KnowsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Knows record);

    int insertSelective(Knows record);

    Knows selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Knows record);

    int updateByPrimaryKey(Knows record);

    List<Knows> getKnowsByCourseId(@Param("courseId") Integer courseId);

    Knows getKnowsById(@Param("id")String id);

}