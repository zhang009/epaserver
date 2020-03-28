package com.zzti.epa.controller.baseinfo;

import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.model.School;
import com.zzti.epa.service.baseinfo.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @ClassName ClassController
 * @Description 班级管理接口，包括学院、专业、班级管理
 * @Author Administrator
 * @Date 2020/3/28 15:56
 **/
@RestController
@RequestMapping("/baseinfo/school")
public class ClassController {

    @Autowired
    SchoolService schoolService;
    @GetMapping("/")
    public RespPageBean getSchoolByPage(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10")
            Integer size,  String keyword){
       // System.out.println("getSchoolByPage:"+"page:"+page+"size"+size+"keyword:"+keyword);
        return schoolService.getSchoolByPage(page,size,keyword);
    }

    @PostMapping("/")
    public RespBean addSchool(@RequestBody School school){
        if(schoolService.addSchool(school)==1){
            return RespBean.ok("添加成功！");
        }
        return RespBean.ok("添加成功！");
    }
    @PutMapping("/")
    public RespBean updateSchool(@RequestBody School school){
        if(schoolService.updateSchool(school)==1){
            return RespBean.ok("更新成功！");
        }
        return RespBean.error("更新失败！");
    }
    @DeleteMapping("/{id}")
    public RespBean deleteSchoolBySid(@PathVariable Integer id){
        if(schoolService.deleteSchoolBySid(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }


}
