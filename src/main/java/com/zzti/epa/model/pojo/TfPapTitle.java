package com.zzti.epa.model.pojo;

/**
 * @ClassName TfPapTitle
 * @Description word中判断题的标题行
 * @Author Administrator
 * @Date 2020-04-22 15:32
 **/
public class TfPapTitle {
    private Integer tfLength;
    private Integer tfTotalScore;

    private Integer tfScore;

    private String tfAnswer;
    public Integer getTfScore() {
        return tfScore;
    }

    public String getTfAnswer() {
        return tfAnswer;
    }

    public void setTfAnswer(String tfAnswer) {
        this.tfAnswer = tfAnswer;
    }

    public void setTfScore(Integer tfScore) {
        this.tfScore = tfScore;
    }

    public Integer getTfLength() {
        return tfLength;
    }

    public void setTfLength(Integer tfLength) {
        this.tfLength = tfLength;
    }

    public Integer getTfTotalScore() {
        return tfTotalScore;
    }

    public void setTfTotalScore(Integer tfTotalScore) {
        this.tfTotalScore = tfTotalScore;
    }
}
