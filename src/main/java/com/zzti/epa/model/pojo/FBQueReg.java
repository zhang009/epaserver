package com.zzti.epa.model.pojo;

/**
 * @ClassName FBQueReg
 * @Description 填空题规约
 * @Author Administrator
 * @Date 2020-04-24 9:47
 **/
public class FBQueReg {
    //题型的数量
    private Integer fbQueNum;
    //简单题难度数量
    private Integer dot1Num;
    //适中难度数量
    private Integer dot2Num;
    //偏难难度数量
    private Integer dot3Num;
    //难题难度数量
    private Integer dot4Num;

    @Override
    public String toString() {
        return "FBQueReg{" +
                "fbQueNum=" + fbQueNum +
                ", dot1Num=" + dot1Num +
                ", dot2Num=" + dot2Num +
                ", dot3Num=" + dot3Num +
                ", dot4Num=" + dot4Num +
                '}';
    }

    public Integer getFbQueNum() {
        return fbQueNum;
    }

    public void setFbQueNum(Integer fbQueNum) {
        this.fbQueNum = fbQueNum;
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
