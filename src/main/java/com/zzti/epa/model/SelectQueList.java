package com.zzti.epa.model;

import java.util.Arrays;
import java.util.List;

/**
 * @ClassName SelectQueList
 * @Description 主要用来接收前端传过来的试题id数组，返回list集合信息
 * @Author Administrator
 * @Date 2020-04-19 15:12
 **/
public class SelectQueList {
    private Integer[] scIds;
    private Integer[] mcIds;
    private Integer[] tfIds;
    private Integer[] fbIds;
    private Integer[] qaIds;
    private List<SCQuestion> sclist;
    private List<MCQuestion> mclist;
    private List<TFQuestion> tflist;
    private List<FBQuestion> fblist;
    private List<QAQuestion> qalist;

    @Override
    public String toString() {
        return "SelectQueList{" +
                "scIds=" + Arrays.toString(scIds) +
                ", mcIds=" + Arrays.toString(mcIds) +
                ", tfIds=" + Arrays.toString(tfIds) +
                ", fbIds=" + Arrays.toString(fbIds) +
                ", qaIds=" + Arrays.toString(qaIds) +
                ", sclist=" + sclist +
                ", mclist=" + mclist +
                ", tflist=" + tflist +
                ", fblist=" + fblist +
                ", qalist=" + qalist +
                '}';
    }

    public SelectQueList() {
    }

    public Integer[] getScIds() {
        return scIds;
    }

    public void setScIds(Integer[] scIds) {
        this.scIds = scIds;
    }

    public Integer[] getMcIds() {
        return mcIds;
    }

    public void setMcIds(Integer[] mcIds) {
        this.mcIds = mcIds;
    }

    public Integer[] getTfIds() {
        return tfIds;
    }

    public void setTfIds(Integer[] tfIds) {
        this.tfIds = tfIds;
    }

    public Integer[] getFbIds() {
        return fbIds;
    }

    public void setFbIds(Integer[] fbIds) {
        this.fbIds = fbIds;
    }

    public Integer[] getQaIds() {
        return qaIds;
    }

    public void setQaIds(Integer[] qaIds) {
        this.qaIds = qaIds;
    }

    public List<SCQuestion> getSclist() {
        return sclist;
    }

    public void setSclist(List<SCQuestion> sclist) {
        this.sclist = sclist;
    }

    public List<MCQuestion> getMclist() {
        return mclist;
    }

    public void setMclist(List<MCQuestion> mclist) {
        this.mclist = mclist;
    }

    public List<TFQuestion> getTflist() {
        return tflist;
    }

    public void setTflist(List<TFQuestion> tflist) {
        this.tflist = tflist;
    }

    public List<FBQuestion> getFblist() {
        return fblist;
    }

    public void setFblist(List<FBQuestion> fblist) {
        this.fblist = fblist;
    }

    public List<QAQuestion> getQalist() {
        return qalist;
    }

    public void setQalist(List<QAQuestion> qalist) {
        this.qalist = qalist;
    }
}
