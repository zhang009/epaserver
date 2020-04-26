package com.zzti.epa.mapper.paper;

import com.zzti.epa.model.QueType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QueTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(QueType record);

    int insertSelective(QueType record);

    QueType selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(QueType record);

    int updateByPrimaryKey(QueType record);

    List<QueType> getQueTypes();

    List<QueType> isExistQue(@Param("name") String queTypeName);


}