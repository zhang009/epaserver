package com.zzti.epa.controller.baseinfo;

import com.zzti.epa.model.Class;
import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.service.baseinfo.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @ClassName ClassController
 * @Description 班级管理接口
 * @Author Administrator
 * @Date 2020-03-29 14:30
 **/
@RestController
@RequestMapping("/baseinfo/class")
public class ClassController {
    @Autowired
    ClassService classService;
    @GetMapping("/all")
    public List<Class> getClassByMid(@RequestParam(value = "majorId") Integer majorId){
        System.out.println("schoolId:"+majorId);
        return classService.getClassByMid(majorId);
    }

    @GetMapping("/")
    public RespPageBean getClassByPage(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10")
            Integer size, String keyword){
        return classService.getClassByPage(page,size,keyword);
    }
    @PostMapping("/")
    public RespBean addClass(@RequestBody Class clazz){
        if(classService.addClass(clazz)==1){
            return RespBean.ok("添加成功！");
        }
        return RespBean.ok("添加成功！");
    }
    @PutMapping("/")
    public RespBean updateClass(@RequestBody Class clazz){
        if(classService.updateClass(clazz)==1){
            return RespBean.ok("更新成功！");
        }
        return RespBean.error("更新失败！");
    }
    @DeleteMapping("/{id}")
    public RespBean deleteClassByCid(@PathVariable Integer id){
        if(classService.deleteClassByCid(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }

}
