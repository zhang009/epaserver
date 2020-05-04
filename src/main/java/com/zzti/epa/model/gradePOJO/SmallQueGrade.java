package com.zzti.epa.model.gradePOJO;

/**
 * @ClassName SmallQueScore
 * @Description 成绩中小题的信息
 * @Author Administrator
 * @Date 2020-05-02 22:25
 **/
public class SmallQueGrade {

    private Float initScore;//初始分值
    private Float queGrade;//实际得分
    private Integer sortNum;//排序号
    private Integer questionScoreId;

    @Override
    public String toString() {
        return "SmallQueGrade{" +
                "initScore=" + initScore +
                ", queGrade=" + queGrade +
                ", sortNum=" + sortNum +
                ", questionScoreId=" + questionScoreId +
                '}';
    }

    public Float getInitScore() {
        return initScore;
    }

    public void setInitScore(Float initScore) {
        this.initScore = initScore;
    }

    public Float getQueGrade() {
        return queGrade;
    }

    public void setQueGrade(Float queGrade) {
        this.queGrade = queGrade;
    }

    public Integer getSortNum() {
        return sortNum;
    }

    public void setSortNum(Integer sortNum) {
        this.sortNum = sortNum;
    }

    public Integer getQuestionScoreId() {
        return questionScoreId;
    }

    public void setQuestionScoreId(Integer questionScoreId) {
        this.questionScoreId = questionScoreId;
    }
}
