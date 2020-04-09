package com.zzti.epa.controller.question;

import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.TFQuestion;
import com.zzti.epa.service.question.TFQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
            return RespBean.ok("添加成功！");
        }
        return RespBean.ok("添加成功！");
    }
}
