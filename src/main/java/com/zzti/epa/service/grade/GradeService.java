package com.zzti.epa.service.grade;

import com.zzti.epa.mapper.grade.QuestionGradeMapper;
import com.zzti.epa.mapper.grade.StudentGradeMapper;
import com.zzti.epa.mapper.grade.TestPaperClassMapper;
import com.zzti.epa.mapper.paper.QuestionScoreMapper;
import com.zzti.epa.mapper.paper.TestPaperMapper;
import com.zzti.epa.model.Class;
import com.zzti.epa.model.*;
import com.zzti.epa.model.gradePOJO.LargeQues;
import com.zzti.epa.model.gradePOJO.SmallQueGrade;
import com.zzti.epa.service.question.*;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.CellType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName GradeService
 * @Description 成绩管理业务层
 * @Author Administrator
 * @Date 2020-05-01 6:53
 **/
@Service
public class GradeService {

    @Autowired
    TestPaperClassMapper testPaperClassMapper;
    @Autowired
    StudentGradeMapper studentGradeMapper;
    @Autowired
    QuestionGradeMapper questionGradeMapper;
    @Autowired
    QuestionScoreMapper questionScoreMapper;

    @Autowired
    TestPaperMapper testPaperMapper;

    @Autowired
    SCQuestionService scQuestionService;
    @Autowired
    MCQuestionService mcQuestionService;
    @Autowired
    TFQuestionService tfQuestionService;
    @Autowired
    FBQuestionService fbQuestionService;
    @Autowired
    QAQuestionService qaQuestionService;
    //获取该试卷下的班级列表
    public List<Class> getAllTestPaperClass(Integer testPaperId) {
        return testPaperClassMapper.getAllTestPaperClass(testPaperId);
    }

    public RespPageBean getStudentGrades(Integer page, Integer size, StudentGrade studentGrade) {
        //这里
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<StudentGrade> data=studentGradeMapper.getStudentGrades(page,size,studentGrade);
        //下面这里把成绩信息进行封装，加入小题成绩数据
        for (int k = 0; k < data.size(); k++) {//遍历每个成绩
            StudentGrade studentGrade1=data.get(k);
            /*-----------第一步.封装list<QuestionScore>----start---------------*/

            TestPaper testPaper=testPaperMapper.getAllTestPaperById(studentGrade1.getTestPaperId());
            //获取所有试题
            List<QuestionScore> questionScoreList=questionScoreMapper.getQuestionScoreByTestPaperId2(studentGrade1.getTestPaperId());

            testPaper.setQuestionScores(questionScoreList);

            /*-----------封装list<QuestionScore>--end-----------------*/
            //把试卷中的试题信息进行解析,并封装到List<LargeQues>中
            /*-----------第二步.封装list<LargeQues>----start---------------*/
            if(questionScoreList.size()>0){
                String []queTypes=testPaper.getQueTypes().split("@");//得到大题的题型（数组）
                List<LargeQues> largeQues=new ArrayList<>();//存放大题信息
                //从数组中遍历出大题题型，初始化大题List<LargeQues>集合
                for (int i = 0; i < queTypes.length; i++) {
                    LargeQues largeQue=new LargeQues();
                    largeQue.setQueType(queTypes[i]);//设置大题的题型
                    largeQue.setLargeQueScore(Float.valueOf(0));//大题分数初试为0，后面进行计算
                    largeQue.setLargeQueGrade(Float.valueOf(0));//大题成绩置0
                    largeQue.setSmallQueGrade(new ArrayList<>());//设置大题中小题的数组
                    largeQues.add(largeQue);
                }
                System.out.println(largeQues.toString());
                //遍历小题
                for (int i = 0; i < questionScoreList.size(); i++) {
                    QuestionScore questionScore=questionScoreList.get(i);//获取单个试题

                    for (int j = 0; j < largeQues.size(); j++) {
                        //遍历大题题型，把小题放到大题集合中

                        if(questionScore.getQueType().equals(largeQues.get(j).getQueType())){//如果题型一致
                            SmallQueGrade smallQueGrade=new SmallQueGrade();
                            smallQueGrade.setInitScore(questionScore.getQueScore());//初始化分值
                            smallQueGrade.setQuestionScoreId(questionScore.getId());
                            smallQueGrade.setSortNum(questionScore.getSortNum());//初始化排序号


                            largeQues.get(j).getSmallQueGrade().add(smallQueGrade);//把小题放入大题集合
                            largeQues.get(j).setLargeQueScore(largeQues.get(j).getLargeQueScore()+questionScore.getQueScore());//累加大题得分

                        }
                    }
                }
                studentGrade1.setLargeQues(largeQues);//把大题集合加入到成绩对象中

            }
            /*-----------封装list<LargeQues>----end---------------*/
            //下面查找小题分数，封装小题的的实际得分
            List<QuestionGrade> questionGradesList=questionGradeMapper.getQuestionGradeByStudentGradeId(studentGrade1.getId());
            System.out.println(">>>>>>>>>>>>>>>>>>>>questionGradesList.size():"+questionGradesList.size());
            System.out.println(">>>>>>>>>>>>>>>>>>>>questionGradesList:"+questionGradesList.toString());
            //这里需要把小题的成绩放到上面已经格式化好的集合中
            //思路，遍历大题-》找到大题的题型找到大题-》遍历大题中的小题-》根据小题中的questionScoreId和sortNum字段确定小题位置-》设置分数
            /*-----------第三步.封装list<LargeQues>----start---------------*/
            System.out.println("/*-----------第三步.封装list<LargeQues>----start---------------*/");
            for (int i = 0; i < questionGradesList.size(); i++) {
                QuestionGrade questionGrade=questionGradesList.get(i);//获取小题成绩
                System.out.println((i+1)+":"+questionGrade.getQueGrade());
                List<LargeQues> largeQuesList=studentGrade1.getLargeQues();//获取大题集合

                for (int j = 0; j <largeQuesList.size() ; j++) {
                    LargeQues largeQues=largeQuesList.get(j);
                    if(questionGrade.getQueType().equals(largeQues.getQueType())){
                        List<SmallQueGrade> smallQueGradesList=largeQues.getSmallQueGrade();//获取小题集合

                        for (int l = 0; l < smallQueGradesList.size(); l++) {
                            SmallQueGrade smallQueGrade=smallQueGradesList.get(l);


                            if((questionGrade.getQuestionScoreId().equals(smallQueGrade.getQuestionScoreId()))&&(questionGrade.getSortNum()==smallQueGrade.getSortNum())){//这里使用id的比较要使用equals
                                smallQueGrade.setQueGrade(questionGrade.getQueGrade());//设置小题得分
                                largeQues.setLargeQueGrade(largeQues.getLargeQueGrade()+questionGrade.getQueGrade());//累加大题得分

                            }
                        }
                    }
                }
            }
            /*-----------第三步.封装list<LargeQues>----end---------------*/
        }

        Long total=studentGradeMapper.getStudentGradesTotal(studentGrade);
        //总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(data);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;
    }

