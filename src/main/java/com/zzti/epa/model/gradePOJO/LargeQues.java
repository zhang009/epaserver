package com.zzti.epa.model.gradePOJO;

import java.util.List;

/**
 * @ClassName LargeQues
 * @Description 存放学生大题的成绩
 * @Author Administrator
 * @Date 2020-05-02 22:23
 **/
public class LargeQues {
    private String queType;//大题题型
    private String largeQueScore;//大题总分（这里字段数据库里面没有，主要起到前端显示作用）
    private List<SmallQueGrade> smallQueGrades;

    public String getQueType() {
        return queType;
    }

    public void setQueType(String queType) {
        this.queType = queType;
    }

    public String getLargeQueScore() {
        return largeQueScore;
    }

    public void setLargeQueScore(String largeQueScore) {
        this.largeQueScore = largeQueScore;
    }

    public List<SmallQueGrade> getSmallQueGrades() {
        return smallQueGrades;
    }

    public void setSmallQueGrades(List<SmallQueGrade> smallQueGrades) {
        this.smallQueGrades = smallQueGrades;
    }
}
