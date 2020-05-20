package com.zzti.epa.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class TestPaper {
    private Integer id;

    private String name;

    private Integer schoolId;

    private Integer majorId;

    private String semester;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm",timezone = "Asia/Shanghai")//第二个参数为设置时区
    private Date createTime;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm",timezone = "Asia/Shanghai")//第二个参数为设置时区
    private Date updateTime;

    private Integer courseId;

    private String chapterIds;

    private String knowIds;

    private Integer postTeacherId;

    private Integer checkTeacherId;

    private Integer status;

    private Integer paperType;

    private String remark;

    private Float totalScore;

    private Float passScore;

    private String queTypes;

    private Integer isTemplate;

    private Float dot;

    private Course course;

    private School school;

    private Major major;

    private Float studentTotalGrade;//存放学生的成绩

    private Float scScore;
    private Float mcScore;
    private Float tfScore;
    private Float[] fbScore;
    private Float fbScore2;
    private Float[] qaScore;
    private Float qaScore2;

    private List<SCQuestion> sclist;//这里主要用来存储前端传过来的排序过后的试题id
    private List<MCQuestion> mclist;
    private List<TFQuestion> tflist;
    private List<FBQuestion> fblist;
    private List<QAQuestion> qalist;

    private List<QuestionScore> questionScores;//这里主要是为了向前端传试卷模板的试题数据

    private Teacher teacher;//试卷创建教师信息


    public Float getStudentTotalGrade() {
        return studentTotalGrade;
    }

    public void setStudentTotalGrade(Float studentTotalGrade) {
        this.studentTotalGrade = studentTotalGrade;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public List<QuestionScore> getQuestionScores() {
        return questionScores;
    }

    public void setQuestionScores(List<QuestionScore> questionScores) {
        this.questionScores = questionScores;
    }

    public Integer getIsTemplate() {
        return isTemplate;
    }

    public void setIsTemplate(Integer isTemplate) {
        this.isTemplate = isTemplate;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public School getSchool() {
        return school;
    }

    public void setSchool(School school) {
        this.school = school;
    }

    public Major getMajor() {
        return major;
    }

    public void setMajor(Major major) {
        this.major = major;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

    public Float getFbScore2() {
        return fbScore2;
    }

    public void setFbScore2(Float fbScore2) {
        this.fbScore2 = fbScore2;
    }

    public Float getQaScore2() {
        return qaScore2;
    }

    public void setQaScore2(Float qaScore2) {
        this.qaScore2 = qaScore2;
    }

    @Override
    public String toString() {
        return "TestPaper{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", schoolId=" + schoolId +
                ", majorId=" + majorId +
                ", semester='" + semester + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", courseId=" + courseId +
                ", chapterIds='" + chapterIds + '\'' +
                ", knowIds='" + knowIds + '\'' +
                ", postTeacherId=" + postTeacherId +
                ", checkTeacherId=" + checkTeacherId +
                ", status=" + status +
                ", paperType=" + paperType +
                ", remark='" + remark + '\'' +
                ", totalScore=" + totalScore +
                ", passScore=" + passScore +
                ", queTypes='" + queTypes + '\'' +
                ", isTemplate=" + isTemplate +
                ", dot=" + dot +
                ", course=" + course +
                ", school=" + school +
                ", major=" + major +
                ", scScore=" + scScore +
                ", mcScore=" + mcScore +
                ", tfScore=" + tfScore +
                ", fbScore=" + Arrays.toString(fbScore) +
                ", fbScore2=" + fbScore2 +
                ", qaScore=" + Arrays.toString(qaScore) +
                ", qaScore2=" + qaScore2 +
                ", sclist=" + sclist +
                ", mclist=" + mclist +
                ", tflist=" + tflist +
                ", fblist=" + fblist +
                ", qalist=" + qalist +
                ", questionScores=" + questionScores +
                ", teacher=" + teacher +
                '}';
    }

    public Float getScScore() {
        return scScore;
    }

    public void setScScore(Float scScore) {
        this.scScore = scScore;
    }

    public Float getMcScore() {
        return mcScore;
    }

    public void setMcScore(Float mcScore) {
        this.mcScore = mcScore;
    }

    public Float getTfScore() {
        return tfScore;
    }

    public void setTfScore(Float tfScore) {
        this.tfScore = tfScore;
    }

    public Float[] getFbScore() {
        return fbScore;
    }

    public void setFbScore(Float[] fbScore) {
        this.fbScore = fbScore;
    }

    public Float[] getQaScore() {
        return qaScore;
    }

    public void setQaScore(Float[] qaScore) {
        this.qaScore = qaScore;
    }

    public List<SCQuestion> getSclist() {
        return sclist;
    }

    public void setSclist(List<SCQuestion> sclist) {
        this.sclist = sclist;
    }

    public List<MCQuestion> getMclist() {
        return mclist;
    }

    public void setMclist(List<MCQuestion> mclist) {
        this.mclist = mclist;
    }

    public List<TFQuestion> getTflist() {
        return tflist;
    }

    public void setTflist(List<TFQuestion> tflist) {
        this.tflist = tflist;
    }

    public List<FBQuestion> getFblist() {
        return fblist;
    }

    public void setFblist(List<FBQuestion> fblist) {
        this.fblist = fblist;
    }

    public List<QAQuestion> getQalist() {
        return qalist;
    }

    public void setQalist(List<QAQuestion> qalist) {
        this.qalist = qalist;
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

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public String getChapterIds() {
        return chapterIds;
    }

    public void setChapterIds(String chapterIds) {
        this.chapterIds = chapterIds;
    }

    public String getKnowIds() {
        return knowIds;
    }

    public void setKnowIds(String knowIds) {
        this.knowIds = knowIds;
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

    public Integer getPaperType() {
        return paperType;
    }

    public void setPaperType(Integer paperType) {
        this.paperType = paperType;
    }

    public Float getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(Float totalScore) {
        this.totalScore = totalScore;
    }

    public Float getPassScore() {
        return passScore;
    }

    public void setPassScore(Float passScore) {
        this.passScore = passScore;
    }

    public String getQueTypes() {
        return queTypes;
    }

    public void setQueTypes(String queTypes) {
        this.queTypes = queTypes;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }


    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }



    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }



    public Float getDot() {
        return dot;
    }

    public void setDot(Float dot) {
        this.dot = dot;
    }
}