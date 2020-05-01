package com.zzti.epa.mapper.paper;

import com.zzti.epa.model.PaperCheck;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PaperCheckMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PaperCheck record);

    int insertSelective(PaperCheck record);

    PaperCheck selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PaperCheck record);

    int updateByPrimaryKey(PaperCheck record);

    List<PaperCheck> getTestPaperCheckByCheckTId(@Param("testPaperId") Integer teacherId,
                                                 @Param("page") Integer page,
                                                 @Param("size") Integer size);

    Long getTestPaperCheckTotal(@Param("testPaperId")Integer teacherId);

    Integer refuseTestPaperCheck(@Param("id")Integer id, @Param("reason")String refuseReason);

    List<PaperCheck> getSubmmitedTestPaperCheckByCheckTId(@Param("testPaperId") Integer teacherId,
                                                          @Param("page") Integer page,
                                                          @Param("size") Integer size);

    Long getSubmmitedTestPaperCheckTotal(@Param("testPaperId")Integer teacherId);
}