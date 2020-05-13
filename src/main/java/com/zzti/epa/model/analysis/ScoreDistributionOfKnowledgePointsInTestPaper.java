package com.zzti.epa.model.analysis;

import java.util.Arrays;

public class ScoreDistributionOfKnowledgePointsInTestPaper {
    String[] names;
    float[] scoreDistribution;

    @Override
    public String toString() {
        return "ScoreDistributionOfKnowledgePointsInTestPaper{" +
                "names=" + Arrays.toString(names) +
                ", scoreDistribution=" + Arrays.toString(scoreDistribution) +
                '}';
    }

    public String[] getNames() {
        return names;
    }

    public void setNames(String[] names) {
        this.names = names;
    }

    public float[] getScoreDistribution() {
        return scoreDistribution;
    }

    public void setScoreDistribution(float[] scoreDistribution) {
        this.scoreDistribution = scoreDistribution;
    }
}
