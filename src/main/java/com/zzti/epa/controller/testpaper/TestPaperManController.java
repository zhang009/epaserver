package com.zzti.epa.controller.testpaper;

import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.model.Teacher;
import com.zzti.epa.model.TestPaper;
import com.zzti.epa.service.testpaper.TestPaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @ClassName TestPaperManController
 * @Description 试卷库管理接口
 * @Author Administrator
 * @Date 2020-04-28 13:24
 **/
@RestController
@RequestMapping("/pap/testPaper")
public class TestPaperManController {
    @Autowired
    TestPaperService testPaperService;

    @GetMapping("/")
    public RespPageBean getTestPaperByPage(@RequestParam("page")Integer page,
                                           @RequestParam("size") Integer size,
                                           TestPaper testPaper){
        System.out.println(testPaper.toString());
        return testPaperService.getTestPaperByPage(page,size,testPaper);
    }
    @GetMapping("/getAllTestPaperById")
    public RespBean getAllTestPaperById(@RequestParam("id") Integer id){
        System.out.println(id);
        return testPaperService.getAllTestPaperById(id);
    }

    //获取组卷人信息（非试卷模板）
    @GetMapping("/getPostTeachers")
    public List<Teacher> getPostTeachers(){
        return testPaperService.getPostTeachers();
    }

    //获取组卷人信息（包括所有试卷的组卷人）
    @GetMapping("/getAllPostTeachers")
    public List<Teacher> getAllCreateTeachers(){
        return testPaperService.getAllCreateTeachers();
    }
    @DeleteMapping("/{id}")
    public RespBean deleteTestPaperById(@PathVariable Integer id){
        if(testPaperService.deleteTestPaperById(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }


}
