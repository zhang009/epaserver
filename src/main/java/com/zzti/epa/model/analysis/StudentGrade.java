package com.zzti.epa.model.analysis;

public class StudentGrade {
    int id;             //主键
    String stuId;       //学生学号
    String studentName; //姓名
    int courseId;       //课程编号
    int paperId;        //试卷编号
    float totalScore;   //总分
    int classId;        //班级id

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public int getPaperId() {
        return paperId;
    }

    public void setPaperId(int paperId) {
        this.paperId = paperId;
    }

    public float getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(float totalScore) {
        this.totalScore = totalScore;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    @Override
    public String toString() {
        return "StudentGrade{" +
                "id=" + id +
                ", stuId='" + stuId + '\'' +
                ", studentName='" + studentName + '\'' +
                ", courseId=" + courseId +
                ", paperId=" + paperId +
                ", totalScore=" + totalScore +
                ", classId=" + classId +
                '}';
    }
}
