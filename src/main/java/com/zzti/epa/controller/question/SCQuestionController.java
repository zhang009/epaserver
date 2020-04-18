package com.zzti.epa.controller.question;

import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.model.SCQuestion;
import com.zzti.epa.service.question.SCQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @ClassName SCQuestionController
 * @Description 单选题
 * @Author Administrator
 * @Date 2020-04-08 10:38
 **/
@RestController
@RequestMapping("/question/scinput")
public class SCQuestionController {
    @Autowired
    SCQuestionService scQuestionService;

    @GetMapping("/")
    public RespPageBean getSCQuestionByPage(@RequestParam(defaultValue = "1")Integer page,@RequestParam(defaultValue = "10")
                                            Integer size,SCQuestion scQuestion){
        System.out.println(scQuestion.toString());
        return scQuestionService.getSCQuestionByPage(page,size,scQuestion);
    }
    @PostMapping("/add")
    public RespBean AddSCQuestion(@RequestBody SCQuestion scQuestion){
        if(scQuestionService.AddSCQuestion(scQuestion)==1){
            return RespBean.ok("添加成功！");
        }
        return RespBean.ok("添加成功！");
    }
    @DeleteMapping("/{id}")
    public RespBean deleteSCQuestionByCid(@PathVariable Integer id){
        if(scQuestionService.deleteSCQuestionByCid(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }
    @PutMapping("/update")
    public RespBean updateSCQuestion(@RequestBody SCQuestion scQuestion){
        if(scQuestionService.updateSCQuestion(scQuestion)==1){
            return RespBean.ok("更新成功！");
        }
        return RespBean.error("更新失败！");
    }
}
