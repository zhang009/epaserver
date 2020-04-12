package com.zzti.epa.model;

/**
* @Description:知识点类
* @Date: 2020-03-31  13:01
* @Param null:
* @return: null
**/
public class Knows {
    private Integer id;

    private String name;

    private Integer chapterId;

    @Override
    public String toString() {
        return "Knows{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", chapterId=" + chapterId +
                '}';
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

    public Integer getChapterId() {
        return chapterId;
    }

    public void setChapterId(Integer chapterId) {
        this.chapterId = chapterId;
    }
}