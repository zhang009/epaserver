package com.zzti.epa.model.pojo;

/**
 * @ClassName QaPapTitle
 * @Description word中简答题的标题行
 * @Author Administrator
 * @Date 2020-04-22 15:35
 **/
public class QaPapTitle {
    private Integer qaLength;
    private Integer qaTotalScore;

    private String qaAnswer;
    public Integer getQaLength() {
        return qaLength;
    }

    public String getQaAnswer() {
        return qaAnswer;
    }

    public void setQaAnswer(String qaAnswer) {
        this.qaAnswer = qaAnswer;
    }

    public void setQaLength(Integer qaLength) {
        this.qaLength = qaLength;
    }

    public Integer getQaTotalScore() {
        return qaTotalScore;
    }

    public void setQaTotalScore(Integer qaTotalScore) {
        this.qaTotalScore = qaTotalScore;
    }
}
