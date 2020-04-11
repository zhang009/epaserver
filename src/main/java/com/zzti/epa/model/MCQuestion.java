package com.zzti.epa.model;

import java.util.List;

public class MCQuestion {
    private Integer id;

    private String knowIds;

    private String stem;

    private String answer;

    private String analysis;

    private Integer checkTeacherId;

    private Integer teacherId;

    private Integer courseId;

    private Integer chapterId;

    private Byte dot;
    private  Teacher teacher;
    private List<MCOption> options;
    private List<Knows> knows;

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

    @Override
    public String toString() {
        return "MCQuestion{" +
                "id=" + id +
                ", knowIds='" + knowIds + '\'' +
                ", stem='" + stem + '\'' +
                ", answer='" + answer + '\'' +
                ", analysis='" + analysis + '\'' +
                ", checkTeacherId=" + checkTeacherId +
                ", teacherId=" + teacherId +
                ", courseId=" + courseId +
                ", chapterId=" + chapterId +
                ", dot=" + dot +
                ", options=" + options +
                '}';
    }

    public List<MCOption> getOptions() {
        return options;
    }

    public void setOptions(List<MCOption> options) {
        this.options = options;
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

    public Integer getCheckTeacherId() {
        return checkTeacherId;
    }

    public void setCheckTeacherId(Integer checkTeacherId) {
        this.checkTeacherId = checkTeacherId;
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
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