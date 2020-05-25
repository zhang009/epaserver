package com.zzti.epa.service.baseinfo;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zzti.epa.mapper.baseinfo.ClassCourseMapper;
import com.zzti.epa.mapper.baseinfo.CourseMapper;
import com.zzti.epa.mapper.baseinfo.MajorCourseMapper;
import com.zzti.epa.model.Class;
import com.zzti.epa.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @ClassName CourseService
 * @Description TODO
 * @Author Administrator
 * @Date 2020-03-30 11:02
 **/
@Service
public class CourseService {

    @Autowired
    CourseMapper courseMapper;
    @Autowired
    ClassCourseMapper classCourseMapper;
    @Autowired
    MajorCourseMapper majorCourseMapper;

    //获取课程记录列表，这里course.name为关键词
    public RespPageBean getCourse(Integer page, Integer size, Course course) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<Course> data=courseMapper.getCourse(page,size,course);
        Long total=courseMapper.getTotal(course);
        RespPageBean bean = new RespPageBean();
        bean.setData(data);
        bean.setTotal(total);
        return bean;
    }
    public RespPageBean getCourseWithClass(Integer page, Integer size, Course course) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<Course> data=courseMapper.getCourseWithClass(page,size,course);
     /*   System.out.println(data.size());
        System.out.println(data.toString());*/
        Long total=courseMapper.getTotal(course);
        RespPageBean bean = new RespPageBean();
        bean.setData(data);
        bean.setTotal(total);
        return bean;
    }

    //添加课程
    @Transactional
    public Integer addCourse(Course course) {
        //这里当添加完课程之后，需要在班级_课程里添加，删除时表关联自动删除
        courseMapper.insertSelective(course);//执行添加操作，获取课程添加后的id

        //这里需要把专业数组，班级数组，插入到class_course数据库表和major_course数据库表
        Integer []majorIds=course.getMajorIds();
        Integer[] classIds=course.getClassIds();
        for (int i = 0; i < majorIds.length; i++) {
            MajorCourse majorCourse=new MajorCourse();
            majorCourse.setCourseId(course.getId());
            majorCourse.setMajorId(majorIds[i]);
            majorCourseMapper.insertSelective(majorCourse);
        }
        for (int i = 0; i < classIds.length; i++) {
            ClassCourse classCourse=new ClassCourse();
            classCourse.setClassId(classIds[i]);
            classCourse.setCourseId(course.getId());
            classCourseMapper.insertSelective(classCourse);
        }
        return 1;
    }

    //更新课程
    @Transactional
    public Integer updateCourse(Course course) {
        //删除专业课程major_course表记录，重新添加，删除班级课程class_course表记录，重新添加
        Integer []majorIds=course.getMajorIds();
        Integer[] classIds=course.getClassIds();
        //删除记录
        majorCourseMapper.deleteByCourseId(course.getId());
        classCourseMapper.deleteByCourseId(course.getId());
        //添加纪录
        for (int i = 0; i < majorIds.length; i++) {
            MajorCourse majorCourse=new MajorCourse();
            majorCourse.setCourseId(course.getId());
            majorCourse.setMajorId(majorIds[i]);
            majorCourseMapper.insertSelective(majorCourse);
        }
        for (int i = 0; i < classIds.length; i++) {
            ClassCourse classCourse=new ClassCourse();
            classCourse.setClassId(classIds[i]);
            classCourse.setCourseId(course.getId());
            classCourseMapper.insertSelective(classCourse);
        }
        return courseMapper.updateByPrimaryKeySelective(course);
    }

    public Integer deleteCourseByCid(Integer id) {
        return courseMapper.deleteByPrimaryKey(id);
    }

    public List<Course> getAllCourse(Integer id) {
        return courseMapper.getAllCourse(id);
    }

    public Course getCourseById(Integer id) {
        return courseMapper.getCourseById(id);
    }


    public RespPageBean getCourseWithClass2(Integer page, Integer size, Course course) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<Course> list=courseMapper.getCourseWithClass2(page,size,course);
        ObjectMapper mapper = new ObjectMapper();
        List<Course> data = mapper.convertValue(list, new TypeReference<List<Course>>() { });//这里需要转化，map转为对象

        //这里查询出所有该具有该课程的专业和班级信息
        for (int i = 0; i < data.size(); i++) {
            Course course1=data.get(i);
            Integer[] majorIds=course1.getMajorIds();
            List<Major> majors=majorCourseMapper.getMajorByCourseId(course1.getId());
            majorIds=new Integer[majors.size()];
            //给专业的数组赋值
            for (int j = 0; j < majors.size(); j++) {
                Major major=majors.get(j);
                majorIds[j]=major.getId();
            }
            course1.setMajors(majors);
            course1.setMajorIds(majorIds);

            Integer[] classIds=course1.getClassIds();
            List<Class> classes=classCourseMapper.getClassByCourseId(course1.getId());
            //给专业的数组赋值
            classIds=new Integer[classes.size()];
            for (int j = 0; j < classes.size(); j++) {
                Class clazz=classes.get(j);
                classIds[j]=clazz.getId();
            }
            course1.setClasses(classes);
            course1.setClassIds(classIds);
        }


        Long total=courseMapper.getTotal(course);
        RespPageBean bean = new RespPageBean();
        bean.setData(data);
        bean.setTotal(total);
        return bean;
    }
    //根据专业id获取课程列表
    public List<Course> getCourseByMajorId(Integer id) {
        return courseMapper.getCourseByMajorId(id);
    }
}
