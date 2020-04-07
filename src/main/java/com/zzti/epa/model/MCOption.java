package com.zzti.epa.model;

public class MCOption {
    private Integer id;

    private Integer mcid;

    private Integer optionnum;

    private String optioncontent;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMcid() {
        return mcid;
    }

    public void setMcid(Integer mcid) {
        this.mcid = mcid;
    }

    public Integer getOptionnum() {
        return optionnum;
    }

    public void setOptionnum(Integer optionnum) {
        this.optionnum = optionnum;
    }

    public String getOptioncontent() {
        return optioncontent;
    }

    public void setOptioncontent(String optioncontent) {
        this.optioncontent = optioncontent == null ? null : optioncontent.trim();
    }
}