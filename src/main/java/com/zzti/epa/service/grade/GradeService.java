package com.zzti.epa.service.grade;

import com.zzti.epa.mapper.grade.QuestionGradeMapper;
import com.zzti.epa.mapper.grade.StudentGradeMapper;
import com.zzti.epa.mapper.grade.TestPaperClassMapper;
import com.zzti.epa.model.*;
import com.zzti.epa.model.Class;
import com.zzti.epa.model.gradePOJO.LargeQues;
import com.zzti.epa.model.gradePOJO.SmallQueGrade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
}
