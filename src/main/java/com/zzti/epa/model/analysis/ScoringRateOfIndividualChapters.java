package com.zzti.epa.model.analysis;

import java.util.Arrays;

public class ScoringRateOfIndividualChapters {
    String[] name;  //章节名称
    float[] Rate;   //章节得分率

    @Override
    public String toString() {
        return "ScoringRateOfIndividualChapters{" +
                "name=" + Arrays.toString(name) +
                ", Rate=" + Arrays.toString(Rate) +
                '}';
    }

    public String[] getName() {
        return name;
    }

    public void setName(String[] name) {
        this.name = name;
    }

    public float[] getRate() {
        return Rate;
    }

    public void setRate(float[] rate) {
        Rate = rate;
    }
}
