package com.zzti.epa.mapper;


import com.zzti.epa.model.Department;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DepartmentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Department record);

    int insertSelective(Department record);

    Department selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Department record);

    int updateByPrimaryKey(Department record);

    //以下为自己新建方法

    List<Department> getAllDepartmentsByParentId(Integer pid);

    void addDep(@Param("dep") Department dep);

    void deleteDepById(@Param("dep")Department dep);

    List<Department> getAllDepartmentsWithOutChildren();

    List<String> getAllDepartmentWithName();

    List<Department> getAllDepartments2();
}