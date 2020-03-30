package com.zzti.epa.controller.baseinfo;

import com.zzti.epa.model.Chapter;
import com.zzti.epa.model.Knows;
import com.zzti.epa.model.KnowsTree;
import com.zzti.epa.service.baseinfo.ChapterService;
import com.zzti.epa.service.baseinfo.KnowsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName KnowsController
 * @Description TODO
 * @Author Administrator
 * @Date 2020-03-30 18:57
 **/
@RestController
@RequestMapping("/baseinfo/knows")
public class KnowsController {
    @Autowired
    ChapterService chapterService;
    @Autowired
    KnowsService knowsService;

    @GetMapping("/all")
    public List<KnowsTree> getKnows(@RequestParam("courseId") Integer id){
        System.out.println(id);
        List<KnowsTree> list=new ArrayList<>();//最后返回的数据

        List<Chapter> chapterInfo=chapterService.getChaptersByCourseId(id);
        List<Knows> knowsInfo=knowsService.getKnowsByCourseId(id);
        KnowsTree knowsTree1=new KnowsTree();//第一层
        knowsTree1.setName("请选择章节");
        List<KnowsTree> knowsList1=new ArrayList<>();
        for(Chapter chapter: chapterInfo){
            KnowsTree knowsTree2=new KnowsTree();//第二层
            List<KnowsTree> knowsList2=new ArrayList<>();
            knowsTree2.setId(chapter.getId());//
            knowsTree2.setName(chapter.getName());
            for(Knows knows: knowsInfo){
                KnowsTree knowsTree3=new KnowsTree();//第三层
                knowsTree3.setId(knows.getId());
                knowsTree3.setName(knows.getName());
                if(chapter.getId()==knows.getChapterid()){//判断该知识点是否属于该章节
                    knowsList2.add(knowsTree3);//
                    knowsTree2.setChildren(knowsList2);
                }
            }
            knowsList1.add(knowsTree2);//第二层接受第三层
            knowsTree1.setChildren(knowsList1);
        }
        list.add(knowsTree1);//
        return list;
    }




}
