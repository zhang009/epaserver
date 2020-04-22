package com.zzti.epa.model.pojo;

import com.zzti.epa.model.*;

import java.util.Arrays;
import java.util.List;

/**
 * @ClassName TempTestPaper
 * @Description 临时试卷对象，主要用于接收前端传递的组卷的数据
 * @Author Administrator
 * @Date 2020-04-22 7:56
 **/
public class TempTestPaper {

    private String schoolName;
    private String majorName;
    private String courseName;
    private String testPaperName;
    private String semester;
    private Integer scScore;
    private Integer mcScore;
    private Integer tfScore;
    private Integer[] fbScore;
    private Integer [] qaScore;
    private ScPapTitle scTitle;
    private McPapTitle mcPapTitle;
    private TfPapTitle tfPapTitle;
    private FbPapTitle fbPapTitle;
    private QaPapTitle qaPapTitle;

    private List<SCQuestion> sclist;
    private List<MCQuestion> mclist;
    private List<TFQuestion> tflist;
    private List<FBQuestion> fblist;
    private List<QAQuestion> qalist;
    private Integer [] scSortNum;
    private Integer [] mcSortNum;
    private Integer [] tfSortNum;
    private Integer [] fbSortNum;
    private Integer [] qaSortNum;






    private float totalScore;
    private String scAnswer;
    private String mcAnswer;
    private String tfAnswer;
    private String fbAnswer;
    private String qaAnswer;

    public TempTestPaper() {
    }

    @Override
    public String toString() {
        return "TempTestPaper{" +
                "schoolName='" + schoolName + '\'' +
                ", majorName='" + majorName + '\'' +
                ", courseName='" + courseName + '\'' +
                ", testPaperName='" + testPaperName + '\'' +
                ", semester='" + semester + '\'' +
                ", scScore=" + scScore +
                ", mcScore=" + mcScore +
                ", tfScore=" + tfScore +
                ", fbScore=" + Arrays.toString(fbScore) +
                ", qaScore=" + Arrays.toString(qaScore) +
                ", scTitle=" + scTitle +
                ", mcPapTitle=" + mcPapTitle +
                ", tfPapTitle=" + tfPapTitle +
                ", fbPapTitle=" + fbPapTitle +
                ", qaPapTitle=" + qaPapTitle +
                ", sclist=" + sclist +
                ", mclist=" + mclist +
                ", tflist=" + tflist +
                ", fblist=" + fblist +
                ", qalist=" + qalist +
                ", scSortNum=" + Arrays.toString(scSortNum) +
                ", mcSortNum=" + Arrays.toString(mcSortNum) +
                ", tfSortNum=" + Arrays.toString(tfSortNum) +
                ", fbSortNum=" + Arrays.toString(fbSortNum) +
                ", qaSortNum=" + Arrays.toString(qaSortNum) +
                ", totalScore=" + totalScore +
                ", scAnswer='" + scAnswer + '\'' +
                ", mcAnswer='" + mcAnswer + '\'' +
                ", tfAnswer='" + tfAnswer + '\'' +
                ", fbAnswer='" + fbAnswer + '\'' +
                ", qaAnswer='" + qaAnswer + '\'' +
                '}';
    }

    public McPapTitle getMcPapTitle() {
        return mcPapTitle;
    }

    public void setMcPapTitle(McPapTitle mcPapTitle) {
        this.mcPapTitle = mcPapTitle;
    }

    public TfPapTitle getTfPapTitle() {
        return tfPapTitle;
    }

    public void setTfPapTitle(TfPapTitle tfPapTitle) {
        this.tfPapTitle = tfPapTitle;
    }

    public FbPapTitle getFbPapTitle() {
        return fbPapTitle;
    }

    public void setFbPapTitle(FbPapTitle fbPapTitle) {
        this.fbPapTitle = fbPapTitle;
    }

    public QaPapTitle getQaPapTitle() {
        return qaPapTitle;
    }

    public void setQaPapTitle(QaPapTitle qaPapTitle) {
        this.qaPapTitle = qaPapTitle;
    }

    public ScPapTitle getScTitle() {
        return scTitle;
    }

    public void setScTitle(ScPapTitle scTitle) {
        this.scTitle = scTitle;
    }



    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
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

    public Integer[] getScSortNum() {
        return scSortNum;
    }

    public void setScSortNum(Integer[] scSortNum) {
        this.scSortNum = scSortNum;
    }

    public Integer[] getMcSortNum() {
        return mcSortNum;
    }

    public void setMcSortNum(Integer[] mcSortNum) {
        this.mcSortNum = mcSortNum;
    }

    public Integer[] getTfSortNum() {
        return tfSortNum;
    }

    public void setTfSortNum(Integer[] tfSortNum) {
        this.tfSortNum = tfSortNum;
    }

    public Integer[] getFbSortNum() {
        return fbSortNum;
    }

    public void setFbSortNum(Integer[] fbSortNum) {
        this.fbSortNum = fbSortNum;
    }

    public Integer[] getQaSortNum() {
        return qaSortNum;
    }

    public void setQaSortNum(Integer[] qaSortNum) {
        this.qaSortNum = qaSortNum;
    }

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getMajorName() {
        return majorName;
    }

    public void setMajorName(String majorName) {
        this.majorName = majorName;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getTestPaperName() {
        return testPaperName;
    }

    public void setTestPaperName(String testPaperName) {
        this.testPaperName = testPaperName;
    }

    public Integer getScScore() {
        return scScore;
    }

    public void setScScore(Integer scScore) {
        this.scScore = scScore;
    }

    public Integer getMcScore() {
        return mcScore;
    }

    public void setMcScore(Integer mcScore) {
        this.mcScore = mcScore;
    }

    public Integer getTfScore() {
        return tfScore;
    }

    public void setTfScore(Integer tfScore) {
        this.tfScore = tfScore;
    }

    public Integer[] getFbScore() {
        return fbScore;
    }

    public void setFbScore(Integer[] fbScore) {
        this.fbScore = fbScore;
    }

    public Integer[] getQaScore() {
        return qaScore;
    }

    public void setQaScore(Integer[] qaScore) {
        this.qaScore = qaScore;
    }




    public float getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(float totalScore) {
        this.totalScore = totalScore;
    }

    public String getScAnswer() {
        return scAnswer;
    }

    public void setScAnswer(String scAnswer) {
        this.scAnswer = scAnswer;
    }

    public String getMcAnswer() {
        return mcAnswer;
    }

    public void setMcAnswer(String mcAnswer) {
        this.mcAnswer = mcAnswer;
    }

    public String getTfAnswer() {
        return tfAnswer;
    }

    public void setTfAnswer(String tfAnswer) {
        this.tfAnswer = tfAnswer;
    }

    public String getFbAnswer() {
        return fbAnswer;
    }

    public void setFbAnswer(String fbAnswer) {
        this.fbAnswer = fbAnswer;
    }

    public String getQaAnswer() {
        return qaAnswer;
    }

    public void setQaAnswer(String qaAnswer) {
        this.qaAnswer = qaAnswer;
    }
}
