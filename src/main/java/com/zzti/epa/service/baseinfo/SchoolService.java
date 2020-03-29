package com.zzti.epa.service.baseinfo;

import com.zzti.epa.mapper.baseinfo.SchoolMapper;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.model.School;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName SchoolService
 * @Description 学院管理事务
 * @Author Administrator
 * @Date 2020/3/28 15:59
 **/
@Service
public class SchoolService {

    @Autowired
    SchoolMapper schoolMapper;
    public RespPageBean getSchoolByPage(Integer page, Integer size, String keyword) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<School> data=schoolMapper.getSchoolByPage(page,size,keyword);
        Long total=schoolMapper.getTotal(keyword);
        RespPageBean bean = new RespPageBean();
        bean.setData(data);
        bean.setTotal(total);
        return bean;
    }

    /**
    * @Description:添加学院
    * @Date: 2020-03-28  17:17
    * @Param school:
    * @return: java.lang.Integer
    **/
    public Integer addSchool(School school) {
        return schoolMapper.insertSelective(school);
    }

    /**
    * @Description:更新学院
    * @Date: 2020-03-28  17:17
    * @Param school:
    * @return: java.lang.Integer
    **/
    public Integer updateSchool(School school) {
        return schoolMapper.updateByPrimaryKeySelective(school);
    }


    public Integer deleteSchoolBySid(Integer id) {
        return schoolMapper.deleteByPrimaryKey(id);
    }


    public List<School> getAllSchools() {
        return schoolMapper.getAllSchools();
    }
}
