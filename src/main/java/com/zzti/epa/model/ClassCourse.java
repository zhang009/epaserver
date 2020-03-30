package com.zzti.epa.model;

public class ClassCourse {
    private Integer id;

    private Integer courseId;

    private Integer classId;

    public Integer getId() {
        return id;
    }

    public ClassCourse() {
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }
}