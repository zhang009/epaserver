package com.zzti.epa.model.analysis;

import java.util.Arrays;

public class ScoringRateOfQuestionType {
    String[] questionType;      //题型
    float[] ScoringRate;        //得分率
    int length;                 //数组长度
    float[] fullMarks;          //每个题型的满分



    public float[] getFullMarks() {
        return fullMarks;
    }

    public void setFullMarks(float[] fullMarks) {
        this.fullMarks = fullMarks;
    }

    public String[] getQuestionType() {
        return questionType;
    }

    public void setQuestionType(String[] questionType) {
        this.questionType = questionType;
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

    @Override
    public String toString() {
        return "ScoringRateOfQuestionType{" +
                "questionType=" + Arrays.toString(questionType) +
                ", ScoringRate=" + Arrays.toString(ScoringRate) +
                ", length=" + length +
                ", fullMarks=" + Arrays.toString(fullMarks) +
                '}';
    }
}
