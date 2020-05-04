package com.zzti.epa.controller.student;

import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.RespPageBean;
import com.zzti.epa.model.Student;
import com.zzti.epa.service.StudentService;
import com.zzti.epa.service.baseinfo.ClassService;
import com.zzti.epa.utils.POIUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

/**
 * @ClassName StudentController
 * @Description 学生管理接口
 * @Author Administrator
 * @Date 2020-04-01 20:54
 **/
@RestController
@RequestMapping("/baseinfo/stu")
public class StudentController {

    @Autowired
    StudentService studentService;
    @Autowired
    ClassService classService;
    @GetMapping("/")
    public RespPageBean getStudentByPage(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10")
            Integer size, Student student){/*这里teacher存储为条件搜索内容*/

        return studentService.getStudentByPage(page,size,student);
    }
    @GetMapping("/getAllStudentByClassId")
    public List<Student> getAllStudentByClassId(@RequestParam("classId") Integer classId){

        return studentService.getAllStudentByClassId(classId);
    }

    @DeleteMapping("/{id}")
    public RespBean deleteStuById(@PathVariable Integer id){
        if(studentService.deleteStuById(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }
    @PutMapping("/")
    public RespBean updateStu(@RequestBody Student student){
        if(studentService.updateStu(student)==1){
            return RespBean.ok("更新成功！");
        }
        return RespBean.error("更新失败！");
    }
    @PostMapping("/")
    public RespBean addStu(@RequestBody Student student){
        if(studentService.addStu(student)==1){
            return RespBean.ok("添加成功！");
        }
        return RespBean.ok("添加成功！");
    }
    @DeleteMapping("/")
    public RespBean deleteStuByIds(Integer [] ids){
        if(studentService.deleteStuByIds(ids)==ids.length){
            return RespBean.ok("删除成功!");
        }
        return RespBean.error("删除失败!");
    }
    @GetMapping("/export")
    public ResponseEntity<byte[]> exportStuTemplate(){
        List<String> classes=classService.getAllClassWithName();
        return POIUtils.student2Excel(classes);
    }
    @PostMapping("/import")
    public RespBean importData(MultipartFile file) throws IOException {
        //file当成excel文件来解析
        // file.transferTo(new File("E:\\javatest.xls"));
        List<Student> list=POIUtils.excel2Student(file,classService.getAllClass());
      /*  for (Employee employee : list) {
            System.out.println(employee.toString());
        }*/
        //将解析的数据插入到数据库
        System.out.println("size:"+list.size());
        if(studentService.addStus(list)==list.size()) {
            return RespBean.ok("上传成功！");
        }
        return RespBean.error("上传失败");
    }

}
