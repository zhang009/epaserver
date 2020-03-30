package com.zzti.epa.service.baseinfo;

import com.zzti.epa.mapper.baseinfo.ChapterMapper;
import com.zzti.epa.model.Chapter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName ChapterService
 * @Description TODO
 * @Author Administrator
 * @Date 2020-03-30 18:59
 **/
@Service
public class ChapterService {

    @Autowired
    ChapterMapper chapterMapper;


    public List<Chapter> getChaptersByCourseId(Integer id) {
        return chapterMapper.getChaptersByCourseId(id);
    }
}
