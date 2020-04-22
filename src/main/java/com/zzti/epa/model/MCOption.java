package com.zzti.epa.model;

public class MCOption {
    private Integer id;

    private Integer mcId;

    private Integer optionNum;

    private String optionContent;



    public MCOption() {
    }

    @Override
    public String toString() {
        return "MCOption{" +
                "id=" + id +
                ", mcId=" + mcId +
                ", optionNum=" + optionNum +
                ", optionContent='" + optionContent + '\'' +
                '}';
    }



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMcId() {
        return mcId;
    }

    public void setMcId(Integer mcId) {
        this.mcId = mcId;
    }

    public Integer getOptionNum() {
        return optionNum;
    }

    public void setOptionNum(Integer optionNum) {
        this.optionNum = optionNum;
    }

    public String getOptionContent() {
        return optionContent;
    }

    public void setOptionContent(String optionContent) {
        this.optionContent = optionContent;
    }
}