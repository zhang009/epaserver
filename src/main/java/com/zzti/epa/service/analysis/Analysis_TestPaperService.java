package com.zzti.epa.service.analysis;

import com.zzti.epa.mapper.paper.TestPaperMapper;
import com.zzti.epa.model.analysis.ListOfTestPaper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Analysis_TestPaperService {

    @Autowired
    TestPaperMapper testPaperMapper;

    public List<ListOfTestPaper> getListOfTestPaper(){
        System.out.println(testPaperMapper.select_ListOfTestPaper());

        return  testPaperMapper.select_ListOfTestPaper();
    }
}
