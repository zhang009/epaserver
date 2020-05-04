package com.zzti.epa.controller.grade;

import com.zzti.epa.model.*;
import com.zzti.epa.model.Class;
import com.zzti.epa.service.baseinfo.ClassService;
import com.zzti.epa.service.grade.GradeService;
import com.zzti.epa.service.testpaper.TestPaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @ClassName GradeController
 * @Description 成绩管理接口
 * @Author Administrator
 * @Date 2020-05-01 6:50
 **/
@RestController
@RequestMapping("/gra")
public class GradeController {
    @Autowired
    GradeService gradeService;
    @Autowired
    TestPaperService testPaperService;
    @Autowired
    ClassService classService;

    //查询所有的试卷信息
    @GetMapping("/input/getAllTestPaper")
    public RespPageBean getAllTestPaper(@RequestParam("page")Integer page,
                                        @RequestParam("size") Integer size,
                                        TestPaper testPaper){
        return testPaperService.getAllTestPaperByPage(page,size,testPaper);
    }

    //获取该试卷下的班级
    @GetMapping("/input/allTestPaperClass")
    public List<Class> getAllTestPaperClass(@RequestParam("testPaperId") Integer testPaperId){
        return gradeService.getAllTestPaperClass(testPaperId);
    }

    //获取该班级下的所有试卷列表
    @GetMapping("/input/allStudentGradesByClassId")
    public RespPageBean getStudentGrades(@RequestParam("page")Integer page,
                                         @RequestParam("size") Integer size,
                                         StudentGrade studentGrade){
        return gradeService.getStudentGrades(page,size,studentGrade);
    }
    //根据专业id获取班级信息
    @GetMapping("/input/getAllClassByMajorId")
    public List<Class> getAllClassByMajorId(@RequestParam("majorId") Integer majorId){
        return classService.getAllClassByMajorId(majorId);
    }
    //添加班级
    @PostMapping("/input/addTestPaperClass")
    public RespBean addTestPaperClass(@RequestBody TestPaperClass testPaperClass){
        if(gradeService.addTestPaperClass(testPaperClass)==1){
            return RespBean.ok("添加成功！");
        }
        return RespBean.error("添加失败！");
    }
    //添加成绩
    @PostMapping("/input/addStudentGrade")
    public RespBean addStudentGrade(@RequestBody StudentGrade studentGrade){
        if(gradeService.addStudentGrade(studentGrade)){
            return RespBean.ok("添加成功！");
        }
        return RespBean.error("添加失败！");
    }



}
