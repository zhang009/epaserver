package com.zzti.epa.model.pojo;

/**
 * @ClassName ScPapTitle
 * @Description word中单选题的标题行
 * @Author Administrator
 * @Date 2020-04-22 15:20
 **/
public class ScPapTitle {
    private Integer scLength;
    private Integer scTotalScore;
    private Integer scScore;
    private String scAnswer;

    public String getScAnswer() {
        return scAnswer;
    }

    public void setScAnswer(String scAnswer) {
        this.scAnswer = scAnswer;
    }

    public Integer getScScore() {
        return scScore;
    }

    public void setScScore(Integer scScore) {
        this.scScore = scScore;
    }

    public Integer getScLength() {
        return scLength;
    }

    public void setScLength(Integer scLength) {
        this.scLength = scLength;
    }

    public Integer getScTotalScore() {
        return scTotalScore;
    }

    public void setScTotalScore(Integer scTotalScore) {
        this.scTotalScore = scTotalScore;
    }
}
