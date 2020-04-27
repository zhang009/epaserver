package com.zzti.epa.service.analysis;

import com.zzti.epa.mapper.paper.TestPaperMapper;
import com.zzti.epa.model.analysis.ListOfTestPaper;
import com.zzti.epa.model.analysis.ListOfTestPaperForWeb;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Service
public class Analysis_TestPaperService {

    @Autowired
    TestPaperMapper testPaperMapper;

    public List<ListOfTestPaperForWeb> getListOfTestPaper(){
        List<ListOfTestPaper> list = testPaperMapper.select_ListOfTestPaper();
        List<ListOfTestPaperForWeb> listOfTestPaperForWebs= new ArrayList<ListOfTestPaperForWeb>();
        ListOfTestPaperForWeb listOfTestPaperForWeb=new ListOfTestPaperForWeb();
        for(int i=0;i<list.size();i++){
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            String createTime = formatter.format(list.get(i).getCreateTime());
            //将数据放到List<ListOfTestPaperForWeb>中，返回给前端
            listOfTestPaperForWeb.setId(list.get(i).getId());
            listOfTestPaperForWeb.setName(list.get(i).getName());
            listOfTestPaperForWeb.setTeacher(list.get(i).getTeacher());
            listOfTestPaperForWeb.setCreateTime(createTime);
            listOfTestPaperForWebs.add(listOfTestPaperForWeb);
        }
        return  listOfTestPaperForWebs;
    }
}
