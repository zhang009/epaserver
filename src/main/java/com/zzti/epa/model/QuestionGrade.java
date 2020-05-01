package com.zzti.epa.model;

public class QuestionGrade {
    private Integer id;

    private Integer studentGradeId;

    private Integer questionScoreId;

    private String queType;

    private Integer sortNum;

    private Float queGrade;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStudentGradeId() {
        return studentGradeId;
    }

    public void setStudentGradeId(Integer studentGradeId) {
        this.studentGradeId = studentGradeId;
    }

    public Integer getQuestionScoreId() {
        return questionScoreId;
    }

    public void setQuestionScoreId(Integer questionScoreId) {
        this.questionScoreId = questionScoreId;
    }

    public String getQueType() {
        return queType;
    }

    public void setQueType(String queType) {
        this.queType = queType;
    }

    public Integer getSortNum() {
        return sortNum;
    }

    public void setSortNum(Integer sortNum) {
        this.sortNum = sortNum;
    }

    public Float getQueGrade() {
        return queGrade;
    }

    public void setQueGrade(Float queGrade) {
        this.queGrade = queGrade;
    }
}