    public Integer addTestPaperClass(TestPaperClass testPaperClass) {
        return testPaperClassMapper.insertSelective(testPaperClass);
    }

    //添加学生成绩信息
    @Transactional
    public Boolean addStudentGrade(StudentGrade studentGrade) {
        //这里需要把小题成绩解析出来，存到小题成绩表
        System.out.println("studentGrade:"+studentGrade.toString());

        StudentGrade studentGrade1=new StudentGrade();
        studentGrade1.setStudentName(studentGrade.getStudentName());//设置学生姓名
        studentGrade1.setStudentNum(studentGrade.getStudentNum());//设置学生学号
        studentGrade1.setCourseId(studentGrade.getCourseId());//设置课程id
        studentGrade1.setClassId(studentGrade.getClassId());//设置班级id
        studentGrade1.setTotalGrade(studentGrade.getTotalGrade());//设置总成绩
        //添加学生成绩表
        studentGradeMapper.insertSelective(studentGrade);
        List<LargeQues> largeQues=studentGrade.getLargeQues();

        List<QuestionGrade> questionGrades=new ArrayList<>();//设置小题成绩数组
        for (int i = 0; i < largeQues.size(); i++) {
            LargeQues largeQues1=largeQues.get(i);

            //小题成绩表需要设置的字段为：studentGradeId、questionScoreId、queType、sortNum、queGrade、
            for (int j = 0; j < largeQues1.getSmallQueGrade().size(); j++) {
                SmallQueGrade smallQueGrade=largeQues1.getSmallQueGrade().get(j);//获取小题成绩
                QuestionGrade questionGrade=new QuestionGrade();//新建对象
                questionGrade.setQueType(largeQues1.getQueType());//设置试题类型
                questionGrade.setQueGrade(smallQueGrade.getQueGrade());//设置成绩值
                questionGrade.setQuestionScoreId(smallQueGrade.getQuestionScoreId());//设置试题分数id
                questionGrade.setSortNum(smallQueGrade.getSortNum());//设置试题的排序号
                questionGrade.setStudentGradeId(studentGrade.getId());//设置总成绩表id
                questionGrades.add(questionGrade);//加入到数组中
            }

        }
        return questionGradeMapper.addQuestonGradeList(questionGrades)==questionGrades.size();

    }

