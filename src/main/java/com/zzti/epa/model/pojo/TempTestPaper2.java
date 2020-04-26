package com.zzti.epa.model.pojo;

import java.util.List;

/**
 * @ClassName TempTestPaper2
 * @Description 用于接受前端的试卷模板对象
 * @Author Administrator
 * @Date 2020-04-26 16:52
 **/
public class TempTestPaper2 {
    private String name;
    private Integer schoolId;
    private Integer majorId;
    private String semester;
    private Integer courseId;
    private float totalScore;
    private float passScore;
    private String remark;
    private List<TemplateQuestions> questions;



    public float getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(float totalScore) {
        this.totalScore = totalScore;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(Integer schoolId) {
        this.schoolId = schoolId;
    }

    public Integer getMajorId() {
        return majorId;
    }

    public void setMajorId(Integer majorId) {
        this.majorId = majorId;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }


    public void setTotalScore(Integer totalScore) {
        this.totalScore = totalScore;
    }

    public float getPassScore() {
        return passScore;
    }

    public void setPassScore(float passScore) {
        this.passScore = passScore;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public List<TemplateQuestions> getQuestions() {
        return questions;
    }

    public void setQuestions(List<TemplateQuestions> questions) {
        this.questions = questions;
    }

    @Override
    public String toString() {
        return "TempTestPaper2{" +
                "name='" + name + '\'' +
                ", schoolId=" + schoolId +
                ", majorId=" + majorId +
                ", semester='" + semester + '\'' +
                ", courseId=" + courseId +
                ", totalScore=" + totalScore +
                ", passScore=" + passScore +
                ", remark='" + remark + '\'' +
                ", questions=" + questions +
                '}';
    }
}
