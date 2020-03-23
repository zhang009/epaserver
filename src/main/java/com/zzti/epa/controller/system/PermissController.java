package com.zzti.epa.controller.system;

import com.zzti.epa.model.Menu;
import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.Role;
import com.zzti.epa.service.MenuService;
import com.zzti.epa.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @ClassName PermissController
 * @Description 权限控制接口
 * @Author Administrator
 * @Date 2020/3/19 11:11
 **/
@RestController
@RequestMapping("/system/basic/permiss")
public class PermissController {
    @Autowired
    RoleService roleService;
    @Autowired
    MenuService menuService;

    /**
    * @Description:获取所有的角色列表
    * @Date: 2020/3/19  11:25
    **/
    @GetMapping("/")
    public List<Role> getAllRoles(){
        return roleService.getAllRoles();
    }
    /**
     * @Description:获取所有的资源列表
     * @Date: 2020/3/19
     **/
    @GetMapping("/menus")
    public List<Menu> getAllMenus(){
        return menuService.getAllMenus();
    }
    /**
    * @Description：根据角色id获取可以访问的资源列表，返回值为mid数组
    * @Date: 2020/3/19  11:27
    * @Param rid:
    **/
    @GetMapping("/mids/{rid}")
    public List<Integer> getMidsByRid(@PathVariable Integer rid){
        return menuService.getMidsByRid(rid);
    }

    /**
    * @Description:修改菜单资源
    * @Date: 2020/3/19  11:44
    * @Param rid:
     * @Param mids:
    **/
    @PutMapping("/")
    public RespBean updateMenuRole(Integer rid, Integer[] mids){
        if(menuService.updateMenuRole(rid,mids)){
            return   RespBean.ok("修改成功！");
        }
        return   RespBean.error("修改失败！");
    }
    /**
    * @Description:添加角色
    * @Date: 2020/3/19  11:46
    * @Param role:
    **/
    @PostMapping("/role")
    public RespBean addRole(@RequestBody  Role role){

        if(roleService.addRole(role)==1){
            return   RespBean.ok("添加成功！");
        }
        return   RespBean.error("添加失败！");
    }
}
