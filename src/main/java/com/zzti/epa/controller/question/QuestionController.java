package com.zzti.epa.controller.question;

import com.zzti.epa.model.RespBean;
import com.zzti.epa.model.SelectQueList;
import com.zzti.epa.service.question.QuestionService;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * @ClassName QuestionController
 * @Description 试题公共接口
 * @Author Administrator
 * @Date 2020-04-10 7:53
 **/
@RestController
@RequestMapping("/question/input")
public class QuestionController {
    @Autowired
    QuestionService questionService;

    /**
    * @Description:试题上传事件
    * @Date: 2020-04-10  7:56
    * @Param courseId:
     * @Param checkTeacherId:
     * @Param file:
    * @return: void
    **/
    @PostMapping("/import")
    public RespBean importQueData(@RequestParam(value = "courseId")Integer courseId,
                                  @RequestParam(value = "checkTeacherId") Integer checkTeacherId, MultipartFile file){

        if(questionService.importQueData(courseId,checkTeacherId,file)==1){
            return RespBean.ok("试题上传成功！");
        };
        return RespBean.error("上传失败");

    }
    /**
    * @Description:试题下载模板
    * @Date: 2020-04-10  16:09
    * @return: org.springframework.http.ResponseEntity<byte[]>
    **/
    @GetMapping("/export")
    public ResponseEntity<byte[]> exportData(){
        HttpHeaders headers=new HttpHeaders();
        ByteArrayOutputStream os=new ByteArrayOutputStream();
        try {
            ClassPathResource classPathResource = new ClassPathResource("excleTemplate/question_template.xls");
            InputStream inputStream =classPathResource.getInputStream();
            HSSFWorkbook wb=new HSSFWorkbook(inputStream);
            headers.setContentDispositionFormData("attachment",new String("试题模板.xls".getBytes("UTF-8"),"ISO-8859-1"));
            headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
            wb.write(os);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return new ResponseEntity<byte[]>(os.toByteArray(),headers, HttpStatus.CREATED);

    }
    @GetMapping("/getQueByIds")
    public SelectQueList getSelectQueListByIds(SelectQueList selectQueList){

       // System.out.println(selectQueList.toString());
        return questionService.getSelectQueListByIds(selectQueList);
    }
}
