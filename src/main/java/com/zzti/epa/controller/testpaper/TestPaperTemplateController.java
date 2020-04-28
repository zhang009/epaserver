package com.zzti.epa.controller.testpaper;

import com.zzti.epa.model.*;
import com.zzti.epa.model.pojo.TempTestPaper2;
import com.zzti.epa.service.TeacherService;
import com.zzti.epa.service.baseinfo.QueTypeService;
import com.zzti.epa.service.testpaper.TestPaperTemplateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @ClassName TestPaperTemplateController
 * @Description 试卷模板管理接口
 * @Author zhangyifang
 * @Date 2020-04-25 21:39
 **/
@RestController
@RequestMapping("/pap/template")
public class TestPaperTemplateController {

    @Autowired
    TestPaperTemplateService testPaperTemplateService;
    @Autowired
    TeacherService teacherService;
    @Autowired
    QueTypeService queTypeService;

    @GetMapping("/")
    public RespPageBean getTestPaperTemplateByPage(@RequestParam("page")Integer page,
                                           @RequestParam("size") Integer size,
                                           TestPaper testPaper){
        System.out.println(testPaper.toString());
        return testPaperTemplateService.getTestPaperTemplateByPage(page,size,testPaper);
    }
    @GetMapping("/getTeacher")
    public List<Teacher> getTemplatePostTeacher(){
        return teacherService.getTemplatePostTeacher();
    }
    @GetMapping("/getQueTypes")
    public List<QueType> getQueTypes(){

        return queTypeService.getQueTypes();
    }
    @PostMapping("/addQueType")
    public RespBean addQueType( QueType queType){//添加题型

        //System.out.println(queType.toString());
        int result=queTypeService.addQueType(queType);
        if(result==1){
            return RespBean.ok("添加成功");
        }else if(result==2){
            return RespBean.error("题型已存在");
        }
        return RespBean.error("添加失败");
    }

    @PostMapping("/addTemplate")
    public RespBean addTestPaperTemplate(@RequestBody TempTestPaper2 tempTestPaper2){//添加题型

        System.out.println(tempTestPaper2.toString());

        if(testPaperTemplateService.addPaperTemplate(tempTestPaper2)){
            return RespBean.ok("添加成功");
        }
        return RespBean.error("添加失败");
    }
    @PutMapping("/updateTemplate")
    public RespBean updateTestTemplate(@RequestBody TempTestPaper2 tempTestPaper2){//添加题型


        if(testPaperTemplateService.updatePaperTemplate(tempTestPaper2)){
            return RespBean.ok("更新成功");
        }
        return RespBean.error("更新失败");
    }
    @DeleteMapping("/{id}")
    public RespBean deleteTestPaperTemplateById(@PathVariable Integer id){
        if(testPaperTemplateService.deleteTestPaperTemplateById(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }
}
