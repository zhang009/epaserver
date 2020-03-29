package com.zzti.epa.controller.baseinfo;

import com.zzti.epa.model.Major;
import com.zzti.epa.model.RespBean;
import com.zzti.epa.service.baseinfo.MajorService;
import com.zzti.epa.service.baseinfo.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @ClassName MajorController
 * @Description 专业管理接口
 * @Author Administrator
 * @Date 2020-03-28 21:30
 **/
@RestController
@RequestMapping("/baseinfo/major")
public class MajorController {

    @Autowired
    MajorService majorService;
    @Autowired
    SchoolService schoolService;
   /* @GetMapping("/")
    public RespPageBean getMajorByPage(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10")
            Integer size, String keyword){
        // System.out.println("getSchoolByPage:"+"page:"+page+"size"+size+"keyword:"+keyword);
        return majorService.getMajorByPage(1,10,null);
    }*/

    @GetMapping("/")
    public List<Major> getMajorBySid(@RequestParam(value = "schoolId") Integer schoolId){
        // System.out.println("getSchoolByPage:"+"page:"+page+"size"+size+"keyword:"+keyword);
        System.out.println("schoolId:"+schoolId);
        return majorService.getMajorBySid(schoolId);
    }

    @PostMapping("/")
    public RespBean addMajor(@RequestBody Major major){
        //System.out.println("major.getschoolId:"+major.());
        if(majorService.addMajor(major)==1){
            return RespBean.ok("添加成功！");
        }
        return RespBean.ok("添加成功！");
    }
    @PutMapping("/")
    public RespBean updateMajor(@RequestBody Major major){
        if(majorService.updateMajor(major)==1){
            return RespBean.ok("更新成功！");
        }
        return RespBean.error("更新失败！");
    }
    @DeleteMapping("/{id}")
    public RespBean deleteMajorBySid(@PathVariable Integer id){
        if(majorService.deleteMajorBySid(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }

}
