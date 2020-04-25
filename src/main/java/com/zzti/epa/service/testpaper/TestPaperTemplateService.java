package com.zzti.epa.service.testpaper;

import com.zzti.epa.mapper.paper.TestPaperMapper;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.model.TestPaper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName TestPaperTemplateService
 * @Description 试卷模板管理
 * @Author Administrator
 * @Date 2020-04-25 21:44
 **/
@Service
public class TestPaperTemplateService {

    @Autowired
    TestPaperMapper testPaperMapper;
    public RespPageBean getTestPaperByPage(Integer page, Integer size, TestPaper testPaper) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<TestPaper> data=testPaperMapper.getTestPaperByPage(page,size,testPaper);


        Long total=testPaperMapper.getTotal(testPaper);//总记录数

        RespPageBean bean = new RespPageBean();
        bean.setData(data);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;
    }
}
