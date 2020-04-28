package com.zzti.epa.model;

import java.util.List;

public class QuestionScore {
    private Integer id;

    private Integer testPaperId;

    private Integer questionId;

    private String queType;

    private Integer sortNum;

    private Integer chapterId;

    private String knowIds;

    private Float queScore;

    private Chapter chapter;
    private List<Knows> knows;


    @Override
    public String toString() {
        return "QuestionScore{" +
                "id=" + id +
                ", testPaperId=" + testPaperId +
                ", questionId=" + questionId +
                ", queType='" + queType + '\'' +
                ", sortNum=" + sortNum +
                ", chapterId=" + chapterId +
                ", knowIds='" + knowIds + '\'' +
                ", queScore=" + queScore +
                ", chapter=" + chapter +
                ", knows=" + knows +
                '}';
    }

    public Chapter getChapter() {
        return chapter;
    }

    public void setChapter(Chapter chapter) {
        this.chapter = chapter;
    }

    public List<Knows> getKnows() {
        return knows;
    }

    public void setKnows(List<Knows> knows) {
        this.knows = knows;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTestPaperId() {
        return testPaperId;
    }

    public void setTestPaperId(Integer testPaperId) {
        this.testPaperId = testPaperId;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
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

    public Integer getChapterId() {
        return chapterId;
    }

    public void setChapterId(Integer chapterId) {
        this.chapterId = chapterId;
    }

    public String getKnowIds() {
        return knowIds;
    }

    public void setKnowIds(String knowIds) {
        this.knowIds = knowIds;
    }

    public Float getQueScore() {
        return queScore;
    }

    public void setQueScore(Float queScore) {
        this.queScore = queScore;
    }
}