package com.zzti.epa.teacher;

import com.zzti.epa.model.*;
import com.zzti.epa.service.DepartmentService;
import com.zzti.epa.service.JobLevelService;
import com.zzti.epa.service.RoleService;
import com.zzti.epa.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @ClassName TeacherController
 * @Description 用户管理接口
 * @Author Administrator
 * @Date 2020/3/19 22:01
 **/
@RestController
@RequestMapping("/system/user")
public class TeacherController {
    @Autowired
    TeacherService teacherService;
    @Autowired
    JobLevelService jobLevelService;
    @Autowired
    DepartmentService departmentService;
    @Autowired
    RoleService roleService;
    /**
    * @Description:获取所有的教师用户
    * @Date: 2020/3/19  22:13
    * @Param page: 请求的第几页
     * @Param size: 每页有多少行数据
     * @Param teacher: 用来存储条件搜索的teacher值
    * @return: RespPageBean
    **/
    @GetMapping("/")
    public RespPageBean getTeacherByPage(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10")
            Integer size, Teacher teacher){/*这里teacher存储为条件搜索内容*/
        System.out.println("rid:"+teacher.getrId());
        System.out.println("name:"+teacher.getName());
        return teacherService.getTeacherByPage(page,size,teacher);
    }
    @GetMapping("/joblevel")
    public List<JobLevel> getAllJobLevels(){
        System.out.println("joblevel:");
        return jobLevelService.getAllJobLevels();
    }
    @GetMapping("/deps")
    public List<Department> getAllDepartments(){
        System.out.println("getAllDepartments:");
        return departmentService.getAllDepartments();
    }
    @GetMapping("/roles")
    public List<Role> getAllRoles(){
        System.out.println("getAllRoles:");
        return roleService.getAllRoles();
    }

    @DeleteMapping("/{id}")
    public RespBean deleteTeaByEid(@PathVariable Integer id){
        if(teacherService.deleteTeaByEid(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }

    //更新hr的角色
    @PutMapping("/role")
    public RespBean updateTeaRole(Integer tid,Integer[] rids){
        if(teacherService.updateTeaRole(tid,rids)){
            return RespBean.ok("更新成功！");
        }
        return RespBean.error("更新失败！");
    }
    @PutMapping("/")
    public RespBean updateTea(@RequestBody Teacher teacher){
        if(teacherService.updateTea(teacher)==1){
            return RespBean.ok("更新成功！");
        }
        return RespBean.error("更新失败！");
    }
    @PostMapping("/")
    public RespBean addTea(@RequestBody Teacher teacher){
        if(teacherService.addTea(teacher)==1){
            return RespBean.ok("添加成功！");
        }
        return RespBean.ok("添加成功！");
    }
}
