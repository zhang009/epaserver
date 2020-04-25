package com.zzti.epa.mapper.paper;

import com.zzti.epa.model.TestPaper;
import com.zzti.epa.model.analysis.ListOfTestPaper;

import java.util.List;

public interface TestPaperMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TestPaper record);

    int insertSelective(TestPaper record);

    TestPaper selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TestPaper record);

    int updateByPrimaryKey(TestPaper record);

    //write by writer start
    List<ListOfTestPaper> select_ListOfTestPaper();
    //write by writer end


}