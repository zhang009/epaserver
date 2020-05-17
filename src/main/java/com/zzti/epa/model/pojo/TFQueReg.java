package com.zzti.epa.model.pojo;

/**
 * @ClassName TFQueReg
 * @Description 判断题规约
 * @Author Administrator
 * @Date 2020-04-24 9:47
 **/
public class TFQueReg {
    //题型的数量
    private Integer tfQueNum;
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
        return "TFQueReg{" +
                "tfQueNum=" + tfQueNum +
                ", dot1Num=" + dot1Num +
                ", dot2Num=" + dot2Num +
                ", dot3Num=" + dot3Num +
                ", dot4Num=" + dot4Num +
                '}';
    }

    public Integer getTfQueNum() {
        return tfQueNum;
    }

    public void setTfQueNum(Integer tfQueNum) {
        this.tfQueNum = tfQueNum;
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
