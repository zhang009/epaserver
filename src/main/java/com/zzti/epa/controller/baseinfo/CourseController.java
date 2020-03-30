package com.zzti.epa.controller.baseinfo;

import com.zzti.epa.model.Course;
import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.service.baseinfo.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @ClassName CourseController
 * @Description 课程管理接口
 * @Author Administrator
 * @Date 2020-03-30 10:51
 **/
@RestController
@RequestMapping("/baseinfo/course")
public class CourseController {
    @Autowired
    CourseService courseService;
    //根据班级获取所有的课程列表，没有分页
    @GetMapping("/")
    public RespPageBean getCourse(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10")
                                  Integer size,Course course){
        System.out.println("getCourseByClassId.classId:"+course.toString());
        return courseService.getCourse(page,size,course);
    }
    @GetMapping("/all")
    public List<Course> getAllCourse(@RequestParam("classId") Integer id){
        return courseService.getAllCourse(id);
    }
    @PostMapping("/")
    public RespBean addCourse(@RequestBody Course course){
        if(courseService.addCourse(course)==1){
            return RespBean.ok("添加成功！");
        }
        return RespBean.ok("添加成功！");
    }
    @PutMapping("/")
    public RespBean updateCourse(@RequestBody Course course){
        if(courseService.updateCourse(course)==1){
            return RespBean.ok("更新成功！");
        }
        return RespBean.error("更新失败！");
    }
    @DeleteMapping("/{id}")
    public RespBean deleteCourseByCid(@PathVariable Integer id){
        if(courseService.deleteCourseByCid(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }


}
