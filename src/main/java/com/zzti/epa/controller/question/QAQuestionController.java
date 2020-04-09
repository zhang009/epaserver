package com.zzti.epa.controller.question;

import com.zzti.epa.model.QAQuestion;
import com.zzti.epa.model.RespBean;
import com.zzti.epa.service.question.QAQuestionService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
            return RespBean.ok("添加成功！");
        }
        return RespBean.ok("添加成功！");
    }

}
