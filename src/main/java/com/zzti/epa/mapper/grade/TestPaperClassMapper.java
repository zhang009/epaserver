package com.zzti.epa.mapper.grade;

import com.zzti.epa.model.Class;
import com.zzti.epa.model.TestPaperClass;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TestPaperClassMapper {
    int insert(TestPaperClass record);

    int insertSelective(TestPaperClass record);

    List<Class> getAllTestPaperClass(@Param("testPaperId") Integer testPaperId);
}