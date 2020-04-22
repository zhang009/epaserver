package com.zzti.epa.model.pojo;

/**
 * @ClassName McPapTitle
 * @Description 导出试卷中多选题标题行
 * @Author Administrator
 * @Date 2020-04-22 15:29
 **/
public class McPapTitle {
    private Integer mcLength;
    private Integer mcTotalScore;

    private Integer mcScore;

    private String mcAnswer;

    public String getMcAnswer() {
        return mcAnswer;
    }

    public void setMcAnswer(String mcAnswer) {
        this.mcAnswer = mcAnswer;
    }

    public Integer getMcLength() {
        return mcLength;
    }

    public Integer getMcScore() {
        return mcScore;
    }

    public void setMcScore(Integer mcScore) {
        this.mcScore = mcScore;
    }

    public void setMcLength(Integer mcLength) {
        this.mcLength = mcLength;
    }

    public Integer getMcTotalScore() {
        return mcTotalScore;
    }

    public void setMcTotalScore(Integer mcTotalScore) {
        this.mcTotalScore = mcTotalScore;
    }
}
