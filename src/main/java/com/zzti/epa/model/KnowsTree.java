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
    private List<KnowsTree> children;

    public KnowsTree() {
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
}
