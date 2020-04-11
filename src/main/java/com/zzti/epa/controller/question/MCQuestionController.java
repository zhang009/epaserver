package com.zzti.epa.controller.question;

import com.zzti.epa.model.MCQuestion;
import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.service.question.MCQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @ClassName MCQuestionController
 * @Description TODO
 * @Author Administrator
 * @Date 2020-04-09 8:23
 **/
@RestController
@RequestMapping("/question/mcinput")
public class MCQuestionController {
    @Autowired
    MCQuestionService mcQuestionService;
    @PostMapping("/add")
    public RespBean AddMCQuestion(@RequestBody MCQuestion mcQuestion){
        System.out.println("mcQuestion"+mcQuestion.toString());
        if(mcQuestionService.AddMCQuestion(mcQuestion)==1){
            return RespBean.ok("添加成功！");
        }
        return RespBean.ok("添加成功！");
    }

    @GetMapping("/")
    public RespPageBean getMCQuestionByPage(@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "10")
            Integer size, MCQuestion mcQuestion){
        return mcQuestionService.getMCQuestionByPage(page,size,mcQuestion);
    }

    @DeleteMapping("/{id}")
    public RespBean deleteMCQuestionById(@PathVariable Integer id){
        if(mcQuestionService.deleteMCQuestionById(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }
    @PutMapping("/update")
    public RespBean updateMCQuestion(@RequestBody MCQuestion mcQuestion){
        if(mcQuestionService.updateMCQuestion(mcQuestion)==1){
            return RespBean.ok("更新成功！");
        }
        return RespBean.error("更新失败！");
    }

}
