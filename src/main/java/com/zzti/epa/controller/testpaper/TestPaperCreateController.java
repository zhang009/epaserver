package com.zzti.epa.controller.testpaper;

import com.deepoove.poi.config.Configure;
import com.deepoove.poi.config.ConfigureBuilder;
import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.TestPaper;
import com.zzti.epa.model.pojo.TempTestPaper;
import com.zzti.epa.model.pojo.TestPaperReg;
import com.zzti.epa.service.testpaper.TestPaperService;
import com.zzti.epa.utils.DocUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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
public class TestPaperCreateController {

    @Autowired
    TestPaperService testPaperService;
    @RequestMapping("/getDoc")//手工组卷导出试卷
    public ResponseEntity<byte[]> getDoc(HttpServletRequest request, HttpServletResponse response,
                                         @RequestBody TempTestPaper tempTestPaper) throws IOException {
        Map<String,String> dataMap = new HashMap<String,String>();
        dataMap.put("title", "poi-tl Word模板引擎");
        System.out.println("=============导出试卷================="+tempTestPaper.toString());
       // NumbericRenderData numbericRenderData=new NumbericRenderData(NumbericRenderData.FMT_UPPER_LETTER);

        String newWordName = "信息.doc";
        ConfigureBuilder builder = Configure.newBuilder();//这里配置使用el表达式
        builder.setElMode(Configure.ELMode.SPEL_MODE);
        TempTestPaper testPaper=testPaperService.handleTempTestPaper(tempTestPaper);//处理前端返回的试卷tempTestPaper对象

        //调用打印word的函数
        return DocUtil.download(request,response,newWordName, testPaper);
    }
    @RequestMapping("/getDoc2")
    public ResponseEntity<byte[]> getDoc2(HttpServletRequest request, HttpServletResponse response,@RequestBody TempTestPaper tempTestPaper) throws IOException {
        Map<String,String> dataMap = new HashMap<String,String>();
        dataMap.put("title", "poi-tl Word模板引擎");
        System.out.println(tempTestPaper.toString());
       // NumbericRenderData numbericRenderData=new NumbericRenderData(NumbericRenderData.FMT_UPPER_LETTER);
        String newWordName = "信息.doc";
        ConfigureBuilder builder = Configure.newBuilder();
        builder.setElMode(Configure.ELMode.SPEL_MODE);
        TempTestPaper testPaper=testPaperService.handleTempTestPaper2(tempTestPaper);

        //调用打印word的函数
        return DocUtil.download2(request,response,newWordName, testPaper);
    }
    //手工选题组卷
    @RequestMapping("/handAdd")
    public RespBean addTestPaper(@RequestBody TestPaper testPaper){
        System.out.println(testPaper.toString());


         if(testPaperService.addTestPaper(testPaper)){
             return RespBean.ok("提交成功！");
         }
        return RespBean.error("提交失败");
    }

    //更新手工选题组卷
    @PutMapping("/handAddUpdate")
    public RespBean updateTestPaper(@RequestBody TestPaper testPaper){
        System.out.println(testPaper.toString());
        if(testPaperService.updateTestPaper(testPaper)){
            return RespBean.ok("更新成功！");
        }
        return RespBean.error("更新失败");
    }
    //自动选题组卷
    @RequestMapping("/autoAdd")
    public RespBean addTestPaper2(@RequestBody TestPaper testPaper){
        System.out.println(testPaper.toString());
         if(testPaperService.addTestPaper2(testPaper)){
             return RespBean.ok("提交成功！");
         }
        return RespBean.error("提交失败");
    }
    //自动选题组卷，参数为用例规约，返回试卷对象
    @RequestMapping("/autoGet")
    public TestPaper getTestPaperByAutoReg(@RequestBody TestPaperReg testPaperReg){
        System.out.println(testPaperReg.toString());


        return testPaperService.getTestPaperByAutoReg(testPaperReg);
    }

    @GetMapping("/getTypesNum")
    public TestPaper getQueTypeNum(@RequestParam("courseId") Integer courseId){//根据课程id获取题目数量，这里传回TestPaper对象只是为了方便传递数据
        return testPaperService.getQueTypeNums(courseId);
    }

}
