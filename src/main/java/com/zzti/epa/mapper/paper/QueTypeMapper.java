package com.zzti.epa.mapper.paper;

import com.zzti.epa.model.QueType;
import com.zzti.epa.model.analysis.QuestionType;
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

    //write by writer start
    //write by writer start
    //根据name得到，QuestionType
    QuestionType getQuestionTypeByName(@Param("name") String queTypeName);
    //write by writer end
    //write by writer end

}