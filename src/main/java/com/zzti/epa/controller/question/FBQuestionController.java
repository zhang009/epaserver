package com.zzti.epa.controller.question;

import com.zzti.epa.model.FBQuestion;
import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.service.question.FBQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
            return RespBean.ok("提交成功！");
        }
        return RespBean.error("提交失败！");
    }

    @GetMapping("/")
    public RespPageBean getFBQuestionByPage(@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "10")
            Integer size, FBQuestion fbQuestion){
        return fbQuestionService.getFBQuestionByPage(page,size,fbQuestion);
    }

    @DeleteMapping("/{id}")
    public RespBean deleteFBQuestionById(@PathVariable Integer id){
        if(fbQuestionService.deleteFBQuestionById(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }
    @PutMapping("/update")
    public RespBean updateFBQuestion(@RequestBody FBQuestion fbQuestion){
        if(fbQuestionService.updateFBQuestion(fbQuestion)==1){
            return RespBean.ok("更新成功！");
        }
        return RespBean.error("更新失败！");
    }
}
