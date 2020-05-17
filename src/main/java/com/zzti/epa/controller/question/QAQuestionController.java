package com.zzti.epa.controller.question;

import com.zzti.epa.model.QAQuestion;
import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.service.question.QAQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @ClassName QAQuestionController
 * @Description 简单题接口
 * @Author Administrator
 * @Date 2020-04-09 14:17
 **/
@RestController
@RequestMapping("/question/qainput")
public class QAQuestionController {
   @Autowired
   QAQuestionService qaQuestionService;

    @PostMapping("/add")
    public RespBean AddQAQuestion(@RequestBody QAQuestion qaQuestion){
        if(qaQuestionService.AddQAQuestion(qaQuestion)==1){
            return RespBean.ok("提交成功！");
        }
        return RespBean.error("提交失败！");
    }
    @GetMapping("/")
    public RespPageBean getQAQuestionByPage(@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "10")
            Integer size, QAQuestion qaQuestion){
        return qaQuestionService.getQAQuestionByPage(page,size,qaQuestion);
    }

    @DeleteMapping("/{id}")
    public RespBean deleteQAQuestionById(@PathVariable Integer id){
        if(qaQuestionService.deleteQAQuestionById(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }
    @PutMapping("/update")
    public RespBean updateQAQuestion(@RequestBody QAQuestion qaQuestion){
        if(qaQuestionService.updateQAQuestion(qaQuestion)==1){
            return RespBean.ok("更新成功！");
        }
        return RespBean.error("更新失败！");
    }

}
