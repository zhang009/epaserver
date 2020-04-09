package com.zzti.epa.controller.question;

import com.zzti.epa.model.MCQuestion;
import com.zzti.epa.model.RespBean;
import com.zzti.epa.service.question.MCQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

}
