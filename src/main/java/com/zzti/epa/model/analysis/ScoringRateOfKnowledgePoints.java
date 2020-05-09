package com.zzti.epa.model.analysis;

import java.util.Arrays;

public class ScoringRateOfKnowledgePoints {
    String[] knowledgePotins;
    float[] scoringRate;

    @Override
    public String toString() {
        return "ScoringRateOfKnowledgePoints{" +
                "knowledgePotins=" + Arrays.toString(knowledgePotins) +
                ", scoringRate=" + Arrays.toString(scoringRate) +
                '}';
    }

    public String[] getKnowledgePotins() {
        return knowledgePotins;
    }

    public void setKnowledgePotins(String[] knowledgePotins) {
        this.knowledgePotins = knowledgePotins;
    }

    public float[] getScoringRate() {
        return scoringRate;
    }

    public void setScoringRate(float[] scoringRate) {
        this.scoringRate = scoringRate;
    }
}
