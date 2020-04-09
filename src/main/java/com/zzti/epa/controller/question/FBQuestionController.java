package com.zzti.epa.controller.question;

import com.zzti.epa.model.FBQuestion;
import com.zzti.epa.model.RespBean;
import com.zzti.epa.service.question.FBQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ClassName FBQuestionController
 * @Description TODO
 * @Author Administrator
 * @Date 2020-04-09 13:44
 **/
@RestController
@RequestMapping("/question/fbinput")
public class FBQuestionController {
    @Autowired
    FBQuestionService fbQuestionService;

    @PostMapping("/add")
    public RespBean AddFBQuestion(@RequestBody FBQuestion fbQuestion){
        if(fbQuestionService.AddFBQuestion(fbQuestion)==1){
            return RespBean.ok("添加成功！");
        }
        return RespBean.ok("添加成功！");
    }
}
