package com.zzti.epa.model.pojo;

import java.util.Arrays;

/**
 * @ClassName testPaperReg
 * @Description 组卷时的规约
 * @Author Administrator
 * @Date 2020-04-24 9:53
 **/
public class TestPaperReg {

    private Integer[] knowIds;//知识点数组
    private Integer courseId;
    private Integer scTotalNum;
    private Integer mcTotalNum;
    private Integer tfTotalNum;
    private Integer fbTotalNum;
    private Integer qaTotalNum;

    private SCQueReg scQueReg;//单选题规约
    private MCQueReg mcQueReg;//多选题规约
    private TFQueReg tfQueReg;//判断题规约
    private FBQueReg fbQueReg;//填空题规约
    private QAQueReg qaQueReg;//简答题规约

    @Override
    public String toString() {
        return "TestPaperReg{" +
                "knowIds=" + Arrays.toString(knowIds) +
                ", courseId=" + courseId +
                ", scTotalNum=" + scTotalNum +
                ", mcTotalNum=" + mcTotalNum +
                ", tfTotalNum=" + tfTotalNum +
                ", fbTotalNum=" + fbTotalNum +
                ", qaTotalNum=" + qaTotalNum +
                ", scQueReg=" + scQueReg +
                ", mcQueReg=" + mcQueReg +
                ", tfQueReg=" + tfQueReg +
                ", fbQueReg=" + fbQueReg +
                ", qaQueReg=" + qaQueReg +
                '}';
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public Integer getScTotalNum() {
        return scTotalNum;
    }

    public void setScTotalNum(Integer scTotalNum) {
        this.scTotalNum = scTotalNum;
    }

    public Integer getMcTotalNum() {
        return mcTotalNum;
    }

    public void setMcTotalNum(Integer mcTotalNum) {
        this.mcTotalNum = mcTotalNum;
    }

    public Integer getTfTotalNum() {
        return tfTotalNum;
    }

    public void setTfTotalNum(Integer tfTotalNum) {
        this.tfTotalNum = tfTotalNum;
    }

    public Integer getFbTotalNum() {
        return fbTotalNum;
    }

    public void setFbTotalNum(Integer fbTotalNum) {
        this.fbTotalNum = fbTotalNum;
    }

    public Integer getQaTotalNum() {
        return qaTotalNum;
    }

    public void setQaTotalNum(Integer qaTotalNum) {
        this.qaTotalNum = qaTotalNum;
    }

    public Integer[] getKnowIds() {
        return knowIds;
    }

    public void setKnowIds(Integer[] knowIds) {
        this.knowIds = knowIds;
    }

    public SCQueReg getScQueReg() {
        return scQueReg;
    }

    public void setScQueReg(SCQueReg scQueReg) {
        this.scQueReg = scQueReg;
    }

    public MCQueReg getMcQueReg() {
        return mcQueReg;
    }

    public void setMcQueReg(MCQueReg mcQueReg) {
        this.mcQueReg = mcQueReg;
    }

    public TFQueReg getTfQueReg() {
        return tfQueReg;
    }

    public void setTfQueReg(TFQueReg tfQueReg) {
        this.tfQueReg = tfQueReg;
    }

    public FBQueReg getFbQueReg() {
        return fbQueReg;
    }

    public void setFbQueReg(FBQueReg fbQueReg) {
        this.fbQueReg = fbQueReg;
    }

    public QAQueReg getQaQueReg() {
        return qaQueReg;
    }

    public void setQaQueReg(QAQueReg qaQueReg) {
        this.qaQueReg = qaQueReg;
    }
}
