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

    //获取专业下的班级
    @GetMapping("/all")
    public List<Class> getClassByMid(@RequestParam(value = "majorId") Integer majorId){
        System.out.println("majorId:"+majorId);
        return classService.getClassByMid(majorId);
    }
    //根据专业id数组，获取专业下的班级
    @GetMapping("/getClassByMids")
    public List<Class> getClassByMids(@RequestParam(value = "majorIds") Integer[] majorIds){
        System.out.println("majorIds:"+majorIds);
        return classService.getClassByMids(majorIds);
    }
    //获取所有的班级
    @GetMapping("/all2")
    public List<Class> getAllClass(){

        return classService.getAllClass();
    }
    @GetMapping("/searchClassByName")
    public List<Class> getClassByName(@RequestParam(value = "name")String name){

        return classService.getClassByName(name);
    }


    //根据条件获取班级（学院，专业）
    @GetMapping("/")
    public RespPageBean getClassByPage(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10")
            Integer size, String keyword){
        return classService.getClassByPage(page,size,keyword);
    }
    @GetMapping("/all3")
    public RespPageBean getClassBySchoolIdAndMajorId(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10")
            Integer size, Class clazz){
        return classService.getClassBySchoolIdAndMajorId(page,size,clazz);
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
