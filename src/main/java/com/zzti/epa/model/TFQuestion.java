package com.zzti.epa.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;
import java.util.List;

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
    private Teacher teacher;
    private List<Knows> knows;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm",timezone = "Asia/Shanghai")//第二个参数为设置时区

    private Date updateTime;
    private int status;

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
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

    @Override
    public String toString() {
        return "TFQuestion{" +
                "id=" + id +
                ", knowIds='" + knowIds + '\'' +
                ", stem='" + stem + '\'' +
                ", answer='" + answer + '\'' +
                ", analysis='" + analysis + '\'' +
                ", teacherId=" + teacherId +
                ", checkTeacherId=" + checkTeacherId +
                ", courseId=" + courseId +
                ", chapterId=" + chapterId +
                ", dot=" + dot +
                ", teacher=" + teacher +
                ", knows=" + knows +
                ", updateTime=" + updateTime +
                ", status=" + status +
                '}';
    }

    public void setDot(Byte dot) {
        this.dot = dot;
    }
}