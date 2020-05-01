package com.zzti.epa.controller.testpaper;

import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.service.testpaper.PaperCheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @ClassName TestPaperCheckController
 * @Description 试卷审核
 * @Author Administrator
 * @Date 2020-04-30 9:47
 **/
@RestController
@RequestMapping("/pap/check")
public class TestPaperCheckController {
    @Autowired
    PaperCheckService paperCheckService;
    @GetMapping("/receive")
    public RespPageBean getReceiveCheck(@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "10")
            Integer size){
        return paperCheckService.getReceiveCheck(page,size);
    }
    @GetMapping("/submit")
    public RespPageBean getSubmitCheck(@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "10")
            Integer size){
        return paperCheckService.getSubmitCheck(page,size);
    }
    @PostMapping("/refuse")
    public RespBean refuseQuestionCheck(@RequestParam("id")Integer id, @RequestParam("reason")String refuseReason){
        if(paperCheckService.refuseTestPaperCheck(id,refuseReason)==1){
            return RespBean.ok("保存成功！");
        }
        return RespBean.error("保存失败！");

    }
    //刪除审核记录
    @DeleteMapping("/{id}")
    public RespBean deletePaperCheckById(@PathVariable Integer id){
        if(paperCheckService.deletePaperCheckById(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }

}
