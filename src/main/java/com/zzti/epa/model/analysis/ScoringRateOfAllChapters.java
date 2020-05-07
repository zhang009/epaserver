package com.zzti.epa.model.analysis;

import java.util.Arrays;

public class ScoringRateOfAllChapters {
    String[] chapterName;
    float[] ScoringRate;
    int length;

    @Override
    public String toString() {
        return "ScoringRateOfAllChapters{" +
                "chapterName=" + Arrays.toString(chapterName) +
                ", ScoringRate=" + Arrays.toString(ScoringRate) +
                ", length=" + length +
                '}';
    }

    public String[] getChapterName() {
        return chapterName;
    }

    public void setChapterName(String[] chapterName) {
        this.chapterName = chapterName;
    }

    public float[] getScoringRate() {
        return ScoringRate;
    }

    public void setScoringRate(float[] scoringRate) {
        ScoringRate = scoringRate;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }
}
