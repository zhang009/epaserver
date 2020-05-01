package com.zzti.epa.model;

public class StudentGrade {
    private Integer id;

    private String studentNum;

    private String studentName;

    private Integer courseId;
    private Integer classId;

    private Integer testPaperId;

    private Float totalGrade;

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