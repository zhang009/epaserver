package com.zzti.epa.model.pojo;

/**
 * @ClassName QAQueReg
 * @Description 简答题
 * @Author Administrator
 * @Date 2020-04-24 9:48
 **/
public class QAQueReg {
    //题型的数量
    private Integer qaQueNum;
    //简单题难度数量
    private Integer dot1Num;
    //适中难度数量
    private Integer dot2Num;
    //偏难难度数量
    private Integer dot3Num;
    //难题难度数量
    private Integer dot4Num;

    public Integer getQaQueNum() {
        return qaQueNum;
    }

    public void setQaQueNum(Integer qaQueNum) {
        this.qaQueNum = qaQueNum;
    }

    public Integer getDot1Num() {
        return dot1Num;
    }

    public void setDot1Num(Integer dot1Num) {
        this.dot1Num = dot1Num;
    }

    public Integer getDot2Num() {
        return dot2Num;
    }

    public void setDot2Num(Integer dot2Num) {
        this.dot2Num = dot2Num;
    }

    public Integer getDot3Num() {
        return dot3Num;
    }

    public void setDot3Num(Integer dot3Num) {
        this.dot3Num = dot3Num;
    }

    public Integer getDot4Num() {
        return dot4Num;
    }

    public void setDot4Num(Integer dot4Num) {
        this.dot4Num = dot4Num;
    }
}
