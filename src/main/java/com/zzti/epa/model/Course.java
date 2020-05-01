package com.zzti.epa.model;

public class Course {
    private Integer id;

    private String name;

    private String term;

    private Integer classId;//这里的classId只是为了接受前端的classId才在这里定义，
                            // 注意班级和课程是多对多的关系，之间的联系靠关系表来实现


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
                '}';
    }
}