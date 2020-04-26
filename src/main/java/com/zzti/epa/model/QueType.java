package com.zzti.epa.model;

public class QueType {

    private Integer id;

    private String name;

    @Override
    public String toString() {
        return "QueType{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }

    public QueType() {
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
}