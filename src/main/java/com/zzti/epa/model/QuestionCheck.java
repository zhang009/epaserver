package com.zzti.epa.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class QuestionCheck {
    private Integer id;

    private Integer questionId;

    private Integer postTeacherId;

    private Integer checkTeacherId;

    private Byte checkStatus;

    private String questionType;

    private String refuseReason;

    private Teacher postTeacher;
    private Teacher checkTeacher;

    private Integer[] ids;//批量审核传递id数组

    private SCQuestion scQuestion;
    private MCQuestion mcQuestion;
    private TFQuestion tfQuestion;
    private FBQuestion fbQuestion;
    private QAQuestion qaQuestion;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm",timezone = "Asia/Shanghai")//第二个参数为设置时区
    private Date postTime;

    public QuestionCheck() {
    }

    @Override
    public String toString() {
        return "QuestionCheck{" +
                "id=" + id +
                ", questionId=" + questionId +
                ", postTeacherId=" + postTeacherId +
                ", checkTeacherId=" + checkTeacherId +
                ", checkStatus=" + checkStatus +
                ", questionType='" + questionType + '\'' +
                ", refuseReason='" + refuseReason + '\'' +
                ", postTeacher=" + postTeacher +
                ", checkTeacher=" + checkTeacher +
                ", scQuestion=" + scQuestion +
                ", mcQuestion=" + mcQuestion +
                ", tfQuestion=" + tfQuestion +
                ", fbQuestion=" + fbQuestion +
                ", qaQuestion=" + qaQuestion +
                ", postTime=" + postTime +
                '}';
    }

    public Integer[] getIds() {
        return ids;
    }

    public void setIds(Integer[] ids) {
        this.ids = ids;
    }

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

    public SCQuestion getScQuestion() {
        return scQuestion;
    }

    public void setScQuestion(SCQuestion scQuestion) {
        this.scQuestion = scQuestion;
    }

    public MCQuestion getMcQuestion() {
        return mcQuestion;
    }

    public void setMcQuestion(MCQuestion mcQuestion) {
        this.mcQuestion = mcQuestion;
    }

    public TFQuestion getTfQuestion() {
        return tfQuestion;
    }

    public void setTfQuestion(TFQuestion tfQuestion) {
        this.tfQuestion = tfQuestion;
    }

    public FBQuestion getFbQuestion() {
        return fbQuestion;
    }

    public void setFbQuestion(FBQuestion fbQuestion) {
        this.fbQuestion = fbQuestion;
    }

    public QAQuestion getQaQuestion() {
        return qaQuestion;
    }

    public void setQaQuestion(QAQuestion qaQuestion) {
        this.qaQuestion = qaQuestion;
    }

    public Date getPostTime() {
        return postTime;
    }

    public void setPostTime(Date postTime) {
        this.postTime = postTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
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

    public Byte getCheckStatus() {
        return checkStatus;
    }

    public void setCheckStatus(Byte checkStatus) {
        this.checkStatus = checkStatus;
    }

    public String getQuestionType() {
        return questionType;
    }

    public void setQuestionType(String questionType) {
        this.questionType = questionType;
    }

    public String getRefuseReason() {
        return refuseReason;
    }

    public void setRefuseReason(String refuseReason) {
        this.refuseReason = refuseReason;
    }
}