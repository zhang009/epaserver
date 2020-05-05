package com.zzti.epa.model;

import com.zzti.epa.model.gradePOJO.LargeQues;

import java.util.List;

public class StudentGrade {
    private Integer id;

    private String studentNum;

    private String studentName;

    private Integer courseId;
    private Integer classId;

    private Integer testPaperId;

    private Float totalGrade;

    private Class clazz;

    @Override
    public String toString() {
        return "StudentGrade{" +
                "id=" + id +
                ", studentNum='" + studentNum + '\'' +
                ", studentName='" + studentName + '\'' +
                ", courseId=" + courseId +
                ", classId=" + classId +
                ", testPaperId=" + testPaperId +
                ", totalGrade=" + totalGrade +
                ", clazz=" + clazz +
                ", largeQues=" + largeQues +
                '}';
    }

    private List<LargeQues> largeQues;//这里主要用来传递前端的试题成绩信息



    public List<LargeQues> getLargeQues() {
        return largeQues;
    }

    public void setLargeQues(List<LargeQues> largeQues) {
        this.largeQues = largeQues;
    }

    public Class getClazz() {
        return clazz;
    }

    public void setClazz(Class clazz) {
        this.clazz = clazz;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStudentNum() {
        return studentNum;
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public void setStudentNum(String studentNum) {
        this.studentNum = studentNum;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public Integer getTestPaperId() {
        return testPaperId;
    }

    public void setTestPaperId(Integer testPaperId) {
        this.testPaperId = testPaperId;
    }

    public Float getTotalGrade() {
        return totalGrade;
    }

    public void setTotalGrade(Float totalGrade) {
        this.totalGrade = totalGrade;
    }
}