package com.zzti.epa.model;
/**
* @Description:章节类
* @Date: 2020-03-31  13:02
* @Param null:
* @return: null
**/
public class Chapter {
    private Integer id;

    private String name;

    private Integer courseId;

    public Chapter() {
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

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }
}