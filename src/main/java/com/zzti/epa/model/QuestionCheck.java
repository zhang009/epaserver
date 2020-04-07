package com.zzti.epa.model;

public class QuestionCheck {
    private Integer id;

    private Integer questionid;

    private Integer postteacherid;

    private Integer checkteacherid;

    private Byte checkstatus;

    private String refusereason;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getQuestionid() {
        return questionid;
    }

    public void setQuestionid(Integer questionid) {
        this.questionid = questionid;
    }

    public Integer getPostteacherid() {
        return postteacherid;
    }

    public void setPostteacherid(Integer postteacherid) {
        this.postteacherid = postteacherid;
    }

    public Integer getCheckteacherid() {
        return checkteacherid;
    }

    public void setCheckteacherid(Integer checkteacherid) {
        this.checkteacherid = checkteacherid;
    }

    public Byte getCheckstatus() {
        return checkstatus;
    }

    public void setCheckstatus(Byte checkstatus) {
        this.checkstatus = checkstatus;
    }

    public String getRefusereason() {
        return refusereason;
    }

    public void setRefusereason(String refusereason) {
        this.refusereason = refusereason == null ? null : refusereason.trim();
    }
}