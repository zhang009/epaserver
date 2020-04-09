package com.zzti.epa.model;

public class TFQuestion {
    private Integer id;

    private String knowIds;

    private String stem;

    private String answer;

    private String analysis;

    private Integer teacherId;

    private Integer checkTeacherId;

    private Integer courseId;

    private Integer chapterId;

    private Byte dot;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getStem() {
        return stem;
    }

    public void setStem(String stem) {
        this.stem = stem == null ? null : stem.trim();
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer == null ? null : answer.trim();
    }

    public String getAnalysis() {
        return analysis;
    }

    public void setAnalysis(String analysis) {
        this.analysis = analysis == null ? null : analysis.trim();
    }

    public String getKnowIds() {
        return knowIds;
    }

    public void setKnowIds(String knowIds) {
        this.knowIds = knowIds;
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public Integer getCheckTeacherId() {
        return checkTeacherId;
    }

    public void setCheckTeacherId(Integer checkTeacherId) {
        this.checkTeacherId = checkTeacherId;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public Integer getChapterId() {
        return chapterId;
    }

    public void setChapterId(Integer chapterId) {
        this.chapterId = chapterId;
    }

    public Byte getDot() {
        return dot;
    }

    public void setDot(Byte dot) {
        this.dot = dot;
    }
}