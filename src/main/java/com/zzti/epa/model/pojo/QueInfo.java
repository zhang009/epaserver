package com.zzti.epa.model.pojo;

/**
 * @ClassName QueInfo
 * @Description 接受前端试卷模板中的小题
 * @Author Administrator
 * @Date 2020-04-26 16:57
 **/
public class QueInfo {
    private float score;
    private Integer chapterId;
    private Integer[] knowIds;

    public float getScore() {
        return score;
    }

    public void setScore(float score) {
        this.score = score;
    }

    public Integer getChapterId() {
        return chapterId;
    }

    public void setChapterId(Integer chapterId) {
        this.chapterId = chapterId;
    }

    public Integer[] getKnowIds() {
        return knowIds;
    }

    public void setKnowIds(Integer[] knowIds) {
        this.knowIds = knowIds;
    }
}
