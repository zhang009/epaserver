package com.zzti.epa.mapper.paper;

import com.zzti.epa.model.QuestionScore;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QuestionScoreMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(QuestionScore record);

    int insertSelective(QuestionScore record);

    QuestionScore selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(QuestionScore record);

    int updateByPrimaryKey(QuestionScore record);

    Integer addQueScoreList(@Param("list") List<QuestionScore> questionScores);

    Integer addQueScoreListByTemplate(@Param("list") List<QuestionScore> questionScores);

    //根据试卷id获取试卷模板中的试题列表QuestionScore
    List<QuestionScore> getQuestionScoreByTestPaperId(@Param("testPaperId") Integer id);

    Integer deleteByTestPaperId(@Param("testPaperId") Integer id);
}