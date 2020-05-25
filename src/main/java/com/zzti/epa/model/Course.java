package com.zzti.epa.model;

import java.util.List;

public class Course {
    private Integer id;

    private String name;

    private String term;

    private Integer classId;//这里的classId只是为了接受前端的classId才在这里定义，
                            // 注意班级和课程是多对多的关系，之间的联系靠关系表来实现
    private Integer majorId;

    private String className;
    private Integer schoolId;

    private Integer[] classIds;//课程与班级为多对多关系
    private Integer[] majorIds;//专业和课程是一对多关系

    private List<Major> majors;
    private List<Class> classes;

    public List<Major> getMajors() {
        return majors;
    }

    public void setMajors(List<Major> majors) {
        this.majors = majors;
    }

    public List<Class> getClasses() {
        return classes;
    }

    public void setClasses(List<Class> classes) {
        this.classes = classes;
    }

    public Integer[] getClassIds() {
        return classIds;
    }

    public void setClassIds(Integer[] classIds) {
        this.classIds = classIds;
    }

    public Integer[] getMajorIds() {
        return majorIds;
    }

    public void setMajorIds(Integer[] majorIds) {
        this.majorIds = majorIds;
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

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public void setMajorId(Integer majorId) {
        this.majorId = majorId;
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

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term == null ? null : term.trim();
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    @Override
    public String toString() {
        return "Course{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", term='" + term + '\'' +
                ", classId=" + classId +
                ", majorId=" + majorId +
                '}';
    }
}