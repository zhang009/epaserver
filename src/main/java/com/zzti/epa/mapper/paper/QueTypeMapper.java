package com.zzti.epa.mapper.paper;

import com.zzti.epa.model.QueType;

public interface QueTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(QueType record);

    int insertSelective(QueType record);

    QueType selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(QueType record);

    int updateByPrimaryKey(QueType record);
}