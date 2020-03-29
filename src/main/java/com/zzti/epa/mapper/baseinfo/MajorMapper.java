package com.zzti.epa.mapper.baseinfo;

import com.zzti.epa.model.Major;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MajorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Major record);

    int insertSelective(Major record);

    Major selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Major record);

    int updateByPrimaryKey(Major record);

    List<Major> getMajorByPage(@Param("page") Integer page,@Param("size") Integer size,@Param("keyword") String keyword);

    Long getTotal(@Param("keyword")String keyword);

    List<Major> getMajorBySid(@Param("schoolId") Integer schoolId);
}