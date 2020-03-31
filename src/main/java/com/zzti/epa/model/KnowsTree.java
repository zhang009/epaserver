package com.zzti.epa.model;

import java.util.List;

/**
 * @ClassName KnowsTree
 * @Description TODO
 * @Author Administrator
 * @Date 2020-03-30 19:43
 **/
public class KnowsTree {
    private Integer id;
    private String name;
    private Integer parentId;
    private String icon;
    private List<KnowsTree> children;

    public KnowsTree() {
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
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
        this.name = name;
    }

    public List<KnowsTree> getChildren() {
        return children;
    }

    public void setChildren(List<KnowsTree> children) {
        this.children = children;
    }

    @Override
    public String toString() {
        return "KnowsTree{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", parentId=" + parentId +
                ", icon='" + icon + '\'' +
                ", children=" + children +
                '}';
    }
}
