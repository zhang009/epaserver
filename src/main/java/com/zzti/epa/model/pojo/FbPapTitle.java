package com.zzti.epa.model.pojo;

/**
 * @ClassName FbPapTitle
 * @Description  word中填空题的标题行
 * @Author Administrator
 * @Date 2020-04-22 15:33
 **/
public class FbPapTitle {
    private Integer fbLength;//填空题的数量
    private Integer fbTotalScore;//填空题的分数
    private Integer fbScore2;
    private String  fbAnswer;

    public Integer getFbScore2() {
        return fbScore2;
    }

    public void setFbScore2(Integer fbScore2) {
        this.fbScore2 = fbScore2;
    }

    @Override
    public String toString() {
        return "FbPapTitle{" +
                "fbLength=" + fbLength +
                ", fbTotalScore=" + fbTotalScore +
                ", fbAnswer='" + fbAnswer + '\'' +
                '}';
    }

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
