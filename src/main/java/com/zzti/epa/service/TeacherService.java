package com.zzti.epa.service;

import com.zzti.epa.mapper.TeacherMapper;
import com.zzti.epa.mapper.TeacherRoleMapper;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName TeacherService
 * @Description TODO
 * @Author Administrator
 * @Date 2020/2/29 9:23
 **/
@Service
public class TeacherService implements UserDetailsService {
    @Autowired
    TeacherMapper teacherMapper;

    @Autowired
    TeacherRoleMapper teacherRoleMapper;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Teacher teacher=teacherMapper.loadUserByUsername(username);
        //这里传hr有可能为null，因为username有可能不对
        if(teacher==null){
            throw new UsernameNotFoundException("用户名不存在");
        }
       teacher.setRoles(teacherMapper.getTeacherRolesById(teacher.getId()));
        return teacher;
    }

    public RespPageBean getTeacherByPage(Integer page, Integer size, Teacher teacher) {

        if(page!=null&& size!=null){
            page=(page-1)*size;
        }

        List<Teacher> data=teacherMapper.getTeacherByPage(page,size,teacher);//第三个参数为关键词
        Long total=teacherMapper.getTotal(teacher);//总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(data);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;
    }


    public Integer deleteTeaByEid(Integer id) {

        return teacherMapper.deleteByPrimaryKey(id);
    }

    public boolean updateTeaRole(Integer tid, Integer[] rids) {
        //做两个操作，一个删除，一个添加

        teacherRoleMapper.deleteByTeaId(tid);
        return teacherRoleMapper.addRole(tid,rids)==rids.length;
    }

    public Integer updateTea(Teacher teacher) {
        return teacherMapper.updateByPrimaryKeySelective(teacher);
    }

    public Integer addTea(Teacher teacher) {
        teacher.setEnabled(true);
        //System.out.println(teacher.toString());
        return teacherMapper.insertSelective(teacher);
    }

    public boolean isExistWorkID(String workID) {
        return teacherMapper.isExistWorkID(workID)>=1;
    }
}
