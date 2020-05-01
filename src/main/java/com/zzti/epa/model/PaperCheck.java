package com.zzti.epa.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class PaperCheck {
    private Integer id;

    private Integer testPaperId;

    private Integer testPaperType;

    private Integer postTeacherId;

    private Integer checkTeacherId;

    private Integer checkStatus;

    private String refuseReason;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm",timezone = "Asia/Shanghai")//第二个参数为设置时区
    private Date postTime;

    private TestPaper testPaper;

    private Teacher postTeacher;
    private Teacher checkTeacher;



    public Teacher getPostTeacher() {
        return postTeacher;
    }

    public void setPostTeacher(Teacher postTeacher) {
        this.postTeacher = postTeacher;
    }

    public Teacher getCheckTeacher() {
        return checkTeacher;
    }

    public void setCheckTeacher(Teacher checkTeacher) {
        this.checkTeacher = checkTeacher;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public TestPaper getTestPaper() {
        return testPaper;
    }

    public void setTestPaper(TestPaper testPaper) {
        this.testPaper = testPaper;
    }

    public Integer getTestPaperId() {
        return testPaperId;
    }

    public void setTestPaperId(Integer testPaperId) {
        this.testPaperId = testPaperId;
    }

    public Integer getTestPaperType() {
        return testPaperType;
    }

    public void setTestPaperType(Integer testPaperType) {
        this.testPaperType = testPaperType;
    }

    public Integer getPostTeacherId() {
        return postTeacherId;
    }

    public void setPostTeacherId(Integer postTeacherId) {
        this.postTeacherId = postTeacherId;
    }

    public Integer getCheckTeacherId() {
        return checkTeacherId;
    }

    public void setCheckTeacherId(Integer checkTeacherId) {
        this.checkTeacherId = checkTeacherId;
    }

    public Integer getCheckStatus() {
        return checkStatus;
    }

    public void setCheckStatus(Integer checkStatus) {
        this.checkStatus = checkStatus;
    }

    public String getRefuseReason() {
        return refuseReason;
    }

    public void setRefuseReason(String refuseReason) {
        this.refuseReason = refuseReason;
    }

    public Date getPostTime() {
        return postTime;
    }

    public void setPostTime(Date postTime) {
        this.postTime = postTime;
    }
}