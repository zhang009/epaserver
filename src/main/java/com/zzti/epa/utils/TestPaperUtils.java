package com.zzti.epa.utils;

import com.zzti.epa.model.QuestionScore;

import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName TestPaperUtils
 * @Description TODO
 * @Author Administrator
 * @Date 2020-05-27 7:34
 **/
public class TestPaperUtils {

    //传入List<QuestiionScore>返回章节id数组
    public static String[] getChapterIds(List<QuestionScore> list){
        List<String> chapterList=new ArrayList<String>();
        if(list!=null&&list.size()>0){
            for (int i = 0; i < list.size(); i++) {
                QuestionScore questionScore=list.get(i);
                //获取章节
                String chapter=Integer.toString(questionScore.getChapterId());//把Integer转化为String类型

               if(!chapterList.contains(chapter)){//如果没有重复的，添加章节id到集合中
                    chapterList.add(chapter);
                }
            }

        }
        //把list集合转化为字符串数组,并返回
        return chapterList.toArray(new String[chapterList.size()]);
    }
    //传入List<QuestiionScore>返回知识点id数组
    public static String[] getKnowIds(List<QuestionScore> list){

        List<String> knowList=new ArrayList<String>();
        if(list!=null&&list.size()>0){
            for (int i = 0; i < list.size(); i++) {
                QuestionScore questionScore=list.get(i);
                //获取知识点
                String knowStrIds=questionScore.getKnowIds();

                String  []knowIds=knowStrIds.split("@");
                for (int j = 0; j < knowIds.length; j++) {
                    if(!knowList.contains(knowIds[j])){//如果没有重复的，添加知识点id到集合中
                        knowList.add(knowIds[j]);
                    }
                }
            }

        }
        //把list集合转化为字符串数组,并返回
        return knowList.toArray(new String[knowList.size()]);
    }




}
