package com.zzti.epa.model.analysis;

public class PassStudentNumAndOutstandingStudentNum {
    int PassStudentNum; //及格人数
    int FailStudentNum; //不及格人数
    int OutstandingStudentNum; //优秀人数
    int OtherStudentNum;    //其他人数
    int totalStudentNum;    //总人数

    public int getPassStudentNum() {
        return PassStudentNum;
    }

    public void setPassStudentNum(int passStudentNum) {
        PassStudentNum = passStudentNum;
    }

    public int getFailStudentNum() {
        return FailStudentNum;
    }

    public void setFailStudentNum(int failStudentNum) {
        FailStudentNum = failStudentNum;
    }

    public int getOutstandingStudentNum() {
        return OutstandingStudentNum;
    }

    public void setOutstandingStudentNum(int outstandingStudentNum) {
        OutstandingStudentNum = outstandingStudentNum;
    }

    public int getOtherStudentNum() {
        return OtherStudentNum;
    }

    public void setOtherStudentNum(int otherStudentNum) {
        OtherStudentNum = otherStudentNum;
    }

    public int getTotalStudentNum() {
        return totalStudentNum;
    }

    public void setTotalStudentNum(int totalStudentNum) {
        this.totalStudentNum = totalStudentNum;
    }

    @Override
    public String toString() {
        return "PassStudentNumAndOutstandingStudentNum{" +
                "PassStudentNum=" + PassStudentNum +
                ", FailStudentNum=" + FailStudentNum +
                ", OutstandingStudentNum=" + OutstandingStudentNum +
                ", OtherStudentNum=" + OtherStudentNum +
                ", totalStudentNum=" + totalStudentNum +
                '}';
    }
}
