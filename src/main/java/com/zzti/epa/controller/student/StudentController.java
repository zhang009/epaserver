package com.zzti.epa.controller.student;

import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.model.Student;
import com.zzti.epa.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @ClassName StudentController
 * @Description 学生管理接口
 * @Author Administrator
 * @Date 2020-04-01 20:54
 **/
@RestController
@RequestMapping("/baseinfo/stu")
public class StudentController {

    @Autowired
    StudentService studentService;
    @GetMapping("/")
    public RespPageBean getStudentByPage(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10")
            Integer size, Student student){/*这里teacher存储为条件搜索内容*/

        return studentService.getStudentByPage(page,size,student);
    }

    @DeleteMapping("/{id}")
    public RespBean deleteStuById(@PathVariable Integer id){
        if(studentService.deleteStuById(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }
    @PutMapping("/")
    public RespBean updateStu(@RequestBody Student student){
        if(studentService.updateStu(student)==1){
            return RespBean.ok("更新成功！");
        }
        return RespBean.error("更新失败！");
    }
    @PostMapping("/")
    public RespBean addStu(@RequestBody Student student){
        if(studentService.addStu(student)==1){
            return RespBean.ok("添加成功！");
        }
        return RespBean.ok("添加成功！");
    }
    @DeleteMapping("/")
    public RespBean deleteStuByIds(Integer [] ids){
        if(studentService.deleteStuByIds(ids)==ids.length){
            return RespBean.ok("删除成功!");
        }
        return RespBean.error("删除失败!");
    }
}
