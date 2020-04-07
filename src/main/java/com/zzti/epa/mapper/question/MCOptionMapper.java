package com.zzti.epa.mapper.question;

import com.zzti.epa.model.MCOption;

public interface MCOptionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MCOption record);

    int insertSelective(MCOption record);

    MCOption selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MCOption record);

    int updateByPrimaryKey(MCOption record);
}