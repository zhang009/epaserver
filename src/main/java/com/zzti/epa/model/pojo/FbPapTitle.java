package com.zzti.epa.model.pojo;

/**
 * @ClassName FbPapTitle
 * @Description  word中填空题的标题行
 * @Author Administrator
 * @Date 2020-04-22 15:33
 **/
public class FbPapTitle {
    private Integer fbLength;
    private Integer fbTotalScore;

    private String  fbAnswer;
    public Integer getFbLength() {
        return fbLength;
    }

    public String getFbAnswer() {
        return fbAnswer;
    }

    public void setFbAnswer(String fbAnswer) {
        this.fbAnswer = fbAnswer;
    }

    public void setFbLength(Integer fbLength) {
        this.fbLength = fbLength;
    }

    public Integer getFbTotalScore() {
        return fbTotalScore;
    }

    public void setFbTotalScore(Integer fbTotalScore) {
        this.fbTotalScore = fbTotalScore;
    }
}
