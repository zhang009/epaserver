package com.zzti.epa.controller.baseinfo;

import com.zzti.epa.model.*;
import com.zzti.epa.service.baseinfo.ChapterService;
import com.zzti.epa.service.baseinfo.CourseService;
import com.zzti.epa.service.baseinfo.KnowsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName KnowsController
 * @Description 知识点接口
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
    @Autowired
    CourseService courseService;

    //根据课程id获取知识点
    @GetMapping("/all")
    public List<KnowsTree> getKnows(@RequestParam("courseId") Integer id){
        System.out.println(id);
        //根据课程id查询出课程，封装到第一层
        Course course=courseService.getCourseById(id);
        List<KnowsTree> list=new ArrayList<>();//最后返回的数据

        List<Chapter> chapterInfo=chapterService.getChaptersByCourseId(id);
        List<Knows> knowsInfo=knowsService.getKnowsByCourseId(id);
        KnowsTree knowsTree1=new KnowsTree();//第一层，存放标题

        //knowsTree1.setName("请选择章节");
        knowsTree1.setName(course.getName());
        knowsTree1.setParentId(-2);
        knowsTree1.setId(-1);//这里设置标题的父id为-1，是为了方便前端判断是否为章节
        List<KnowsTree> knowsList1=new ArrayList<>();
        for(Chapter chapter: chapterInfo){
            KnowsTree knowsTree2=new KnowsTree();//第二层
            List<KnowsTree> knowsList2=new ArrayList<>();
            knowsTree2.setId(chapter.getId());//
            knowsTree2.setName(chapter.getName());
            knowsTree2.setParentId(knowsTree1.getId());//这里章节父id都设置为-1
            knowsTree2.setIcon("fa fa-circle");
            for(Knows knows: knowsInfo){

                if(chapter.getId().equals(knows.getChapterId())){//判断该知识点是否属于该章节
                    KnowsTree knowsTree3=new KnowsTree();//第三层
                    knowsTree3.setId(knows.getId());
                    knowsTree3.setName(knows.getName());
                    knowsTree3.setParentId(knows.getChapterId());//设置知识点的父id为章节id
                    knowsTree3.setIcon("fa fa-circle-thin");
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

    @PostMapping("/chapter")
    public RespBean addChapter(@RequestBody KnowsTree knowsTree){
        System.out.println("addKnowsTree:"+knowsTree.toString());
        //在这里将KnowsTree封装成章节
        Chapter chapter=new Chapter();
        if(knowsTree!=null){
            chapter.setName(knowsTree.getName());
            chapter.setCourseId(knowsTree.getParentId());
            if(chapterService.addChapter(chapter)==1){
                return RespBean.ok("添加成功！");
            }
        }
        return RespBean.error("添加失败！");
    }
    @PostMapping("/knows")
    public RespBean addKnows(@RequestBody KnowsTree knowsTree){
        System.out.println("addKnowsTree:"+knowsTree.toString());
        //在这里将KnowsTree封装成章节
        Knows knows=new Knows();
        if(knowsTree!=null){
            knows.setName(knowsTree.getName());
            knows.setChapterId(knowsTree.getParentId());
            if(knowsService.addKnows(knows)==1){
                return RespBean.ok("添加成功！");
            }
        }
        return RespBean.error("添加失败！");
    }
    @PutMapping("/chapter")
    public RespBean updateMajor(@RequestBody KnowsTree knowsTree){
        //编辑章节，只需获取章节的id即可
        Chapter chapter=new Chapter();
        if(knowsTree!=null){
            chapter.setId(knowsTree.getId());
            chapter.setName(knowsTree.getName());
            chapter.setCourseId(knowsTree.getParentId());
            if(chapterService.updateChapter(chapter)==1){
                return RespBean.ok("更新成功！");
            }
        }
        return RespBean.error("更新失败！");
    }
    @PutMapping("/knows")
    public RespBean updateKnows(@RequestBody KnowsTree knowsTree){
        //编辑章节，只需获取章节的id即可
        Knows knows=new Knows();
        if(knowsTree!=null){
            knows.setId(knowsTree.getId());
            knows.setName(knowsTree.getName());
            knows.setChapterId(knowsTree.getParentId());
            if(knowsService.updateKnows(knows)==1){
                return RespBean.ok("更新成功！");
            }
        }
        return RespBean.error("更新失败！");
    }
    @DeleteMapping("/chapter/{id}")
    public RespBean deleteChapterByCid(@PathVariable Integer id){
        if(chapterService.deleteChapterByCid(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }
    @DeleteMapping("/knows/{id}")
    public RespBean deleteKnowsByKid(@PathVariable Integer id){
        if(knowsService.deleteKnowsByKid(id)==1){
            return RespBean.ok("删除成功！");
        }
        return RespBean.error("删除成功！");
    }





}
