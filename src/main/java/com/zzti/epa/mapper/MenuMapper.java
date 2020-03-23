package com.zzti.epa.mapper;

import com.zzti.epa.model.Menu;

import java.util.List;

public interface MenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
    //
    List<Menu> getMenusByTeacherId(Integer tid);

    List<Menu> getAllMenusWithRole();
    List<Menu> getAllMenus();
    List<Integer> getMidsByRid(Integer rid);
}