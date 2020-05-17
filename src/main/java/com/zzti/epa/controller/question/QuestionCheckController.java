package com.zzti.epa.controller.question;

import com.zzti.epa.model.QuestionCheck;
import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.service.question.QuestionCheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @ClassName QuestionCheckController
 * @Description TODO
 * @Author Administrator
 * @Date 2020-04-12 16:41
 **/
@RestController
@RequestMapping("/que/check")
public class QuestionCheckController {
    @Autowired
    QuestionCheckService questionCheckService;

    /**
    * @Description: 获取收到的审核记录
    * @Date: 2020-04-12  16:46
    * @Param page:
     * @Param size:
    * @return: com.zzti.epa.model.RespPageBean
    **/
    @GetMapping("/receive")
    public RespPageBean getReceiveCheck(@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "10")
            Integer size){
        System.out.println("page:"+page+"size:"+size);
        return questionCheckService.getReceiveCheck(page,size);
    }
    //
    @GetMapping("/submit")
    public RespPageBean getSubmitCheck(@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "10")
            Integer size){
        return questionCheckService.getSubmitCheck(page,size);
    }
    //审核
    @PostMapping("/")
    public RespBean updateQuestionCheck(@RequestBody QuestionCheck questionCheck){
        if(questionCheckService.updateQuestionCheck(questionCheck)==1){
            return RespBean.ok("保存成功！");
        }
        return RespBean.error("保存失败！");

    }

    @DeleteMapping("/{id}")
    public RespBean deleteQuestionCheckById(@PathVariable Integer id){
        if(questionCheckService.deleteQuestionCheckById(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }




}
