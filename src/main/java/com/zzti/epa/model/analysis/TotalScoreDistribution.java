package com.zzti.epa.model.analysis;

import java.util.Arrays;

public class TotalScoreDistribution {
    String[] section;   //需要统计的分数区间
    int[] people_num;//各个区间的人数
    int length;         //数组实际长度

    public String[] getSection() {
        return section;
    }

    public void setSection(String[] section) {
        this.section = section;
    }

    public int[] getPeople_num() {
        return people_num;
    }

    public void setPeople_num(int[] people_num) {
        this.people_num = people_num;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    @Override
    public String toString() {
        return "TotalScoreDistribution{" +
                "section=" + Arrays.toString(section) +
                ", people_num=" + Arrays.toString(people_num) +
                ", length=" + length +
                '}';
    }
}
