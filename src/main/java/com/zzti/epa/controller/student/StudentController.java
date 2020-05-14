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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    //判斷是否学号是否已经存在
    @PostMapping("/studentNum")
    public Map<String,String> isExistStudentNum(@RequestParam("studentNum") String studentNum){
         System.out.println("studentNum:"+studentNum);
        Map<String, String> map=new HashMap<String, String>();
        if(studentService.isExistStudentNum(studentNum)){
            // System.out.println("ok");
            map.put("result", "yes");
        }else{
            // System.out.println("no");
            map.put("result", "no");
        }
        return map;
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
    //下载导入学生模板
    @GetMapping("/export")
    public ResponseEntity<byte[]> exportStuTemplate(){
        List<String> classes=classService.getAllClassWithName();
        return POIUtils.student2Excel(classes);
    }
    //导入学生数据
    @PostMapping("/import")
    public RespBean importData(MultipartFile file) throws IOException {

        List<Student> list=POIUtils.excel2Student(file,classService.getAllClass());
        for (Student student : list) {
            System.out.println(student.toString());
        }
        //将解析的数据插入到数据库
        System.out.println("size:"+list.size());
        if(list.size()>=1&&studentService.addStus(list)==list.size()) {
            return RespBean.ok("学生数据导入成功！");
        }
        return RespBean.error("导入失败");
    }
    @PutMapping("/modifyPass")
    public RespBean modifyPass(@RequestParam("id")Integer id,String password,String rePassword) {
        if(studentService.modifyPass(id,password,rePassword)){
            return RespBean.ok("修改成功");
        }else{
            return RespBean.error("修改失败,原密码错误");
        }
    }


}
