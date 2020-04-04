package com.zzti.epa.controller.baseinfo;

import com.zzti.epa.model.Chapter;
import com.zzti.epa.service.baseinfo.ChapterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @ClassName ChapterController
 * @Description TODO
 * @Author Administrator
 * @Date 2020-04-04 11:48
 **/
@RestController
@RequestMapping("/baseinfo/chapter")
public class ChapterController {
    @Autowired
    ChapterService chapterService;
    @GetMapping("/")
    public List<Chapter> getKnows(@RequestParam("courseId") Integer id){
        List<Chapter> chapterInfo=chapterService.getChaptersByCourseId(id);
        return chapterInfo;
    }
}
