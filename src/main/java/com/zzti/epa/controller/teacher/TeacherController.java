package com.zzti.epa.controller.teacher;

import com.zzti.epa.model.*;
import com.zzti.epa.service.baseinfo.DepartmentService;
import com.zzti.epa.service.baseinfo.JobLevelService;
import com.zzti.epa.service.RoleService;
import com.zzti.epa.service.TeacherService;
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
 * @ClassName TeacherController
 * @Description 用户管理接口
 * @Author Administrator
 * @Date 2020/3/19 22:01
 **/
@RestController
@RequestMapping("/system/user")
public class TeacherController {
    @Autowired
    TeacherService teacherService;
    @Autowired
    JobLevelService jobLevelService;
    @Autowired
    DepartmentService departmentService;
    @Autowired
    RoleService roleService;
    /**
    * @Description:获取所有的教师用户
    * @Date: 2020/3/19  22:13
    * @Param page: 请求的第几页
     * @Param size: 每页有多少行数据
     * @Param teacher: 用来存储条件搜索的teacher值
    * @return: RespPageBean
    **/
    @GetMapping("/")
    public RespPageBean getTeacherByPage(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10")
            Integer size, Teacher teacher){/*这里teacher存储为条件搜索内容*/
       /* System.out.println(">>>>>>>>>>>>角色rid:"+teacher.getrId());
        System.out.println(">>>>>>>>>>>>关键词name:"+teacher.getName());*/
        return teacherService.getTeacherByPage(page,size,teacher);
    }
    /**
    * @Description:获取所有课程负责人列表
    * @Date: 2020-04-07  15:46
    * @return: java.util.List<com.zzti.epa.model.JobLevel>
    **/
    @GetMapping("/addQue")
    public List<Teacher> getTeacherByAddQue(){
        return teacherService.getTeacherByAddQue();
    }
    @GetMapping("/joblevel")
    public List<JobLevel> getAllJobLevels(){
        System.out.println("getAllJobLevels:");
        return jobLevelService.getAllJobLevels();
    }
    @GetMapping("/deps")
    public List<Department> getAllDepartments(){
        System.out.println("getAllDepartments:");
        return departmentService.getAllDepartments();
    }
    @GetMapping("/roles")
    public List<Role> getAllRoles(){//查询教师用户的所有角色
        System.out.println("getAllRoles:");
        return roleService.getAllRoles();
    }

    @DeleteMapping("/{id}")
    public RespBean deleteTeaByEid(@PathVariable Integer id){
        if(teacherService.deleteTeaByEid(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }

    //更新hr的角色
    @PutMapping("/role")
    public RespBean updateTeaRole(Integer tid,Integer[] rids){
        if(teacherService.updateTeaRole(tid,rids)){
            return RespBean.ok("角色更新成功！");
        }
        return RespBean.error("角色更新失败！");
    }
    @PutMapping("/")
    public RespBean updateTea(@RequestBody Teacher teacher){
        if(teacherService.updateTea(teacher)==1){
            return RespBean.ok("更新成功！");
        }
        return RespBean.error("更新失败！");
    }
    @PostMapping("/")
    public RespBean addTea(@RequestBody Teacher teacher){
        if(teacherService.addTea(teacher)==1){
            return RespBean.ok("添加成功！");
        }
        return RespBean.ok("添加成功！");
    }
    @GetMapping("/workID/{workID}")
    public Map<String,String> isExistWorkID(@PathVariable String workID){
       // System.out.println("workID:"+workID);
        Map<String, String> map=new HashMap<String, String>();
        if(teacherService.isExistWorkID(workID)){
           // System.out.println("ok");
            map.put("result", "yes");
        }else{
           // System.out.println("no");
            map.put("result", "no");
        }
        return map;
    }

    /**
    * @Description:批量删除
    * @Date: 2020/3/25  9:13
    * @Param ids:
    * @return: com.zzti.epa.model.RespBean
    **/
    @DeleteMapping("/")
    public RespBean deleteTeasByIds(Integer [] ids){
        if(teacherService.deleteTeasByIds(ids)==ids.length){
            return RespBean.ok("删除成功!");
        }
        return RespBean.error("删除失败!");
    }
    //下载文件返回的是ResponseEntity
    /**
    * @Description:下载教师用户模板
    * @Date: 2020/3/26  11:04
    * @return: org.springframework.http.ResponseEntity<byte[]>
    **/
    @GetMapping("/export")
    public ResponseEntity<byte[]> exportData(){


       /* HttpHeaders headers=new HttpHeaders();
        ByteArrayOutputStream os=new ByteArrayOutputStream();
        try {
            ClassPathResource classPathResource = new ClassPathResource("excleTemplate/teacher.xls");
            InputStream inputStream =classPathResource.getInputStream();
            HSSFWorkbook wb=new HSSFWorkbook(inputStream);

            headers.setContentDispositionFormData("attachment",new String("教师用户导入模板.xls".getBytes("UTF-8"),"ISO-8859-1"));
            headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
            wb.write(os);
        } catch (IOException e) {
            e.printStackTrace();
        }*/
       List<String> departments=departmentService.getAllDepartmentWithName();
       List<String> joblevels=jobLevelService.getAllJobLevelsWithName();
        return POIUtils.teachers2Excel(departments,joblevels);
    }
    /**
    * @Description:批量导入数据
    * @Date: 2020/3/26  21:35
    * @Param file:
    * @return: com.zzti.epa.model.RespBean
    **/
    @PostMapping("/import")
    public RespBean importData(MultipartFile file) throws IOException {
        //file当成excel文件来解析
        // file.transferTo(new File("E:\\javatest.xls"));
        List<Teacher> list=POIUtils.excel2Teacher(file,departmentService.getAllDepartments2(),jobLevelService.getAllJobLevels());
       /* for (Teacher teacher : list) {
            System.out.println(teacher.toString());
        }*/
        System.out.println(list.size());
        //将解析的数据插入到数据库
        if(teacherService.addTeas(list)==list.size()) {
            return RespBean.ok("上传成功！");
        }
        return RespBean.error("上传失败");
    }


}
