package com.zzti.epa.model.analysis;

import java.sql.Timestamp;
import java.util.Date;

public class TestPaper {
    int id;         //试卷id
    float name;     //试卷名称
    int schoolId;   //学院id
    int majorId;    //专业id
    String Term;    //学年
    Date createTime;//创建时间
    Timestamp updateTime;//修改时间
    int courseId;       //课程编号
    String KnowIds;     //知识点id
    String chapterIds;  //章节知识点
    int postTeacherId;  //出卷人id
    int checkTeacherId; //审核人Id
    int status;         //试卷状态
    int PaperType;      //组卷类别
    String remark;      //试卷备注信息
    float totalScore;   //总分值
    float PassScore;    //及格分
    String QueTypes;    //题目中包含的题型
    float dot;          //试卷难度

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public float getName() {
        return name;
    }

    public void setName(float name) {
        this.name = name;
    }

    public int getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(int schoolId) {
        this.schoolId = schoolId;
    }

    public int getMajorId() {
        return majorId;
    }

    public void setMajorId(int majorId) {
        this.majorId = majorId;
    }

    public String getTerm() {
        return Term;
    }

    public void setTerm(String term) {
        Term = term;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Timestamp getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Timestamp updateTime) {
        this.updateTime = updateTime;
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public String getKnowIds() {
        return KnowIds;
    }

    public void setKnowIds(String knowIds) {
        KnowIds = knowIds;
    }

    public String getChapterIds() {
        return chapterIds;
    }

    public void setChapterIds(String chapterIds) {
        this.chapterIds = chapterIds;
    }

    public int getPostTeacherId() {
        return postTeacherId;
    }

    public void setPostTeacherId(int postTeacherId) {
        this.postTeacherId = postTeacherId;
    }

    public int getCheckTeacherId() {
        return checkTeacherId;
    }

    public void setCheckTeacherId(int checkTeacherId) {
        this.checkTeacherId = checkTeacherId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getPaperType() {
        return PaperType;
    }

    public void setPaperType(int paperType) {
        PaperType = paperType;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public float getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(float totalScore) {
        this.totalScore = totalScore;
    }

    public float getPassScore() {
        return PassScore;
    }

    public void setPassScore(float passScore) {
        PassScore = passScore;
    }

    public String getQueTypes() {
        return QueTypes;
    }

    public void setQueTypes(String queTypes) {
        QueTypes = queTypes;
    }

    public float getDot() {
        return dot;
    }

    public void setDot(float dot) {
        this.dot = dot;
    }

    @Override
    public String toString() {
        return "TestPaper{" +
                "id=" + id +
                ", name=" + name +
                ", schoolId=" + schoolId +
                ", majorId=" + majorId +
                ", Term='" + Term + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", courseId=" + courseId +
                ", KnowIds='" + KnowIds + '\'' +
                ", chapterIds='" + chapterIds + '\'' +
                ", postTeacherId=" + postTeacherId +
                ", checkTeacherId=" + checkTeacherId +
                ", status=" + status +
                ", PaperType=" + PaperType +
                ", remark='" + remark + '\'' +
                ", totalScore=" + totalScore +
                ", PassScore=" + PassScore +
                ", QueTypes='" + QueTypes + '\'' +
                ", dot=" + dot +
                '}';
    }
}
