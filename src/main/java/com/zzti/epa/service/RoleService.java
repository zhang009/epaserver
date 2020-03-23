package com.zzti.epa.service;


import com.zzti.epa.mapper.RoleMapper;
import com.zzti.epa.model.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName RoleService
 * @Description TODO
 * @Author Administrator
 * @Date 2020/3/9 19:08
 **/
@Service
public class RoleService {

    @Autowired
    RoleMapper roleMapper;

    /**
    * @Description:获取所有的角色
    * @Date: 2020/3/19  11:14

    * @return: java.util.List<com.zzti.epa.model.Role>
    **/
    public List<Role> getAllRoles() {
        return roleMapper.getAllRoles();
    }


    public Integer addRole(Role role) {
        if(role.getName().startsWith("ROLE_")){
            role.setName("ROLE_"+role.getName());
        }
        return  roleMapper.insert(role);
    }

    //删除角色
    public Integer deleteRoleById(Integer rid) {
        return roleMapper.deleteByPrimaryKey(rid);
    }
}
