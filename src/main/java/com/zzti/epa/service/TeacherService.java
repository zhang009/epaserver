package com.zzti.epa.service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zzti.epa.mapper.TeacherMapper;
import com.zzti.epa.mapper.TeacherRoleMapper;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
        //检查条件搜索，如果条件搜索选择了角色，则需要在这里筛选
        Teacher teacher1=null;
        Long total=teacherMapper.getTotal(teacher);//总记录数
        ObjectMapper mapper = new ObjectMapper();
        List<Teacher> list = mapper.convertValue(data, new TypeReference<List<Teacher>>() { });//这里需要转化，map转为对象

        for (int i =0;i< list.size();i++){
            teacher1=list.get(i);
            if(teacher1.getRoles().size()==0||teacher1.getRoles()==null){//如果查询出的角色不存在
                list.remove(i);//移除部门为空的用户
                total--;//总记录数减1
                i--;//当移除一个元素的时候，list集合会向前移动，所以这里需要让下标再前移一位
            }else{//判断

            }
        }
        RespPageBean bean = new RespPageBean();
        bean.setData(list);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;
    }
    public List<Teacher> getTeacherByAddQue() {
        List<Teacher> list=teacherMapper.getTeacherCourseRole(2);//传入课程负责人的角色id
        //检查条件搜索，如果条件搜索选择了角色，则需要在这里筛选
        Teacher teacher1=null;

        for (int i =0;i< list.size();i++){
            teacher1=list.get(i);
            if(teacher1.getRoles().size()==0||teacher1.getRoles()==null){//如果查询出的角色不存在
                list.remove(i);//移除部门为空的用户
                i--;//当移除一个元素的时候，list集合会向前移动，所以这里需要让下标再前移一位
            }else{//判断
            }
        }
        return list;
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

    //添加教师用户
    @Transactional
    public Integer addTea(Teacher teacher) {
        teacher.setEnabled(true);
        teacherMapper.insertSelective(teacher);
        //System.out.println(teacher.toString());
        return teacherRoleMapper.firstAddRole(teacher.getId());

    }

    public boolean isExistWorkID(String workID) {
        return teacherMapper.isExistWorkID(workID)>=1;
    }

    public Integer deleteTeasByIds(Integer[] ids) {
        return teacherMapper.deleteTeasByIds(ids);
    }
    //添加教师用户
    @Transactional
    public Integer addTeas(List<Teacher> list) {
       /* System.out.println(list.toString());*/
        Teacher teacher=null;
        int count=0;
        //这里分条插入是为了在角色表里设置默认的教师角色
        for(int i=0;i<list.size();i++){
            teacher=list.get(i);
            if(teacher!=null){
                teacherMapper.insertSelective(teacher);
                teacherRoleMapper.firstAddRole(teacher.getId());
                count++;
            }
        }
        return count;
    }


    //获取所有提交模板教师列表
    public List<Teacher> getTemplatePostTeacher() {
        return teacherMapper.getTemplatePostTeacher();
    }
}
