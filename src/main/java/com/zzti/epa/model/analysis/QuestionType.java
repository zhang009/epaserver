package com.zzti.epa.model.analysis;

public class QuestionType {
    int id;
    String name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "QuestionType{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
