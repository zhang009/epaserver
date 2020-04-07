package com.zzti.epa.model;

public class FBQuestion {
    private Integer id;

    private String knowids;

    private String stem;

    private String answer;

    private String analysis;

    private Integer teacherid;

    private Integer checkteacherid;

    private Integer courseid;

    private Integer chapterid;

    private Byte dot;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getKnowids() {
        return knowids;
    }

    public void setKnowids(String knowids) {
        this.knowids = knowids == null ? null : knowids.trim();
    }

    public String getStem() {
        return stem;
    }

    public void setStem(String stem) {
        this.stem = stem == null ? null : stem.trim();
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer == null ? null : answer.trim();
    }

    public String getAnalysis() {
        return analysis;
    }

    public void setAnalysis(String analysis) {
        this.analysis = analysis == null ? null : analysis.trim();
    }

    public Integer getTeacherid() {
        return teacherid;
    }

    public void setTeacherid(Integer teacherid) {
        this.teacherid = teacherid;
    }

    public Integer getCheckteacherid() {
        return checkteacherid;
    }

    public void setCheckteacherid(Integer checkteacherid) {
        this.checkteacherid = checkteacherid;
    }

    public Integer getCourseid() {
        return courseid;
    }

    public void setCourseid(Integer courseid) {
        this.courseid = courseid;
    }

    public Integer getChapterid() {
        return chapterid;
    }

    public void setChapterid(Integer chapterid) {
        this.chapterid = chapterid;
    }

    public Byte getDot() {
        return dot;
    }

    public void setDot(Byte dot) {
        this.dot = dot;
    }
}