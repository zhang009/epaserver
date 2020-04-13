package com.zzti.epa.mapper.question;

import com.zzti.epa.model.QuestionCheck;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QuestionCheckMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(QuestionCheck record);

    int insertSelective(QuestionCheck record);

    QuestionCheck selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(QuestionCheck record);

    int updateByPrimaryKey(QuestionCheck record);

    List<QuestionCheck> getQuestionCheckByCheckTId( @Param("tId") Integer teacherId,
                                                    @Param("page") Integer page,
                                                    @Param("size") Integer size );


    Long getTotal(@Param("id")Integer teacherId);

    List<QuestionCheck> getQuestionReceiveByCheckTId(@Param("tId") Integer teacherId,
                                                     @Param("page")  Integer page,
                                                     @Param("size")Integer size);
    Long getTotal2(@Param("id")Integer teacherId);

    Integer passQuestionCheck(@Param("id") Integer id);


    Integer refuseQuestionCheck(@Param("id") Integer id, @Param("reason")String refuseReason);

    void updateStatusByQueIdAndType(@Param("type") String tf, @Param("qId") Integer id);
}