package com.zzti.epa.controller.question;

import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.SCQuestion;
import com.zzti.epa.service.question.SCQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ClassName SCQuestionController
 * @Description 单选题
 * @Author Administrator
 * @Date 2020-04-08 10:38
 **/
@RestController
@RequestMapping("/question/input")
public class SCQuestionController {
    @Autowired
    SCQuestionService scQuestionService;

    @PostMapping("/add")
    public RespBean AddSCQuestion(@RequestBody SCQuestion scQuestion){
        if(scQuestionService.AddSCQuestion(scQuestion)==1){
            return RespBean.ok("添加成功！");
        }
        return RespBean.ok("添加成功！");
    }


}
