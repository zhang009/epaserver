package com.zzti.epa.service.question;

import com.zzti.epa.config.IAuthenticationFacade;
import com.zzti.epa.mapper.question.*;
import com.zzti.epa.model.*;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.CellType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName QuestionService
 * @Description 试题业务层
 * @Author Administrator
 * @Date 2020-04-10 10:38
 **/
@Service
public class QuestionService {

    @Autowired
    SCQuestionMapper scQuestionMapper;
    @Autowired
    MCQuestionMapper mcQuestionMapper;
    @Autowired
    TFQuestionMapper tfQuestionMapper;
    @Autowired
    FBQuestionMapper fbQuestionMapper;
    @Autowired
    QAQuestionMapper qaQuestionMapper;

    @Autowired
    MCOptionMapper mcOptionMapper;
    @Autowired
    QuestionCheckMapper questionCheckMapper;
    @Autowired
    private IAuthenticationFacade authenticationFacade;


    @Transactional
    public Integer importQueData(Integer courseId, Integer checkTeacherId, MultipartFile file) {
        Authentication authentication = authenticationFacade.getAuthentication();
        Teacher teacher=(Teacher)authentication.getPrincipal();//获取user信息

        /*List<SCQuestion> sclist=new ArrayList<>();
        List<MCQuestion> mclist=new ArrayList<>();
        List<TFQuestion> tflist=new ArrayList<>();
        List<FBQuestion> fblist=new ArrayList<>();
        List<QAQuestion> qalist=new ArrayList<>();*/

        //1.创建一个workbook对象
        HSSFWorkbook workbook = null;
        try {
            workbook = new HSSFWorkbook(file.getInputStream());
            //2.获取workbook中表单的数量
            int numberOfSheets = workbook.getNumberOfSheets();
            System.out.println("numberOfSheets:"+numberOfSheets);
            for (int i = 0; i < numberOfSheets; i++) {
                //3.获取表单
                HSSFSheet sheet = workbook.getSheetAt(i);
                //4.获取表单有多少行
                int physicalNumberOfRows = sheet.getPhysicalNumberOfRows();
                System.out.println("physicalNumberOfRows:"+physicalNumberOfRows);

                if(physicalNumberOfRows==1){//如果某个表单数据为空
                    /*if(i==0){
                        sclist=null;//单选
                    }else if (i==1){
                        mclist=null;
                    }else if(i==2){
                        tflist=null;
                    }else if(i==3){
                        fblist=null;
                    }else if(i==4){
                        qalist=null;
                    }*/
                    continue;
                }
                //当行数大于1表示有试题，循环解析
                /*单选、多选、判断、填空、简答*/
                if(i==0) {//解析单选题
                    for (int j = 0; j < physicalNumberOfRows; j++) {
                        if (j == 0) {
                            continue;//标题行不解析
                        }
                        //6.获取行
                        HSSFRow row = sheet.getRow(j);
                        if (row == null) {
                            continue;//防止中间有空行
                        }
                        //7.获取列数
                        int physicalNumberOfCells = row.getPhysicalNumberOfCells();
                     //   System.out.println("列数：" + physicalNumberOfCells);
                        SCQuestion scQuestion= new SCQuestion();
                        for (int k = 0; k < 7; k++) {//单选题表里一共有7列，这里直接设置
                            HSSFCell cell = row.getCell(k);
                            if (cell == null) {
                                continue;//防止中间有空列
                            }
                            cell.setCellType(CellType.STRING);
                            String cellValue = cell.getStringCellValue();
                            //System.out.println("k:" + k + ",cellValue:" + cellValue);
                            switch (k) {
                                //根据列数决定如何处理
                                case 0:
                                    scQuestion.setStem(cellValue);//单选题题干
                                    break;
                                case 1:
                                    scQuestion.setOption1(cellValue);//选项A
                                    break;
                                case 2:
                                    scQuestion.setOption2(cellValue);//选项B
                                    break;
                                case 3:
                                    scQuestion.setOption3(cellValue);//选项C
                                    break;
                                case 4:
                                    scQuestion.setOption4(cellValue);//选项D
                                    break;
                                case 5:
                                    scQuestion.setAnswer(cellValue);//答案
                                    break;
                                case 6:
                                    if(cellValue!=""){
                                        scQuestion.setAnalysis(cellValue);
                                    }

                                    break;
                            }
                        }
                        scQuestion.setTeacherId(teacher.getId());//设置提交者id
                        scQuestion.setCheckTeacherId(checkTeacherId);//设置审核者教师id
                        scQuestion.setCourseId(courseId);//设置课程

                        scQuestionMapper.insertSelective(scQuestion);//插入数据库
                        int scQuestionId=scQuestion.getId();

                        QuestionCheck questionCheck=new QuestionCheck();
                        questionCheck.setPostTeacherId(teacher.getId());
                        questionCheck.setCheckTeacherId(checkTeacherId);
                        questionCheck.setQuestionId(scQuestionId);
                        questionCheck.setQuestionType("sc");//设置试题类型
                        questionCheckMapper.insertSelective(questionCheck);//插入试题审核记录
                       /* sclist.add(scQuestion);//加入list集合*/
                    }
                }
                else if(i==1){//多选题
                    for (int j = 0; j < physicalNumberOfRows; j++) {
                        if (j == 0) {
                            continue;//标题行不解析
                        }
                        //6.获取行
                        HSSFRow row = sheet.getRow(j);
                        if (row == null) {
                            continue;//防止中间有空行
                        }
                        //7.获取列数
                        int physicalNumberOfCells = row.getPhysicalNumberOfCells();
                        MCQuestion mcQuestion= new MCQuestion();
                        List<MCOption> options=new ArrayList<>();
                    //    System.out.println("physicalNumberOfCells列数："+physicalNumberOfCells);
                        for (int k = 0; k < 13; k++) {//多选题里一共有13列，这里直接设置
                            HSSFCell cell = row.getCell(k);//获取第i列单元格
                            if (cell == null) {
                                continue;//防止中间有空列
                            }
                            System.out.println("k:"+k);
                            System.out.println("cell:"+cell);
                            cell.setCellType(CellType.STRING);//把单元格内容设置成string类型
                            String cellValue = cell.getStringCellValue();

                            switch (k) {
                                //根据列数决定如何处理
                                case 0:
                                    if(cellValue!=""){
                                        mcQuestion.setStem(cellValue);//多选题题干
                                    }
                                    break;
                                case 1:
                                    if(cellValue!=""){
                                        MCOption mcOption=new MCOption();
                                        mcOption.setOptionContent(cellValue);//选项1
                                        mcOption.setOptionNum(1);
                                        options.add(mcOption);
                                    }
                                    break;
                                case 2:
                                    if(cellValue!=""){
                                        MCOption mcOption2=new MCOption();
                                        mcOption2.setOptionContent(cellValue);//选项2
                                        mcOption2.setOptionNum(2);
                                        options.add(mcOption2);
                                    }
                                    break;
                                case 3:
                                    if(cellValue!=""){
                                        MCOption mcOption3=new MCOption();
                                        mcOption3.setOptionContent(cellValue);//选项3
                                        mcOption3.setOptionNum(3);
                                        options.add(mcOption3);
                                    }
                                    break;
                                case 4:
                                    if(cellValue!=""){
                                        MCOption mcOption4=new MCOption();
                                        mcOption4.setOptionContent(cellValue);//选项4
                                        mcOption4.setOptionNum(4);
                                        options.add(mcOption4);
                                    }
                                    break;
                                case 5:
                                    if(cellValue!=""){
                                        MCOption mcOption5=new MCOption();
                                        mcOption5.setOptionContent(cellValue);//选项5
                                        mcOption5.setOptionNum(5);
                                        options.add(mcOption5);
                                    }
                                    break;
                                case 6:
                                    if(cellValue!=""){
                                        MCOption mcOption6=new MCOption();
                                        mcOption6.setOptionContent(cellValue);//选项6
                                        mcOption6.setOptionNum(6);
                                        options.add(mcOption6);
                                    }
                                    break;
                                case 7:
                                    if(cellValue!=""){
                                        MCOption mcOption7=new MCOption();
                                        mcOption7.setOptionContent(cellValue);//选项7
                                        mcOption7.setOptionNum(7);
                                        options.add(mcOption7);
                                    }
                                    break;
                                case 8:
                                    if(cellValue!=""){
                                        MCOption mcOption8=new MCOption();
                                        mcOption8.setOptionContent(cellValue);//选项8
                                        mcOption8.setOptionNum(8);
                                        options.add(mcOption8);
                                    }
                                    break;
                                case 9:
                                    if(cellValue!=""){
                                        MCOption mcOption9=new MCOption();
                                        mcOption9.setOptionContent(cellValue);//选项9
                                        mcOption9.setOptionNum(9);
                                        options.add(mcOption9);
                                    }
                                    break;
                                case 10:
                                    if(cellValue!=""){
                                        MCOption mcOption10=new MCOption();
                                        mcOption10.setOptionContent(cellValue);//选项10
                                        mcOption10.setOptionNum(10);
                                        options.add(mcOption10);
                                    }
                                    break;
                                case 11:
                                    if(cellValue!=""){
                                       mcQuestion.setAnswer(cellValue);//答案
                                    }
                                    break;
                                case 12:
                                    if(cellValue!=""){
                                        mcQuestion.setAnalysis(cellValue);//解析
                                    }
                                    break;
                            }
                        }
                        mcQuestion.setTeacherId(teacher.getId());//设置提交者id
                        mcQuestion.setCheckTeacherId(checkTeacherId);//设置审核者教师id
                        mcQuestion.setCourseId(courseId);

                        mcQuestionMapper.insertSelective(mcQuestion);//把试题插入数据库
                        int mcQuestionId=mcQuestion.getId();//获取插入数据库之后的试题id

                        QuestionCheck questionCheck=new QuestionCheck();
                        questionCheck.setPostTeacherId(teacher.getId());
                        questionCheck.setCheckTeacherId(checkTeacherId);
                        questionCheck.setQuestionId(mcQuestionId);
                        questionCheck.setQuestionType("mc");//设置试题类型
                        questionCheckMapper.insertSelective(questionCheck);//插入试题审核记录

                        MCOption temOption=null;
                        for(int n=0;n<options.size();n++){
                            temOption=options.get(n);
                            temOption.setMcId(mcQuestionId);
                            mcOptionMapper.insertSelective(temOption);//把选项插入数据库
                        }
                    }
                }
                else if(i==2){//判断题
                    for (int j = 0; j < physicalNumberOfRows; j++) {
                        if (j == 0) {
                            continue;//标题行不解析
                        }
                        //6.获取行
                        HSSFRow row = sheet.getRow(j);
                        if (row == null) {
                            continue;//防止中间有空行
                        }
                        //7.获取列数
                        int physicalNumberOfCells = row.getPhysicalNumberOfCells();

                        TFQuestion tfQuestion= new TFQuestion();
                        for (int k = 0; k < 3; k++) {//判断题里一共有3列，这里直接设置
                            HSSFCell cell = row.getCell(k);
                            if (cell == null) {
                                continue;//防止中间有空列
                            }
                            cell.setCellType(CellType.STRING);
                            String cellValue = cell.getStringCellValue();
                            //System.out.println("k:" + k + ",cellValue:" + cellValue);
                            switch (k) {
                                //根据列数决定如何处理
                                case 0:
                                    tfQuestion.setStem(cellValue);//单选题题干
                                    break;
                                case 1:
                                    tfQuestion.setAnswer(cellValue);//答案
                                    break;
                                case 2:
                                    if(cellValue!=""){
                                        tfQuestion.setAnalysis(cellValue);
                                    }
                                    break;

                            }
                        }
                        tfQuestion.setTeacherId(teacher.getId());//设置提交者id
                        tfQuestion.setCheckTeacherId(checkTeacherId);//设置审核者教师id
                        tfQuestion.setCourseId(courseId);

                        tfQuestionMapper.insertSelective(tfQuestion);//插入数据库
                        int tfQuestionId=tfQuestion.getId();

                        QuestionCheck questionCheck=new QuestionCheck();
                        questionCheck.setPostTeacherId(teacher.getId());
                        questionCheck.setCheckTeacherId(checkTeacherId);
                        questionCheck.setQuestionId(tfQuestionId);
                        questionCheck.setQuestionType("tf");//设置试题类型
                        questionCheckMapper.insertSelective(questionCheck);//插入试题审核记录
                    }
                }
                else if(i==3){//填空题
                    for (int j = 0; j < physicalNumberOfRows; j++) {
                        if (j == 0) {
                            continue;//标题行不解析
                        }
                        //6.获取行
                        HSSFRow row = sheet.getRow(j);
                        if (row == null) {
                            continue;//防止中间有空行
                        }
                        //7.获取列数
                        int physicalNumberOfCells = row.getPhysicalNumberOfCells();

                        FBQuestion fbQuestion= new FBQuestion();
                        for (int k = 0; k < 3; k++) {//填空题里一共有3列，这里直接设置
                            HSSFCell cell = row.getCell(k);
                            if (cell == null) {
                                continue;//防止中间有空列
                            }
                            cell.setCellType(CellType.STRING);
                            String cellValue = cell.getStringCellValue();
                            //System.out.println("k:" + k + ",cellValue:" + cellValue);
                            switch (k) {
                                //根据列数决定如何处理
                                case 0:
                                    fbQuestion.setStem(cellValue);//单选题题干
                                    break;
                                case 1:
                                    fbQuestion.setAnswer(cellValue);//答案
                                    break;
                                case 2:
                                    if(cellValue!=""){
                                        fbQuestion.setAnalysis(cellValue);
                                    }
                                    break;

                            }
                        }
                        fbQuestion.setTeacherId(teacher.getId());//设置提交者id
                        fbQuestion.setCheckTeacherId(checkTeacherId);//设置审核者教师id
                        fbQuestion.setCourseId(courseId);

                        fbQuestionMapper.insertSelective(fbQuestion);//插入数据库
                        int fbQuestionId=fbQuestion.getId();

                        QuestionCheck questionCheck=new QuestionCheck();
                        questionCheck.setPostTeacherId(teacher.getId());
                        questionCheck.setCheckTeacherId(checkTeacherId);
                        questionCheck.setQuestionId(fbQuestionId);
                        questionCheck.setQuestionType("fb");//设置试题类型
                        questionCheckMapper.insertSelective(questionCheck);//插入试题审核记录
                    }
                }
                else if(i==4){//问答题
                    for (int j = 0; j < physicalNumberOfRows; j++) {
                        if (j == 0) {
                            continue;//标题行不解析
                        }
                        //6.获取行
                        HSSFRow row = sheet.getRow(j);
                        if (row == null) {
                            continue;//防止中间有空行
                        }
                        //7.获取列数
                        int physicalNumberOfCells = row.getPhysicalNumberOfCells();

                        QAQuestion qaQuestion= new QAQuestion();
                        for (int k = 0; k < 3; k++) {//简答题里一共有3列，这里直接设置
                            HSSFCell cell = row.getCell(k);
                            if (cell == null) {
                                continue;//防止中间有空列
                            }
                            cell.setCellType(CellType.STRING);
                            String cellValue = cell.getStringCellValue();
                            //System.out.println("k:" + k + ",cellValue:" + cellValue);
                            switch (k) {
                                //根据列数决定如何处理
                                case 0:
                                    qaQuestion.setStem(cellValue);//单选题题干
                                    break;
                                case 1:
                                    qaQuestion.setAnswer(cellValue);//答案
                                    break;
                                case 2:
                                    if(cellValue!=""){
                                        qaQuestion.setAnalysis(cellValue);
                                    }
                                    break;

                            }
                        }
                        qaQuestion.setTeacherId(teacher.getId());//设置提交者id
                        qaQuestion.setCheckTeacherId(checkTeacherId);//设置审核者教师id
                        qaQuestion.setCourseId(courseId);

                        qaQuestionMapper.insertSelective(qaQuestion);//插入数据库
                        int qaQuestionId=qaQuestion.getId();

                        QuestionCheck questionCheck=new QuestionCheck();
                        questionCheck.setPostTeacherId(teacher.getId());
                        questionCheck.setCheckTeacherId(checkTeacherId);
                        questionCheck.setQuestionId(qaQuestionId);
                        questionCheck.setQuestionType("qa");//设置试题类型
                        questionCheckMapper.insertSelective(questionCheck);//插入试题审核记录
                    }
                }

            }





        } catch (IOException e) {
            e.printStackTrace();
        }

        return 1;
    }
}
