package com.zzti.epa.utils;

import com.zzti.epa.model.Class;
import com.zzti.epa.model.Department;
import com.zzti.epa.model.JobLevel;
import com.zzti.epa.model.Student;
import com.zzti.epa.model.Teacher;
import org.apache.poi.hpsf.DocumentSummaryInformation;
import org.apache.poi.hpsf.SummaryInformation;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddressList;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartFile;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


/**
 * @ClassName POIUtils
 * @Description TODO
 * @Author Administrator
 * @Date 2020/3/26 9:53
 **/
public class POIUtils {

    public static ResponseEntity<byte[]> teachers2Excel(List<String> departments, List<String> joblevels) {
        //1、创建一个Excel文档
        HSSFWorkbook workbook = new HSSFWorkbook();
        //2.创建文档摘要
        workbook.createInformationProperties();
        //3.获取并配置文档信息
        DocumentSummaryInformation docInfo = workbook.getDocumentSummaryInformation();
        docInfo.setCategory("教师用户模板");//文档类别
        docInfo.setManager("admin");//文档管理员
        docInfo.setCompany("www.zzti.edu.cn");//组织结构
        //4.获取文档摘要信息
        SummaryInformation summaryInfo = workbook.getSummaryInformation();
        summaryInfo.setAuthor("zhang009");//文档作者
        summaryInfo.setComments("本文档由zhang009提供");//备注
        //5.创建样式
        //创建标题行样式
        HSSFCellStyle headerStyle=workbook.createCellStyle();
        headerStyle.setFillForegroundColor(IndexedColors.YELLOW.index);//加入背景颜色
        headerStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
       /* headerStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);*/ //下边框
        headerStyle.setBorderBottom(BorderStyle.THIN); //下边框
        headerStyle.setBorderLeft(BorderStyle.THIN);//左边框
        headerStyle.setBorderTop(BorderStyle.THIN);//上边框
        headerStyle.setBorderRight(BorderStyle.THIN);//右边框
        HSSFFont font = workbook.createFont();
        font.setFontName("宋体");
        font.setFontHeightInPoints((short) 10);//设置字体大小
        /*font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);//粗体显示*/
        font.setBold(true);
        headerStyle.setFont(font);//选择需要用到的字体格式
    //    headerStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 居中
        headerStyle.setVerticalAlignment(VerticalAlignment.CENTER);//垂直
        headerStyle.setAlignment(HorizontalAlignment.CENTER);//水平

        //创建表单
        HSSFSheet sheet = workbook.createSheet("教师信息表");//参数为表单的名字Style
        //定义列的宽度
        sheet.setColumnWidth(0,10*256);//第一个参数为第几列，第二个参数为宽度

        sheet.setColumnWidth(1,15*256);
        sheet.setColumnWidth(2,10*256);
        sheet.setColumnWidth(3,20*256);
        sheet.setColumnWidth(4,20*256);
        sheet.setColumnWidth(5,30*256);
        sheet.setColumnWidth(6,10*256);
        //6.创建标题行（表头）
        HSSFRow r0 = sheet.createRow(0);
        r0.setHeightInPoints(18);//设置单元格行高
        //工号增加批注
        Drawing draw = sheet.createDrawingPatriarch();
        //(int dx1, int dy1, int dx2, int dy2, short col1, int row1, short col2, int row2)
        //前四个参数是坐标点,后四个参数是编辑和显示批注时的大小.
        Comment comment = draw.createCellComment(new HSSFClientAnchor(0,0,0,0,(short)1,1,(short)2,3));
        comment.setString(new HSSFRichTextString("教师工号为4位数字（文本类型）"));//设置批注内容
        Drawing draw2 = sheet.createDrawingPatriarch();
        //(int dx1, int dy1, int dx2, int dy2, short col1, int row1, short col2, int row2)
        //前四个参数是坐标点,后四个参数是编辑和显示批注时的大小.
        Comment comment2 = draw.createCellComment(new HSSFClientAnchor(0,0,0,0,(short)1,1,(short)2,3));
        comment.setString(new HSSFRichTextString("手机号码为文本类型"));//设置批注内容


        HSSFCell c0 = r0.createCell(0);
        c0.setCellValue("姓名");
        c0.setCellStyle(headerStyle);
        //创建第二列
        HSSFCell c1=r0.createCell(1);
        c1.setCellStyle(headerStyle);
        c1.setCellComment(comment);//设置工号批注
        c1.setCellValue("工号");
        HSSFCell c2=r0.createCell(2);
        c2.setCellStyle(headerStyle);

        c2.setCellValue("性别");
        HSSFCell c3=r0.createCell(3);
        c3.setCellStyle(headerStyle);
        c3.setCellValue("电子邮箱");
        HSSFCell c4=r0.createCell(4);
        c4.setCellStyle(headerStyle);
        c4.setCellComment(comment2);//设置手机号码批注
        c4.setCellValue("手机号码");
        HSSFCell c5=r0.createCell(5);
        c5.setCellStyle(headerStyle);
        c5.setCellValue("所属部门");
        HSSFCell c6=r0.createCell(6);
        c6.setCellStyle(headerStyle);
        c6.setCellValue("职称");
        //创建工号为文本格式
        for(int i = 0;i < 500;i++)
        {
            HSSFRow row = sheet.createRow(i + 1);
            //创建第i个单元格
            HSSFCell cell = row.createCell(1);
            if(cell.getCellType()!=CellType.STRING){
                cell.setCellType(CellType.STRING);
            }
            //新增的四句话，设置CELL格式为文本格式
            HSSFCellStyle cellStyle2 = workbook.createCellStyle();
            HSSFDataFormat format = workbook.createDataFormat();
            cellStyle2.setDataFormat(format.getFormat("@"));
            cell.setCellStyle(cellStyle2);
            cell.setCellType(CellType.STRING);
        }



        //加载下拉列表内容
        String [] depStr =departments.toArray(new String[departments.size()]);//集合转数组
        DVConstraint constraint = DVConstraint.createExplicitListConstraint(depStr);
        //设置数据有效性加载在哪个单元格上。
        //四个参数分别是：起始行、终止行、起始列、终止列
        int firstRow = 2-1;
        int lastRow = 300-1;
        int firstCol = 6-1;
        int lastCol = 6-1;
        CellRangeAddressList regions=new CellRangeAddressList(firstRow,lastRow,firstCol,lastCol);
        //数据有效性对象
        DataValidation dataValidation = new HSSFDataValidation(regions,constraint);
        sheet.addValidationData(dataValidation);

        //加载职称下拉框
        String [] joblevelStr =joblevels.toArray(new String[joblevels.size()]);//集合转数组
        DVConstraint constraint2 = DVConstraint.createExplicitListConstraint(joblevelStr);
        //设置数据有效性加载在哪个单元格上。
        //四个参数分别是：起始行、终止行、起始列、终止列
        int firstRow2 = 2-1;
        int lastRow2 = 300-1;
        int firstCol2 = 7-1;
        int lastCol2 = 7-1;
        CellRangeAddressList regions2=new CellRangeAddressList(firstRow2,lastRow2,firstCol2,lastCol2);
        //数据有效性对象
        DataValidation dataValidation2 = new HSSFDataValidation(regions2,constraint2);
        sheet.addValidationData(dataValidation2);
//
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        HttpHeaders headers=new HttpHeaders();

        try {
            headers.setContentDispositionFormData("attachment",new String("教师信息模板表.xls".getBytes("UTF-8"),"ISO-8859-1"));
            headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
            workbook.write(bos);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return new ResponseEntity<byte[]>(bos.toByteArray(),headers, HttpStatus.CREATED);
    }

    public static List<Teacher> excel2Teacher(MultipartFile file, List<Department> allDepartments, List<JobLevel> allJobLevels) {
        List<Teacher> list=new ArrayList<>();
        Teacher teacher=null;
        Department department=null;
        JobLevel jobLevel=null;
        try {
            //1.创建一个workbook对象
            HSSFWorkbook workbook = null;
            workbook = new HSSFWorkbook(file.getInputStream());
            //2.获取workbook中表单的数量
            int numberOfSheets = workbook.getNumberOfSheets();
         //   System.out.println("numberOfSheets:"+numberOfSheets);
            for (int i = 0; i < numberOfSheets; i++) {
                //3.获取表单
                HSSFSheet sheet = workbook.getSheetAt(0);
                //4.获取表单有多少行
                int physicalNumberOfRows = sheet.getPhysicalNumberOfRows();
            //    System.out.println("physicalNumberOfRows:"+physicalNumberOfRows);
                for (int j = 0; j < physicalNumberOfRows; j++) {
                    if (j == 0) {
                        continue;//5.标题行不解析
                    }
                    //6.获取行
                    HSSFRow row = sheet.getRow(j);
                    if (row == null) {
                        continue;//防止中间有空行
                    }
                    //7.获取列数
                    int physicalNumberOfCells = row.getPhysicalNumberOfCells();
                  //  System.out.println("列数：" + physicalNumberOfCells);
                    teacher = new Teacher();
                    if (physicalNumberOfCells == 7) {
                        for (int k = 0; k < physicalNumberOfCells; k++) {
                            HSSFCell cell = row.getCell(k);
                            //字符串格式、日期格式
                          /*  switch (cell.getCellType()) {
                                case STRING:*/
                                    cell.setCellType(CellType.STRING);
                                    String cellValue = cell.getStringCellValue();
                                    //System.out.println("k:" + k + ",cellValue:" + cellValue);
                                    switch (k) {
                                        //根据列数决定如何处理
                                        case 0:
                                            teacher.setName(cellValue);//姓名
                                            break;
                                        case 1:
                                            teacher.setWorkID(cellValue);
                                            teacher.setUsername(cellValue);//用户名设置和工号相同
                                            break;
                                        case 2:
                                            teacher.setGender(cellValue);
                                            break;
                                        case 3:
                                            teacher.setEmail(cellValue);
                                            break;
                                        case 4:
                                            teacher.setPhone(cellValue);
                                            break;
                                        case 5:
                                           /* for(int d=0;d<allDepartments.size();d++){
                                                department=allDepartments.get(d);
                                                System.out.println("allDepartments.size()"+allDepartments.size()+"department.getName()："+department.getName());
                                                if(cellValue.equals(department.getName())){
                                                    teacher.setDepartmentId(department.getId());
                                                }
                                            }*/
                                            int departmentIndex = allDepartments.indexOf(new Department(cellValue));
                                           // System.out.println("departmentIndex:"+departmentIndex);
                                            teacher.setDepartmentId(allDepartments.get(departmentIndex).getId());
                                            break;
                                        case 6:
                                            /*for(int b=0;b<allJobLevels.size();b++){
                                                jobLevel=allJobLevels.get(b);
                                                if(cellValue.equals(jobLevel.getName())){
                                                    teacher.setJobLevelId(jobLevel.getId());
                                                }
                                            }*/
                                            int joblevelIndex = allJobLevels.indexOf(new JobLevel(cellValue));
                                            //System.out.println("joblevelIndex:"+joblevelIndex);
                                            teacher.setJobLevelId(allJobLevels.get(joblevelIndex).getId());
                                            break;
                                    }
                              /*  default: {//类型不是string,
                                   *//* switch (k){
                                        case 1:
                                            teacher.setWorkID(cell.getNumericCellValue());
                                            teacher.setUsername(cellValue);//用户名设置和工号相同
                                            break;

                                    }*//*
                                }*/

                           // }

                        }
                    }else{
                        break;
                    }

                    teacher.setEnabled(true);
                    list.add(teacher);


                }
            }


        } catch (IOException e) {
            e.printStackTrace();
        }

        return list;
    }

    //下载学生批量导入模板
    public static ResponseEntity<byte[]> student2Excel(List<String> classes) {
        //1、创建一个Excel文档
        HSSFWorkbook workbook = new HSSFWorkbook();
        //2.创建文档摘要
        workbook.createInformationProperties();
        //3.获取并配置文档信息
        DocumentSummaryInformation docInfo = workbook.getDocumentSummaryInformation();
        docInfo.setCategory("学生用户模板");//文档类别
        docInfo.setManager("admin");//文档管理员
        docInfo.setCompany("www.zzti.edu.cn");//组织结构
        //4.获取文档摘要信息
        SummaryInformation summaryInfo = workbook.getSummaryInformation();
        summaryInfo.setAuthor("zhang009");//文档作者
        summaryInfo.setComments("本文档由zhang009提供");//备注
        //5.创建样式
        //创建标题行样式
        HSSFCellStyle headerStyle=workbook.createCellStyle();
        headerStyle.setFillForegroundColor(IndexedColors.YELLOW.index);//加入背景颜色
        headerStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        headerStyle.setBorderBottom(BorderStyle.THIN); //下边框
        headerStyle.setBorderLeft(BorderStyle.THIN);//左边框
        headerStyle.setBorderTop(BorderStyle.THIN);//上边框
        headerStyle.setBorderRight(BorderStyle.THIN);//右边框
        HSSFFont font = workbook.createFont();//字体样式
        font.setFontName("宋体");
        font.setFontHeightInPoints((short) 10);//设置字体大小
      /*  font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);//粗体显示*/
        font.setBold(true);
        headerStyle.setFont(font);//选择需要用到的字体格式
        //    headerStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 居中
        headerStyle.setVerticalAlignment(VerticalAlignment.CENTER);//垂直
        headerStyle.setAlignment(HorizontalAlignment.CENTER);//水平
        //创建表单
        HSSFSheet sheet = workbook.createSheet("学生信息表");//参数为表单的名字Style
        //定义列的宽度
        //第一个参数为第几列，第二个参数为宽度
        sheet.setColumnWidth(0,10*256);//姓名
        sheet.setColumnWidth(1,15*256);//学号
        sheet.setColumnWidth(2,10*256);//性别
        sheet.setColumnWidth(3,20*256);//班级
        //6.创建标题行（表头）
        HSSFRow r0 = sheet.createRow(0);
        r0.setHeightInPoints(18);//设置单元格行高

        HSSFCell c0 = r0.createCell(0);
        c0.setCellValue("姓名");
        c0.setCellStyle(headerStyle);

        //创建第二列
        HSSFCell c1=r0.createCell(1);
        c1.setCellStyle(headerStyle);
        c1.setCellValue("学号");

        HSSFCell c2=r0.createCell(2);
        c2.setCellStyle(headerStyle);
        c2.setCellValue("性别");

        HSSFCell c3=r0.createCell(3);
        c3.setCellStyle(headerStyle);
        c3.setCellValue("班级");

        //创建工号为文本格式
        for(int i = 0;i < 500;i++)
        {
            HSSFRow row = sheet.createRow(i + 1);//创建行，第一行标题行已经创建
            //创建第i个单元格
            HSSFCell cell = row.createCell(1);
            if(cell.getCellType()!=CellType.STRING){//cell.getCellType()==1为字符串型
                cell.setCellType(CellType.STRING);
            }
            //新增的四句话，设置CELL格式为文本格式
            HSSFCellStyle cellStyle2 = workbook.createCellStyle();
            HSSFDataFormat format = workbook.createDataFormat();
            cellStyle2.setDataFormat(format.getFormat("@"));
            cell.setCellStyle(cellStyle2);
            cell.setCellType(CellType.STRING);
        }
        //加载下拉列表内容
       /* String [] classStr =classes.toArray(new String[classes.size()]);//集合转数组
        DVConstraint constraint = DVConstraint.createExplicitListConstraint(classStr);
        //设置数据有效性加载在哪个单元格上。
        //四个参数分别是：起始行、终止行、起始列、终止列
        int firstRow = 2-1;
        int lastRow = 500-1;
        int firstCol = 2-1;
        int lastCol = 2-1;
        CellRangeAddressList regions=new CellRangeAddressList(firstRow,lastRow,firstCol,lastCol);
        //设置数据有效性对象（下拉列表）
        DataValidation dataValidation = new HSSFDataValidation(regions,constraint);
        sheet.addValidationData(dataValidation);*/
        //
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        HttpHeaders headers=new HttpHeaders();

        try {
            headers.setContentDispositionFormData("attachment",new String("学生信息模板表.xls".getBytes("UTF-8"),"ISO-8859-1"));
            headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
            workbook.write(bos);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return new ResponseEntity<byte[]>(bos.toByteArray(),headers, HttpStatus.CREATED);
    }

    //把excel学生信息解析成list集合
    public static List<Student> excel2Student(MultipartFile file, List<Class> allClass) {
        List<Student> list=new ArrayList<>();
        Student student=null;
        Class clazz=null;
        try {
            //1.创建一个workbook对象
            HSSFWorkbook workbook = null;
            workbook = new HSSFWorkbook(file.getInputStream());
            //2.获取workbook中表单的数量
            int numberOfSheets = workbook.getNumberOfSheets();
            //   System.out.println("numberOfSheets:"+numberOfSheets);
            for (int i = 0; i < numberOfSheets; i++) {
                //3.获取表单
                HSSFSheet sheet = workbook.getSheetAt(0);
                //4.获取表单有多少行
                int physicalNumberOfRows = sheet.getPhysicalNumberOfRows();
                //    System.out.println("physicalNumberOfRows:"+physicalNumberOfRows);
                for (int j = 0; j < physicalNumberOfRows; j++) {
                    if (j == 0) {
                        continue;//5.标题行不解析
                    }
                    //6.获取行
                    HSSFRow row = sheet.getRow(j);
                    if (row == null) {
                        continue;//防止中间有空行
                    }
                    //7.获取列数
                    int physicalNumberOfCells = row.getPhysicalNumberOfCells();
                    //  System.out.println("列数：" + physicalNumberOfCells);
                    student = new Student();
                    if (physicalNumberOfCells == 4) {
                        for (int k = 0; k < physicalNumberOfCells; k++) {
                            HSSFCell cell = row.getCell(k);
                            //字符串格式、日期格式
                          /*  switch (cell.getCellType()) {
                                case STRING:*/
                            cell.setCellType(CellType.STRING);
                            String cellValue = cell.getStringCellValue();
                            //System.out.println("k:" + k + ",cellValue:" + cellValue);
                            switch (k) {
                                //根据列数决定如何处理
                                case 0:
                                    student.setName(cellValue);//姓名
                                    break;
                                case 1:
                                    student.setStudentNum(cellValue);
                                    student.setUsername(cellValue);//用户名设置和学号相同
                                    break;
                                case 2:
                                    student.setGender(cellValue);
                                    break;
                                case 3:
                                   int classIndex=allClass.indexOf(new Class(cellValue));
                                   student.setClassId(allClass.get(classIndex).getId());
                                    break;
                            }
                        }
                    }else{
                        break;
                    }

                   // System.out.println(student.toString());
                    list.add(student);


                }
            }


        } catch (IOException e) {
            e.printStackTrace();
        }
      //  System.out.println(list.toString());
        return list;
    }
}
