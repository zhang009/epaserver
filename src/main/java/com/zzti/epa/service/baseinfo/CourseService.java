package com.zzti.epa.service.baseinfo;

import com.zzti.epa.mapper.baseinfo.ClassCourseMapper;
import com.zzti.epa.mapper.baseinfo.CourseMapper;
import com.zzti.epa.model.ClassCourse;
import com.zzti.epa.model.Course;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    //获取课程记录列表，这里course.name为关键词
    public RespPageBean getCourse(Integer page, Integer size, Course course) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<Teacher> data=courseMapper.getCourse(page,size,course);
        Long total=courseMapper.getTotal(course);
        RespPageBean bean = new RespPageBean();
        bean.setData(data);
        bean.setTotal(total);
        return bean;
    }

    public Integer addCourse(Course course) {
        //这里当添加完课程之后，需要在班级_课程里添加
        courseMapper.insertSelective(course);
        ClassCourse classCourse=new ClassCourse();
        classCourse.setClassId(course.getClassId());
        classCourse.setCourseId(course.getId());
        return classCourseMapper.insertSelective(classCourse);
    }

    public Integer updateCourse(Course course) {
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


}
