package com.zzti.epa.model.analysis;

import java.util.Arrays;

public class ScoreRateOfPersonalKnowledgePoints {
    String[] name;  //知识点名称
    float[] rate;   //章节名称

    @Override
    public String toString() {
        return "ScoreRateOfPersonalKnowledgePoints{" +
                "name=" + Arrays.toString(name) +
                ", rate=" + Arrays.toString(rate) +
                '}';
    }

    public String[] getName() {
        return name;
    }

    public void setName(String[] name) {
        this.name = name;
    }

    public float[] getRate() {
        return rate;
    }

    public void setRate(float[] rate) {
        this.rate = rate;
    }
}
