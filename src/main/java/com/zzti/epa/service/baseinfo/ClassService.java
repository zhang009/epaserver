package com.zzti.epa.service.baseinfo;

import com.zzti.epa.mapper.baseinfo.ClassMapper;
import com.zzti.epa.model.Class;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName ClassService
 * @Description TODO
 * @Author Administrator
 * @Date 2020-03-29 15:14
 **/
@Service
public class ClassService {

    @Autowired
    ClassMapper classMapper;
    public List<Class> getClassByMid(Integer majorId) {
        return classMapper.getClassByMid(majorId);
    }

    public List<Class> getAllClassByMajorId(Integer majorId){
        return classMapper.getAllClassByMajorId(majorId);
    }
    public RespPageBean getClassByPage(Integer page, Integer size, String keyword) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<Teacher> data=classMapper.getClassByPage(page,size,keyword);
        Long total=classMapper.getTotal(keyword);
        RespPageBean bean = new RespPageBean();
        bean.setData(data);
        bean.setTotal(total);
        return bean;
        
    }

    public Integer addClass(Class clazz) {
        return classMapper.insertSelective(clazz);
    }

    public Integer updateClass(Class clazz) {
        return classMapper.updateByPrimaryKeySelective(clazz);
    }

    public Integer deleteClassByCid(Integer id) {
        return classMapper.deleteByPrimaryKey(id);
    }

    public List<Class> getAllClass() {
        return classMapper.getAllClass();
    }

    public List<Class> getClassByName(String name) {
        return classMapper.getClassByName(name);
    }

    public List<String> getAllClassWithName() {
        return classMapper.getAllClassWithName();
    }
}
