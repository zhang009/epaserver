package com.zzti.epa.model.pojo;

import java.util.List;

/**
 * @ClassName TemplateQuestions
 * @Description 用于接收前端试卷模板中的大题
 * @Author Administrator
 * @Date 2020-04-26 16:56
 **/
public class TemplateQuestions {
    private String queType;
    private List<QueInfo> queInfo;

    @Override
    public String toString() {
        return "TemplateQuestions{" +
                "queType='" + queType + '\'' +
                ", queInfo=" + queInfo +
                '}';
    }

    public String getQueType() {
        return queType;
    }

    public void setQueType(String queType) {
        this.queType = queType;
    }

    public List<QueInfo> getQueInfo() {
        return queInfo;
    }

    public void setQueInfo(List<QueInfo> queInfo) {
        this.queInfo = queInfo;
    }
}
