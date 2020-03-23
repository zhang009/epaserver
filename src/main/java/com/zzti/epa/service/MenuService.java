package com.zzti.epa.service;

import com.zzti.epa.mapper.MenuMapper;
import com.zzti.epa.mapper.MenuRoleMapper;
import com.zzti.epa.model.Menu;
import com.zzti.epa.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @ClassName MenuService
 * @Description TODO
 * @Author Administrator
 * @Date 2020/3/3 9:38
 **/
@Service
public class MenuService {

    @Autowired
    MenuMapper menuMapper;
    @Autowired
    MenuRoleMapper menuRoleMapper;
    public List<Menu> getMenusByHrId() {//根据用户的id，获取能够访问的资源（菜单）
        Teacher teacher= ((Teacher) SecurityContextHolder.getContext().getAuthentication().getPrincipal());
        List<Menu> menus=menuMapper.getMenusByTeacherId(teacher.getId());
        System.out.println("menus:"+menus);
        return menus;
    }

    //@Cacheable这里需要配置Redis
    public List<Menu> getAllMenusWithRole(){
        return menuMapper.getAllMenusWithRole();
    }
    /*获取所有访问资源*/
    public List<Menu> getAllMenus() {
        return menuMapper.getAllMenus();
    }
    //根据角色id获取资源id数组
    public List<Integer> getMidsByRid(Integer rid) {
        return menuMapper.getMidsByRid(rid);
    }
    //根据角色修改可以访问的资源
    @Transactional
    public boolean updateMenuRole(Integer rid, Integer[] mids) {
        //这里要做两件事
        // 第一件事要根据rid,删除所有的mid
        // 第二件事情要根据rid,添加mids
        menuRoleMapper.deleteByRid(rid);
        if(mids==null||mids.length==0){
            return true;
        }
        Integer result=menuRoleMapper.insertRecord(rid,mids);
        return result==mids.length;
    }
}
