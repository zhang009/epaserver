package com.zzti.epa.controller.testpaper;

import com.deepoove.poi.config.Configure;
import com.deepoove.poi.config.ConfigureBuilder;
import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.TestPaper;
import com.zzti.epa.model.pojo.TempTestPaper;
import com.zzti.epa.service.testpaper.TestPaperService;
import com.zzti.epa.utils.DocUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName TestPaperController
 * @Description 试卷操作接口
 * @Author Administrator
 * @Date 2020-04-21 17:14
 **/
@RestController
@RequestMapping("/pap/create")
public class TestPaperController {

    @Autowired
    TestPaperService testPaperService;
    @RequestMapping("/getDoc")
    public ResponseEntity<byte[]> getDoc(HttpServletRequest request, HttpServletResponse response,@RequestBody TempTestPaper tempTestPaper) throws IOException {
        Map<String,String> dataMap = new HashMap<String,String>();
        dataMap.put("title", "poi-tl Word模板引擎");
        System.out.println(tempTestPaper.toString());
       // NumbericRenderData numbericRenderData=new NumbericRenderData(NumbericRenderData.FMT_UPPER_LETTER);
        String newWordName = "信息.doc";
        ConfigureBuilder builder = Configure.newBuilder();
        builder.setElMode(Configure.ELMode.SPEL_MODE);
        TempTestPaper testPaper=testPaperService.handleTempTestPaper(tempTestPaper);

        //调用打印word的函数
        return DocUtil.download(request,response,newWordName, testPaper);
    }
    @RequestMapping("/add")
    public RespBean addTestPaper(TestPaper testPaper){
        System.out.println(testPaper.toString());


         if(testPaperService.addTestPaper(testPaper)==1){
             return RespBean.ok("提交成功！");
         }
        return RespBean.error("提交失败");
    }

}