    //导入学生数据
    @Transactional
    public Boolean importStudentData(StudentGrade studentGrade, MultipartFile file) {
        //这里传过来的studentGrade已经具备了某些我们所需要的信息，这里需要在加上每个小题的分数信息
        //1.创建一个workbook对象
        HSSFWorkbook workbook = null;
        try {
            workbook = new HSSFWorkbook(file.getInputStream());
            //2.获取workbook中表单的数量
            int numberOfSheets = workbook.getNumberOfSheets();
            for (int i = 0; i < numberOfSheets; i++) {
                //3.获取表单
                HSSFSheet sheet = workbook.getSheetAt(i);
                //4.获取表单有多少行
                int physicalNumberOfRows = sheet.getPhysicalNumberOfRows();
              /*  System.out.println("physicalNumberOfRows:" + physicalNumberOfRows);*/

                if (physicalNumberOfRows == 1) {//如果某个表单数据为空
                    continue;
                }
                //当行数大于1表示有试题，循环解析
                Boolean flag=true;//判断是否插入出错标志
                //遍历每行的表单，也就是学生的数据
                for (int j = 0; j < physicalNumberOfRows; j++) {
                    if (j == 0) {
                        continue;//标题行不解析
                    }
                    //6.获取行
                    //System.out.println("第"+(j+1)+"行");
                    HSSFRow row = sheet.getRow(j);
                    if (row == null) {
                        continue;//防止中间有空行
                    }
                    //7.获取列数
                    int physicalNumberOfCells = row.getPhysicalNumberOfCells();

                  //  System.out.println("列数：" + physicalNumberOfCells);///这里的列数没有包括空格的列，实际的列数应+1
                    if(physicalNumberOfCells<3){
                        continue;
                    }
                    StudentGrade studentGrade1 = new StudentGrade();//保存每一行的成绩数据
                    studentGrade1.setTestPaperId(studentGrade.getTestPaperId());//设置试卷
                    studentGrade1.setCourseId(studentGrade.getCourseId());//设置课程
                    studentGrade1.setClassId(studentGrade.getClassId());//设置班级
                    //获取列
                    HSSFCell cell = row.getCell(0);//设置学号
                    cell.setCellType(CellType.STRING);
                    String cellValue1 = cell.getStringCellValue();
                    studentGrade1.setStudentNum(cellValue1);

                    HSSFCell cell2 = row.getCell(1);//设置姓名
                    cell2.setCellType(CellType.STRING);
                    String cellValue2 = cell2.getStringCellValue();
                  /*  System.out.println("姓名："+cellValue2);*/
                    studentGrade1.setStudentName(cellValue2);
                    HSSFCell cell3 = row.getCell(2);//设置总成绩
                    cell3.setCellType(CellType.STRING);
                    String cellValue3 = cell3.getStringCellValue();
                   /* System.out.println("总分："+cellValue3);*/
                    studentGrade1.setTotalGrade(Float.valueOf(cellValue3));

                   /* System.out.println(studentGrade1.toString());*/
                    studentGradeMapper.insertSelective(studentGrade1);//插入成绩表

                    Integer studentGradeId = studentGrade1.getId();//设置id

                    //这里需要注意的是大题和小题的信息是从返回的studentGrade对象中获取
                    List<LargeQues> largeQuesList = studentGrade.getLargeQues();//获取大题集合

                    List<QuestionGrade> questionGrades = new ArrayList<>();//新建小题成绩对象集合

                    int totalQueNum = 3;// //累计试题数量，这里是累积下标，因为列下标从0开始
                    for (int k = 0; k < largeQuesList.size(); k++) {

                        LargeQues largeQue = largeQuesList.get(k);//获取该大题的对象

                        //从大题的对象中获取小题

                        for (int l = 0; l < largeQue.getSmallQueGrade().size(); l++) {
                            if(totalQueNum<physicalNumberOfCells){//如果不超过列数
                                SmallQueGrade smallQueGrade = largeQue.getSmallQueGrade().get(l);//获取小题对象
                                //小题成绩表需要设置的字段为：studentGradeId、questionScoreId、queType、sortNum、queGrade、
                                QuestionGrade questionGrade = new QuestionGrade();//新建小题对象

                                questionGrade.setQueType(largeQue.getQueType());//设置试题类型
                               /* System.out.println(totalQueNum + 1);*/
                                HSSFCell gradeCell = row.getCell(totalQueNum + 1);
                               /* System.out.println("gradeCell"+gradeCell);*/
                                gradeCell.setCellType(CellType.STRING);
                                String gradeCellValue = gradeCell.getStringCellValue();

                                questionGrade.setQueGrade(Float.valueOf(gradeCellValue));//设置小题成绩值
                                questionGrade.setQuestionScoreId(smallQueGrade.getQuestionScoreId());//设置试题分数id
                                questionGrade.setSortNum(smallQueGrade.getSortNum());//设置试题的排序号
                                questionGrade.setStudentGradeId(studentGradeId);//设置总成绩表id
                                questionGrades.add(questionGrade);//加入到小题成绩集合中
                                totalQueNum++;//下标+1
                            }else{
                                break;
                            }

                        }
                    }
                    //遍历完大题，也就遍历完了每一行的所有列
                    //插入数据库
                    if( questionGradeMapper.addQuestonGradeList(questionGrades) != questionGrades.size()){
                        flag=false;
                    }
                }
                return flag;//这里只遍历一个表单，所以直接在执行完第一个表单return
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return false;
    }





    //下载成绩导入模板
    public StudentGrade exportData(Integer testPaperId, Integer courseId, Integer classId) {
        StudentGrade studentGrade=new StudentGrade();
        studentGrade.setTestPaperId(testPaperId);
        studentGrade.setCourseId(courseId);
        studentGrade.setClassId(classId);
        System.out.println("testPaperId:"+testPaperId+"courseId:"+courseId+"classId:"+classId);
        //首先根据试卷id,获取试卷的信息
            //这里把试题信息进行封装
            //首先获取试卷中的试题类型，放到集合中
        List<SCQuestion> sclist=new ArrayList<>();
        List<MCQuestion> mclist=new ArrayList<>();
        List<TFQuestion> tflist=new ArrayList<>();
        List<FBQuestion> fblist=new ArrayList<>();
        List<QAQuestion> qalist=new ArrayList<>();

        TestPaper testPaper=testPaperMapper.getAllTestPaperById(testPaperId);
        //获取所有试题
        List<QuestionScore> questionScoreList=questionScoreMapper.getQuestionScoreByTestPaperId2(testPaperId);

            //判断是系统组卷还是试卷模板
            if(testPaper.getIsTemplate()==0){
                //系统组卷
                for (int j = 0; j < questionScoreList.size(); j++) {
                    QuestionScore questionScore=questionScoreList.get(j);
                    //
                    if(questionScore.getQueType().equals("单选题")){
                        SCQuestion scQuestion=scQuestionService.getSCQuestionById(questionScore.getQuestionId());
                        sclist.add(scQuestion);
                    }else if(questionScore.getQueType().equals("多选题")){
                        MCQuestion mcQuestion=mcQuestionService.getMCQuestionById(questionScore.getQuestionId());
                        mclist.add(mcQuestion);
                    }else if(questionScore.getQueType().equals("判断题")){
                        TFQuestion tfQuestion=tfQuestionService.getTFQuestionById(questionScore.getQuestionId());
                        tflist.add(tfQuestion);
                    }else if(questionScore.getQueType().equals("填空题")){
                        FBQuestion fbQuestion=fbQuestionService.getFBQuestionById(questionScore.getQuestionId());
                        fblist.add(fbQuestion);

                    }else if(questionScore.getQueType().equals("简答题")){
                        QAQuestion qaQuestion=qaQuestionService.getQAQuestionById(questionScore.getQuestionId());
                        qalist.add(qaQuestion);
                    }
                }


                testPaper.setQuestionScores(questionScoreList);
                testPaper.setSclist(sclist);
                testPaper.setMclist(mclist);
                testPaper.setTflist(tflist);
                testPaper.setFblist(fblist);
                testPaper.setQalist(qalist);

            }else{
                //试卷模板
                testPaper.setQuestionScores(questionScoreList);
            }

            //把试卷中的试题信息进行解析
            if(questionScoreList.size()>0){
                String []queTypes=testPaper.getQueTypes().split("@");
                List<LargeQues> largeQues=new ArrayList<>();//存放大题信息
                //从集合中遍历出大题题型
                for (int i = 0; i < queTypes.length; i++) {
                    LargeQues largeQue=new LargeQues();
                    largeQue.setQueType(queTypes[i]);//设置大题的题型
                    largeQue.setSmallQueGrade(new ArrayList<>());//设置大题中小题的数组
                    largeQues.add(largeQue);
                }
                System.out.println(largeQues.toString());
                //遍历小题
                for (int i = 0; i < questionScoreList.size(); i++) {
                    QuestionScore questionScore=questionScoreList.get(i);//获取单个试题

                    for (int j = 0; j < largeQues.size(); j++) {
                        //遍历大题题型，把小题放到大题集合中

                        if(questionScore.getQueType().equals(largeQues.get(j).getQueType())){//如果题型一致
                            SmallQueGrade smallQueGrade=new SmallQueGrade();
                            smallQueGrade.setInitScore(questionScore.getQueScore());//初始化分值
                            smallQueGrade.setQuestionScoreId(questionScore.getId());
                            smallQueGrade.setSortNum(questionScore.getSortNum());//初始化排序号

                            largeQues.get(j).getSmallQueGrade().add(smallQueGrade);//把小题放入大题集合
                        }
                    }
                }
                studentGrade.setLargeQues(largeQues);//把大题集合加入到成绩对象中

            }
            return studentGrade;



    }

    //更新学生的信息
    @Transactional
    public boolean updateStudentGrade(StudentGrade studentGrade) {
        //这里需要把小题成绩解析出来，存到小题成绩表
       // System.out.println("studentGrade:"+studentGrade.toString());

       /* StudentGrade studentGrade1=new StudentGrade();
        studentGrade1.setStudentName(studentGrade.getStudentName());//设置学生姓名
        studentGrade1.setStudentNum(studentGrade.getStudentNum());//设置学生学号
        studentGrade1.setCourseId(studentGrade.getCourseId());//设置课程id
        studentGrade1.setClassId(studentGrade.getClassId());//设置班级id
        studentGrade1.setTotalGrade(studentGrade.getTotalGrade());//设置总成绩*/
        //修改学生成绩表
        studentGradeMapper.updateByPrimaryKeySelective(studentGrade);//更新成绩信息
        //从largeQues中解析出小题的成绩
        List<LargeQues> largeQues=studentGrade.getLargeQues();

        List<QuestionGrade> questionGrades=new ArrayList<>();//设置小题成绩数组
        for (int i = 0; i < largeQues.size(); i++) {
            LargeQues largeQues1=largeQues.get(i);

            //小题成绩表需要设置的字段为：studentGradeId、questionScoreId、queType、sortNum、queGrade、
            for (int j = 0; j < largeQues1.getSmallQueGrade().size(); j++) {
                SmallQueGrade smallQueGrade=largeQues1.getSmallQueGrade().get(j);//获取小题成绩
                QuestionGrade questionGrade=new QuestionGrade();//新建对象
                questionGrade.setQueType(largeQues1.getQueType());//设置试题类型
                questionGrade.setQueGrade(smallQueGrade.getQueGrade());//设置成绩值
                questionGrade.setQuestionScoreId(smallQueGrade.getQuestionScoreId());//设置试题分数id
                questionGrade.setSortNum(smallQueGrade.getSortNum());//设置试题的排序号
                questionGrade.setStudentGradeId(studentGrade.getId());//设置总成绩表id
                questionGrades.add(questionGrade);//加入到数组中
            }

        }
        questionGradeMapper.deleteQuestionGradeByStudentGradeId(studentGrade.getId());//删除该学生小题成绩
      //  System.out.println("questionGrades.size():"+questionGrades.size());
        return questionGradeMapper.addQuestonGradeList(questionGrades)==questionGrades.size();//添加该学生成绩

    }


    public List<StudentGrade> allOnlyStudentGrades(StudentGrade studentGrade) {

        return studentGradeMapper.allOnlyStudentGrades(studentGrade);
    }

    public int deleteStudentById(Integer id) {
        return studentGradeMapper.deleteByPrimaryKey(id);
    }



    public int deleteGradeByIds(Integer[] ids) {
        return studentGradeMapper.deleteGradeByIds(ids);
    }
}
