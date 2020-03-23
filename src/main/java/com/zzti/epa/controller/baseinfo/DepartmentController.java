package com.zzti.epa.controller.baseinfo;


import com.zzti.epa.model.Department;
import com.zzti.epa.model.RespBean;
import com.zzti.epa.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @ClassName DepartmentController
 * @Description 部门控制接口
 * @Author Administrator
 * @Date 2020/3/10 11:10
 **/
@RestController
@RequestMapping("/baseinfo/department")
public class DepartmentController {

    @Autowired
    DepartmentService departmentService;
    /**
    * @Description:获取所有的部门
    * @Date: 2020/3/19  14:15
    * @return: java.util.List<com.zzti.epa.model.Department>
    **/
    @GetMapping("/")
    public List<Department> getAllDepartments(){
        return departmentService.getAllDepartments();
    }
    /**
    * @Description:添加部门
    * @Date: 2020/3/19  14:16
    * @Param dep: 传入部门的信息
    * @return: 添加成功时，返回提示和部门对象
    **/
    @PostMapping("/")
    public RespBean addDep(@RequestBody Department dep){
        departmentService.addDep(dep);
        if(dep.getResult()==1){
            return RespBean.ok("添加成功！",dep);
        }
        return RespBean.error("添加失败！");
    }
    /**
    * @Description:删除该部门
    * @Date: 2020/3/19  14:17
    * @Param id: 部门id
    * @return: 返回执行结果
    **/
    @DeleteMapping("/{id}")
    public RespBean deleteDepById(@PathVariable Integer id){
        Department dep=new Department();
        dep.setId(id);
        departmentService.deleteDepById(dep);
        if(dep.getResult()==-2){
            return RespBean.error("该部门下面有子部门，删除失败");
        }else if(dep.getResult()==-1){
            return RespBean.error("该部门下面有教师用户，删除失败");
        }else if(dep.getResult()==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除失败");
    }
}
