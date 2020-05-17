package com.zzti.epa.controller.question;

import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.model.TFQuestion;
import com.zzti.epa.service.question.TFQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @ClassName TFQuestionController
 * @Description 判断接口
 * @Author Administrator
 * @Date 2020-04-09 15:06
 **/
@RestController
@RequestMapping("/question/tfinput")
public class TFQuestionController {
    @Autowired
    TFQuestionService tfQuestionService;
    @PostMapping("/add")
    public RespBean AddTFQuestion(@RequestBody TFQuestion tfQuestion){
        if(tfQuestionService.AddTFQuestion(tfQuestion)==1){
            return RespBean.ok("提交成功！");
        }
        return RespBean.error("提交失败！");
    }
    @GetMapping("/")
    public RespPageBean getTFQuestionByPage(@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "10")
            Integer size, TFQuestion tfQuestion){
        return tfQuestionService.getTFQuestionByPage(page,size,tfQuestion);
    }

    @DeleteMapping("/{id}")
    public RespBean deleteTFQuestionById(@PathVariable Integer id){
        if(tfQuestionService.deleteTFQuestionById(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除失败！");
    }
    @PutMapping("/update")
    public RespBean updateTFQuestion(@RequestBody TFQuestion tfQuestion){
        if(tfQuestionService.updateTFQuestion(tfQuestion)==1){
            return RespBean.ok("更新成功！");
        }
        return RespBean.error("更新失败！");
    }

}
