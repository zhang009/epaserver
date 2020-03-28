package com.zzti.epa.service.baseinfo;


import com.zzti.epa.mapper.DepartmentMapper;
import com.zzti.epa.model.Department;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName DepartmentService
 * @Description TODO
 * @Author Administrator
 * @Date 2020/3/10 11:12
 **/
@Service
public class DepartmentService {
    @Autowired
    DepartmentMapper departmentMapper;

    public List<Department> getAllDepartments() {

        return departmentMapper.getAllDepartmentsByParentId(-1);//递归查询
    }
    public List<Department> getAllDepartments2(){
        return departmentMapper.getAllDepartments2();
    }

    public void addDep(Department dep) {
        dep.setEnabled(true);
        System.out.println("adddep:"+dep.toString());
        departmentMapper.addDep(dep);
    }

    public void deleteDepById(Department dep) {
         departmentMapper.deleteDepById(dep);
    }

    public List<Department> getAllDepartmentsWithOutChildren() {
        return departmentMapper.getAllDepartmentsWithOutChildren();
    }

    //获取部门中二级部门中的名字
    public List<String> getAllDepartmentWithName() {
        return departmentMapper.getAllDepartmentWithName();
    }
}
