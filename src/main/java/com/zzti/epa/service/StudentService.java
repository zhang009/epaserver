package com.zzti.epa.service;

import com.zzti.epa.mapper.StudentMapper;
import com.zzti.epa.mapper.StudentRoleMapper;
import com.zzti.epa.mapper.grade.StudentGradeMapper;
import com.zzti.epa.mapper.paper.TestPaperMapper;
import com.zzti.epa.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
    @Autowired
    TestPaperMapper testPaperMapper;
    @Autowired
    StudentGradeMapper studentGradeMapper;
    @Autowired
    StudentRoleMapper studentRoleMapper;
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
        studentMapper.insertSelective(student);

        return studentRoleMapper.firstAddRole(student.getId());//插入数据
    }

    public Integer deleteStuByIds(Integer[] ids) {
        return studentMapper.deleteStuByIds(ids);
    }

    @Transactional
    public Integer addStus(List<Student> list) {

        Student student=null;
        int count=0;
        //这里分条插入是为了在角色表里设置默认的学生角色
        for(int i=0;i<list.size();i++){
            student=list.get(i);
            if(student!=null){
                studentMapper.insertSelective(student);
                studentRoleMapper.firstAddRole(student.getId());
                count++;
            }
        }
        return count;

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


    //判断学号是否存在
    public boolean isExistStudentNum(String studentNum) {
        return studentMapper.isExistStudentNum(studentNum)>=1;
    }

    public RespPageBean getAllMyTestPaper(Integer page, Integer size, String studentNum) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }

        //1.根据学生学号查询出所有的试卷
        List<TestPaper> testPapers=testPaperMapper.getAllMyTestPaper(page,size,studentNum);

        //根据试卷的id和学生的学号再次到studentGrade中查询学生的成绩，封装到testPaper中的studentTotalGrade中
        for (int i = 0; i < testPapers.size(); i++) {
           Float grade= studentGradeMapper.selectGradeByStudentNumAndTestPaperId(testPapers.get(i).getId(),studentNum);
            testPapers.get(i).setStudentTotalGrade(grade);

        }
        Long total=testPaperMapper.getAllMyTestPaperTotal(studentNum);//总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(testPapers);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;
    }
}
