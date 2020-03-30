package com.zzti.epa.mapper.baseinfo;

import com.zzti.epa.model.Chapter;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ChapterMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Chapter record);

    int insertSelective(Chapter record);

    Chapter selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Chapter record);

    int updateByPrimaryKey(Chapter record);

    List<Chapter> getChaptersByCourseId(@Param("courseId") Integer courseId);
}