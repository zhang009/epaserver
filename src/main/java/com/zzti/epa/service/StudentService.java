package com.zzti.epa.service;

import com.zzti.epa.mapper.StudentMapper;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.model.Role;
import com.zzti.epa.model.Student;
import com.zzti.epa.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName StudentService
 * @Description TODO
 * @Author Administrator
 * @Date 2020-04-01 20:56
 **/
@Service
public class StudentService implements UserDetailsService {


    @Autowired
    StudentMapper studentMapper;
    public RespPageBean getStudentByPage(Integer page, Integer size, Student student) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<Teacher> list=studentMapper.getStudentByPage(page,size,student);//第三个参数为关键词
        Long total=studentMapper.getTotal(student);//总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(list);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;
    }

    public Integer deleteStuById(Integer id) {
        return studentMapper.deleteByPrimaryKey(id);
    }

    public Integer updateStu(Student student) {
        return studentMapper.updateByPrimaryKeySelective(student);
    }

    public Integer addStu(Student student) {
        BCryptPasswordEncoder bCryptPasswordEncoder=new BCryptPasswordEncoder();
        String encode=bCryptPasswordEncoder.encode(student.getStudentNum());//学生用户和学号相同，在这里进行密码加密
        student.setUsername(student.getStudentNum());//默认用户名为学号
        student.setPassword(encode);


        return studentMapper.insertSelective(student);//插入数据
    }

    public Integer deleteStuByIds(Integer[] ids) {
        return studentMapper.deleteStuByIds(ids);
    }

    public Integer addStus(List<Student> list) {
       return studentMapper.addStus(list);

    }

    //根据班级id获取学生数据集合
    public List<Student> getAllStudentByClassId(Integer classId) {
        return studentMapper.getAllStudentByClassId(classId);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Student student=studentMapper.loadUserByUsername(username);
        //这里传teacher有可能为null，因为username有可能不对
        if(student==null){
            throw new UsernameNotFoundException("学生用户名不存在");
        }
        //这里手动设置学生的角色
        List<Role> roles=new ArrayList<>();
        Role role=new Role();
        role.setName("ROLE_student");
        role.setNameZh("学生");
        role.setId(4);
        roles.add(role);
        student.setRoles(roles);
        return student;
    }
    /**
     * 修改密码
     * @param sno
     * @param password
     * @param rePassword
     * @return
     */
    public boolean modifyPass(Integer id,String password,String rePassword) {
        Student student = studentMapper.selectByPrimaryKey(Integer.valueOf(id));
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        if(encoder.matches(password,student.getPassword())) {
            String encode = encoder.encode(rePassword);
            rePassword = encode;
            studentMapper.modifyPass(id,rePassword);
            return true;
        }else {
            return false;
        }
    }


}
