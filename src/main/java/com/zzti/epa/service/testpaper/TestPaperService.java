package com.zzti.epa.service.testpaper;

import com.zzti.epa.mapper.baseinfo.KnowsMapper;
import com.zzti.epa.mapper.paper.QuestionScoreMapper;
import com.zzti.epa.mapper.paper.TestPaperMapper;
import com.zzti.epa.mapper.question.*;
import com.zzti.epa.model.*;
import com.zzti.epa.model.pojo.*;
import com.zzti.epa.service.question.*;
import com.zzti.epa.utils.TeacherUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

/**
 * @ClassName TestPaperService
 * @Description 试卷处理业务层
 * @Author Administrator
 * @Date 2020-04-22 11:34
 **/
@Service
public class TestPaperService {

    @Autowired
    TestPaperMapper testPaperMapper;
    @Autowired
    QuestionScoreMapper questionScoreMapper;

    @Autowired
    SCQuestionMapper scQuestionMapper;
    @Autowired
    MCQuestionMapper mcQuestionMapper;
    @Autowired
    TFQuestionMapper tfQuestionMapper;
    @Autowired
    FBQuestionMapper fbQuestionMapper;
    @Autowired
    QAQuestionMapper qaQuestionMapper;
    @Autowired
    KnowsMapper knowsMapper;
    @Autowired
    SCQuestionService scQuestionService;
    @Autowired
    MCQuestionService mcQuestionService;
    @Autowired
    TFQuestionService tfQuestionService;
    @Autowired
    FBQuestionService fbQuestionService;
    @Autowired
    QAQuestionService qaQuestionService;



    String []charNum= {"A.","B.","C.","D.","E.","F.","G.","H.","I.","J."};
    //为了将试卷导出到word,将前端传来的临时试卷对象数据处理，添加一些参数
    public TempTestPaper handleTempTestPaper(TempTestPaper tempTestPaper) {
        //设置单选题的总分
        if(tempTestPaper.getSclist()!=null&&tempTestPaper.getScScore()!=null){
            ScPapTitle scPapTitle=new ScPapTitle();
            scPapTitle.setScTotalScore(tempTestPaper.getSclist().size()*tempTestPaper.getScScore());
            scPapTitle.setScLength(tempTestPaper.getSclist().size());
            scPapTitle.setScScore(tempTestPaper.getScScore());
            tempTestPaper.setScTitle(scPapTitle);

            //设置序号和答案
            String answer="";
            for (int i = 0; i < tempTestPaper.getSclist().size(); i++) {
                SCQuestion scQuestion=tempTestPaper.getSclist().get(i);
                scQuestion.setStem((i+1)+"."+scQuestion.getStem());
                answer+=(i+1)+"."+scQuestion.getAnswer()+"  ";
            }
            scPapTitle.setScAnswer(answer);


        }
         //设置多选题的总分
        if(tempTestPaper.getMclist()!=null&&tempTestPaper.getMcScore()!=null){
            McPapTitle mcPapTitle=new McPapTitle();
            mcPapTitle.setMcLength(tempTestPaper.getMclist().size());
            mcPapTitle.setMcTotalScore(tempTestPaper.getMclist().size()*tempTestPaper.getMcScore());
            mcPapTitle.setMcScore(tempTestPaper.getMcScore());
            tempTestPaper.setMcPapTitle(mcPapTitle);

            //设置序号和答案
            String answer="";
            for (int i = 0; i < tempTestPaper.getMclist().size(); i++) {
                MCQuestion mcQuestion=tempTestPaper.getMclist().get(i);
                mcQuestion.setStem((i+1)+"."+mcQuestion.getStem());
                answer+=(i+1)+"."+mcQuestion.getAnswer()+"  ";
            }
            mcPapTitle.setMcAnswer(answer);
        }
         //设置判断的总分
        if(tempTestPaper.getTflist()!=null&&tempTestPaper.getTfScore()!=null){
            TfPapTitle tfPapTitle=new TfPapTitle();
            tfPapTitle.setTfLength(tempTestPaper.getTflist().size());
            tfPapTitle.setTfTotalScore(tempTestPaper.getTflist().size()*tempTestPaper.getTfScore());
            tempTestPaper.setTfPapTitle(tfPapTitle);



            //设置序号和答案
            String answer="";
            for (int i = 0; i < tempTestPaper.getTflist().size(); i++) {
                TFQuestion tfQuestion=tempTestPaper.getTflist().get(i);
                tfQuestion.setStem((i+1)+"."+tfQuestion.getStem());
                answer+=(i+1)+"."+tfQuestion.getAnswer()+"  ";
            }
            tfPapTitle.setTfAnswer(answer);
        }
         //设置填空题的总分
        if(tempTestPaper.getFblist()!=null&&(tempTestPaper.getFbScore().length>0)){
            Integer total=0;
            Integer [] fbScores=tempTestPaper.getFbScore();
            for (int i = 0; i < fbScores.length; i++) {
                total+=fbScores[i];
            }
            FbPapTitle fbPapTitle=new FbPapTitle();
            fbPapTitle.setFbLength(tempTestPaper.getFblist().size());
            fbPapTitle.setFbTotalScore(total);

            tempTestPaper.setFbPapTitle(fbPapTitle);
            //设置序号和答案
            String [] tmp =new String[tempTestPaper.getFblist().size()];
            for (int i = 0; i < tempTestPaper.getFblist().size(); i++) {
                FBQuestion fbQuestion=tempTestPaper.getFblist().get(i);
                fbQuestion.setStem((i+1)+"."+fbQuestion.getStem());
                tmp[i]=(i+1)+"."+fbQuestion.getAnswer();
            }
            fbPapTitle.setFbAnswer(StringUtils.join(tmp,"\r"));

        }
         //设置简答题的总分
        if(tempTestPaper.getQalist()!=null&&(tempTestPaper.getQaScore().length>0)){
            Integer total=0;
            Integer [] qaScores=tempTestPaper.getQaScore();
            for (int i = 0; i < qaScores.length; i++) {
                total+=qaScores[i];
            }
            QaPapTitle qaPapTitle=new QaPapTitle();
            qaPapTitle.setQaLength(tempTestPaper.getQalist().size());
            qaPapTitle.setQaTotalScore(total);
            tempTestPaper.setQaPapTitle(qaPapTitle);

            //设置序号和答案
            String [] tmp =new String[tempTestPaper.getQalist().size()];
            for (int i = 0; i < tempTestPaper.getQalist().size(); i++) {
                QAQuestion qaQuestion=tempTestPaper.getQalist().get(i);
                qaQuestion.setStem((i+1)+"."+qaQuestion.getStem());
                tmp[i]=(i+1)+"."+qaQuestion.getAnswer();
            }
            qaPapTitle.setQaAnswer(StringUtils.join(tmp,"\r"));

        }
        //设置多选题的选项序号
        if(tempTestPaper.getMclist()!=null&&tempTestPaper.getMcScore()!=null){

            for (int i = 0; i < tempTestPaper.getMclist().size(); i++) {
                List<MCOption> options=tempTestPaper.getMclist().get(i).getOptions();
              /*  ArrayList<TextRenderData> textRenderDatas= new ArrayList<TextRenderData>();*/

                for (int j = 0; j < options.size(); j++) {
                    /*TextRenderData textRenderData = new TextRenderData(options.get(j).getOptionContent().toString());//获取多选题的每一个选项
                    textRenderDatas.add(textRenderData);*/
                    options.get(j).setOptionContent(charNum[j]+options.get(j).getOptionContent());
                }
               /* tempTestPaper.getMclist().get(i).setOptions2( new NumbericRenderData(textRenderDatas));*/
             /*   FMT_UPPER_LETTER,*/

            }
        }


        return tempTestPaper;
    }

    //添加试卷（手动组卷）
    @Transactional
    public boolean addTestPaper(TestPaper testPaper) {

        //1.设置基本参数：创建时间，提交教师id,试卷状态，试题类型
        testPaper.setCreateTime(new Date());
        testPaper.setPostTeacherId(TeacherUtils.getTeacher().getId());
        testPaper.setPaperType(0);//试题组卷类型，0代表手动组卷，1代表自动组卷
        testPaper.setStatus(0);//状态为0表示未审核
        testPaper.setIsTemplate(0);//设置非试卷模板添加
        String queTypes="";
        if(testPaper.getSclist()!=null&&testPaper.getSclist().size()>0){
            queTypes+="单选题@";
        }
        if(testPaper.getMclist()!=null&&testPaper.getMclist().size()>0){
            queTypes+="多选题@";
        }
        if(testPaper.getTflist()!=null&&testPaper.getTflist().size()>0){
            queTypes+="判断题@";
        }
        if(testPaper.getFblist()!=null&&testPaper.getFblist().size()>0){
            queTypes+="填空题@";
        }
        if(testPaper.getQalist()!=null&&testPaper.getQalist().size()>0){
            queTypes+="简答题@";
        }
        testPaper.setQueTypes(queTypes);//设置试卷中试题的类型
        testPaperMapper.insertSelective(testPaper);
        Integer testPaperId=testPaper.getId();

        //添加试卷分数表
        List<QuestionScore> questionScores=new ArrayList<>();
        //设置单选题
        if(testPaper.getSclist()!=null&&testPaper.getSclist().size()>0){
            List<SCQuestion> sclist=testPaper.getSclist();
            for (int i = 0; i < sclist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(sclist.get(i).getId());//设置单选题id
                questionScore.setQueType("单选题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getScScore());//设置单选题分数
                questionScores.add(questionScore);//加入集合
            }
        }
        //设置多选题
        if(testPaper.getMclist()!=null&&testPaper.getMclist().size()>0){
            List<MCQuestion> mclist=testPaper.getMclist();
            for (int i = 0; i < mclist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(mclist.get(i).getId());//设置多选题id
                questionScore.setQueType("多选题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getMcScore());//设置单选题分数
                questionScores.add(questionScore);//加入集合
            }
        }
        //设置判断题
        if(testPaper.getTflist()!=null&&testPaper.getTflist().size()>0){
            List<TFQuestion> tflist=testPaper.getTflist();
            for (int i = 0; i < tflist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(tflist.get(i).getId());//设置单选题id
                questionScore.setQueType("判断题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getTfScore());//设置单选题分数
                questionScores.add(questionScore);//加入集合
            }
        }
        //设置填空题
        if(testPaper.getFblist()!=null&&testPaper.getFblist().size()>0){
            List<FBQuestion> fblist=testPaper.getFblist();
            for (int i = 0; i < fblist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(fblist.get(i).getId());//设置单选题id
                questionScore.setQueType("填空题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getFbScore()[i]);//设置填空题分数
                questionScores.add(questionScore);//加入集合
            }
        }
        //设置简答题
        if(testPaper.getQalist()!=null&&testPaper.getQalist().size()>0){
            List<QAQuestion> qalist=testPaper.getQalist();
            for (int i = 0; i < qalist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(qalist.get(i).getId());//设置单选题id
                questionScore.setQueType("简答题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getQaScore()[i]);//设置单选题分数
                questionScores.add(questionScore);//加入集合
            }
        }
        return (questionScoreMapper.addQueScoreList(questionScores)==questionScores.size());//返回插入的结果

    }

    //根据课程id获取各题型的列表，封装到TestPaper对象中
    public TestPaper getQueTypeNums(Integer courseId){
        List<SCQuestion> sclist=scQuestionMapper.getSCQuestionByCourseId(courseId);
        List<MCQuestion> mclist=mcQuestionMapper.getMCQuestionByCourseId(courseId);
        List<TFQuestion> tflist=tfQuestionMapper.getTFQuestionByCourseId(courseId);
        List<FBQuestion> fblist=fbQuestionMapper.getFBQuestionByCourseId(courseId);
        List<QAQuestion> qalist=qaQuestionMapper.getQAQuestionByCourseId(courseId);
        TestPaper testPaper=new TestPaper();
        testPaper.setSclist(sclist);
        testPaper.setMclist(mclist);
        testPaper.setTflist(tflist);
        testPaper.setFblist(fblist);
        testPaper.setQalist(qalist);
        return testPaper;
    }

    public TestPaper getTestPaperByAutoReg(TestPaperReg testPaperReg) {
        //
        Integer[] allKnowIds=testPaperReg.getKnowIds();//知识点数组
        //首先获取所有满足这些知识点的试题题型
        Integer courseId=testPaperReg.getCourseId();
        List<SCQuestion> sclist1=scQuestionMapper.getSCQuestionByCourseId(courseId);
        List<MCQuestion> mclist1=mcQuestionMapper.getMCQuestionByCourseId(courseId);
        List<TFQuestion> tflist1=tfQuestionMapper.getTFQuestionByCourseId(courseId);
        List<FBQuestion> fblist1=fbQuestionMapper.getFBQuestionByCourseId(courseId);
        List<QAQuestion> qalist1=qaQuestionMapper.getQAQuestionByCourseId(courseId);

        List<SCQuestion> sclist2=new ArrayList<>();
        List<MCQuestion> mclist2=new ArrayList<>();
        List<TFQuestion> tflist2=new ArrayList<>();
        List<FBQuestion> fblist2=new ArrayList<>();
        List<QAQuestion> qalist2=new ArrayList<>();

        for (int i = 0; i < sclist1.size(); i++) {//遍历单选题
            SCQuestion scQuestion=sclist1.get(i);
            String knowIds=scQuestion.getKnowIds();
            String [] knowIds2=knowIds.split("@");
            for (int j=0;j<knowIds2.length;j++){
                Integer scknow=Integer.parseInt(knowIds2[j]);//将字符串数组id转化为int类型
                for (int k = 0; k < allKnowIds.length; k++) {
                    if (allKnowIds[k]==scknow){
                        sclist2.add(scQuestion);
                    }
                }
            }
        }
        for (int i = 0; i < mclist1.size(); i++) {//遍历多选题
            MCQuestion mcQuestion=mclist1.get(i);
            String knowIds=mcQuestion.getKnowIds();
            String [] knowIds2=knowIds.split("@");
            for (int j=0;j<knowIds2.length;j++){
                Integer mcknow=Integer.parseInt(knowIds2[j]);//将字符串数组id转化为int类型
                for (int k = 0; k < allKnowIds.length; k++) {
                    if (allKnowIds[k]==mcknow){
                        mclist2.add(mcQuestion);
                    }
                }
            }
        }
        for (int i = 0; i < tflist1.size(); i++) {//遍历判断题
            TFQuestion tfQuestion=tflist1.get(i);
            String knowIds=tfQuestion.getKnowIds();
            String [] knowIds2=knowIds.split("@");
            for (int j=0;j<knowIds2.length;j++){
                Integer tfknow=Integer.parseInt(knowIds2[j]);//将字符串数组id转化为int类型
                for (int k = 0; k < allKnowIds.length; k++) {
                    if (allKnowIds[k]==tfknow){
                        tflist2.add(tfQuestion);
                    }
                }
            }
        }
        for (int i = 0; i < fblist1.size(); i++) {//遍历填空题
            FBQuestion fbQuestion=fblist1.get(i);
            String knowIds=fbQuestion.getKnowIds();
            String [] knowIds2=knowIds.split("@");
            for (int j=0;j<knowIds2.length;j++){
                Integer fbknow=Integer.parseInt(knowIds2[j]);//将字符串数组id转化为int类型
                for (int k = 0; k < allKnowIds.length; k++) {
                    if (allKnowIds[k]==fbknow){
                        fblist2.add(fbQuestion);
                    }
                }
            }
        }
        for (int i = 0; i < qalist1.size(); i++) {//遍历填空题
            QAQuestion qaQuestion=qalist1.get(i);
            String knowIds=qaQuestion.getKnowIds();
            String [] knowIds2=knowIds.split("@");
            for (int j=0;j<knowIds2.length;j++){
                Integer qaknow=Integer.parseInt(knowIds2[j]);//将字符串数组id转化为int类型
                for (int k = 0; k < allKnowIds.length; k++) {
                    if (allKnowIds[k]==qaknow){
                        qalist2.add(qaQuestion);
                    }
                }
            }
        }

        //遍历知识难度分布
        //  首先区分难度，把每个题型的知识点难度值分类
        List<SCQuestion> sclistLevel1=new ArrayList<>();
        List<SCQuestion> sclistLevel2=new ArrayList<>();
        List<SCQuestion> sclistLevel3=new ArrayList<>();
        List<SCQuestion> sclistLevel4=new ArrayList<>();
        for (int i = 0; i < sclist2.size(); i++) {
            SCQuestion scQuestion=sclist2.get(i);
            if(scQuestion.getDot()==1){
                sclistLevel1.add(scQuestion);
            }
            if(scQuestion.getDot()==2){
                sclistLevel2.add(scQuestion);
            }
            if(scQuestion.getDot()==3){
                sclistLevel3.add(scQuestion);
            }
            if(scQuestion.getDot()==4){
                sclistLevel4.add(scQuestion);
            }
        }

        List<MCQuestion> mclistLevel1=new ArrayList<>();
        List<MCQuestion> mclistLevel2=new ArrayList<>();
        List<MCQuestion> mclistLevel3=new ArrayList<>();
        List<MCQuestion> mclistLevel4=new ArrayList<>();
        for (int i = 0; i < mclist2.size(); i++) {
            MCQuestion mcQuestion=mclist2.get(i);
            if(mcQuestion.getDot()==1){
                mclistLevel1.add(mcQuestion);
            }
            if(mcQuestion.getDot()==2){
                mclistLevel2.add(mcQuestion);
            }
            if(mcQuestion.getDot()==3){
                mclistLevel3.add(mcQuestion);
            }
            if(mcQuestion.getDot()==4){
                mclistLevel4.add(mcQuestion);
            }
        }
        List<TFQuestion> tflistLevel1=new ArrayList<>();
        List<TFQuestion> tflistLevel2=new ArrayList<>();
        List<TFQuestion> tflistLevel3=new ArrayList<>();
        List<TFQuestion> tflistLevel4=new ArrayList<>();

        for (int i = 0; i < tflist2.size(); i++) {
            TFQuestion tfQuestion=tflist2.get(i);
            if(tfQuestion.getDot()==1){
                tflistLevel1.add(tfQuestion);
            }
            if(tfQuestion.getDot()==2){
                tflistLevel2.add(tfQuestion);
            }
            if(tfQuestion.getDot()==3){
                tflistLevel3.add(tfQuestion);
            }
            if(tfQuestion.getDot()==4){
                tflistLevel4.add(tfQuestion);
            }
        }
        List<FBQuestion> fblistLevel1=new ArrayList<>();
        List<FBQuestion> fblistLevel2=new ArrayList<>();
        List<FBQuestion> fblistLevel3=new ArrayList<>();
        List<FBQuestion> fblistLevel4=new ArrayList<>();
        for (int i = 0; i < fblist2.size(); i++) {
            FBQuestion fbQuestion=fblist2.get(i);
            if(fbQuestion.getDot()==1){
                fblistLevel1.add(fbQuestion);
            }
            if(fbQuestion.getDot()==2){
                fblistLevel2.add(fbQuestion);
            }
            if(fbQuestion.getDot()==3){
                fblistLevel3.add(fbQuestion);
            }
            if(fbQuestion.getDot()==4){
                fblistLevel4.add(fbQuestion);
            }
        }

        List<QAQuestion> qalistLevel1=new ArrayList<>();
        List<QAQuestion> qalistLevel2=new ArrayList<>();
        List<QAQuestion> qalistLevel3=new ArrayList<>();
        List<QAQuestion> qalistLevel4=new ArrayList<>();

        for (int i = 0; i < qalist2.size(); i++) {
            QAQuestion qaQuestion=qalist2.get(i);

            if(qaQuestion.getDot()==1){
                qalistLevel1.add(qaQuestion);
            }
            if(qaQuestion.getDot()==2){
                qalistLevel2.add(qaQuestion);
            }
            if(qaQuestion.getDot()==3){
                qalistLevel3.add(qaQuestion);
            }
            if(qaQuestion.getDot()==4){
                qalistLevel4.add(qaQuestion);
            }
        }
        List<SCQuestion> endSclist=new ArrayList<>();
        List<MCQuestion> endMclist=new ArrayList<>();
        List<TFQuestion> endTflist=new ArrayList<>();
        List<FBQuestion> endFblist=new ArrayList<>();
        List<QAQuestion> endQalist=new ArrayList<>();

        SCQueReg scQueReg=testPaperReg.getScQueReg();
        MCQueReg mcQueReg=testPaperReg.getMcQueReg();
        TFQueReg tfQueReg=testPaperReg.getTfQueReg();
        FBQueReg fbQueReg=testPaperReg.getFbQueReg();
        QAQueReg qaQueReg=testPaperReg.getQaQueReg();


        if(scQueReg.getDot1Num()!=null&& scQueReg.getDot1Num()!=0) {//单选题难度分布条件过滤(难度为1）
            Random rand = new Random();//创建随机数生成器

            if(sclistLevel1.size()>scQueReg.getDot1Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[scQueReg.getDot1Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < scQueReg.getDot1Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(sclistLevel1.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endSclist.add(sclistLevel1.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < sclistLevel1.size(); i++) {
                    endSclist.add(sclistLevel1.get(i));
                }
            }

        }
        if(scQueReg.getDot2Num()!=null&& scQueReg.getDot2Num()!=0) {//单选题难度分布条件过滤(难度为2）
            Random rand = new Random();//创建随机数生成器

            if(sclistLevel2.size()>scQueReg.getDot2Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[scQueReg.getDot2Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < scQueReg.getDot2Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(sclistLevel2.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endSclist.add(sclistLevel2.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < sclistLevel2.size(); i++) {
                    endSclist.add(sclistLevel2.get(i));
                }
            }

        }
        if(scQueReg.getDot3Num()!=null&& scQueReg.getDot3Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器

            if(sclistLevel3.size()>scQueReg.getDot3Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[scQueReg.getDot3Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < scQueReg.getDot3Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(sclistLevel3.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endSclist.add(sclistLevel3.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < sclistLevel3.size(); i++) {
                    endSclist.add(sclistLevel3.get(i));
                }
            }

        }
        if(scQueReg.getDot4Num()!=null&& scQueReg.getDot4Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器

            if(sclistLevel4.size()>scQueReg.getDot4Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[scQueReg.getDot4Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < scQueReg.getDot4Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(sclistLevel4.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endSclist.add(sclistLevel4.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < sclistLevel4.size(); i++) {
                    endSclist.add(sclistLevel4.get(i));
                }
            }

        }

        if(mcQueReg.getDot1Num()!=null&& mcQueReg.getDot1Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器
            if(mclistLevel1.size()>mcQueReg.getDot1Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[mcQueReg.getDot1Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < mcQueReg.getDot1Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(mclistLevel1.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endMclist.add(mclistLevel1.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < mclistLevel1.size(); i++) {
                    endMclist.add(mclistLevel1.get(i));
                }
            }

        }
        if(mcQueReg.getDot2Num()!=null&& mcQueReg.getDot2Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器
            if(mclistLevel2.size()>mcQueReg.getDot2Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[mcQueReg.getDot2Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < mcQueReg.getDot2Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(mclistLevel2.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endMclist.add(mclistLevel2.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < mclistLevel2.size(); i++) {
                    endMclist.add(mclistLevel2.get(i));
                }
            }

        }
        if(mcQueReg.getDot3Num()!=null&& mcQueReg.getDot3Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器
            if(mclistLevel3.size()>mcQueReg.getDot3Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[mcQueReg.getDot3Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < mcQueReg.getDot3Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(mclistLevel3.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endMclist.add(mclistLevel3.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < mclistLevel3.size(); i++) {
                    endMclist.add(mclistLevel3.get(i));
                }
            }

        }
        if(mcQueReg.getDot4Num()!=null&& mcQueReg.getDot4Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器
            if(mclistLevel4.size()>mcQueReg.getDot4Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[mcQueReg.getDot4Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < mcQueReg.getDot4Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(mclistLevel4.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endMclist.add(mclistLevel4.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < mclistLevel4.size(); i++) {
                    endMclist.add(mclistLevel4.get(i));
                }
            }

        }

        if(tfQueReg.getDot1Num()!=null&& tfQueReg.getDot1Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器
            if(tflistLevel1.size()>tfQueReg.getDot1Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[tfQueReg.getDot1Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < tfQueReg.getDot1Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(tflistLevel1.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endTflist.add(tflistLevel1.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < tflistLevel1.size(); i++) {
                    endTflist.add(tflistLevel1.get(i));
                }
            }

        }
        if(tfQueReg.getDot2Num()!=null&& tfQueReg.getDot2Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器
            if(tflistLevel2.size()>tfQueReg.getDot2Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[tfQueReg.getDot2Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < tfQueReg.getDot2Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(tflistLevel2.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endTflist.add(tflistLevel2.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < tflistLevel2.size(); i++) {
                    endTflist.add(tflistLevel2.get(i));
                }
            }

        }
        if(tfQueReg.getDot3Num()!=null&& tfQueReg.getDot3Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器
            if(tflistLevel3.size()>tfQueReg.getDot3Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[tfQueReg.getDot3Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < tfQueReg.getDot3Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(tflistLevel3.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endTflist.add(tflistLevel3.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < tflistLevel3.size(); i++) {
                    endTflist.add(tflistLevel3.get(i));
                }
            }

        }
        if(tfQueReg.getDot4Num()!=null&& tfQueReg.getDot4Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器
            if(tflistLevel4.size()>tfQueReg.getDot4Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[tfQueReg.getDot4Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < tfQueReg.getDot4Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(tflistLevel4.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endTflist.add(tflistLevel4.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < tflistLevel4.size(); i++) {
                    endTflist.add(tflistLevel4.get(i));
                }
            }

        }

        if(fbQueReg.getDot1Num()!=null&& fbQueReg.getDot1Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器
            if(fblistLevel1.size()>fbQueReg.getDot1Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[fbQueReg.getDot1Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < fbQueReg.getDot1Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(fblistLevel1.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endFblist.add(fblistLevel1.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < fblistLevel1.size(); i++) {
                    endFblist.add(fblistLevel1.get(i));
                }
            }

        }
        if(fbQueReg.getDot2Num()!=null&& fbQueReg.getDot2Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器
            if(fblistLevel2.size()>fbQueReg.getDot2Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[fbQueReg.getDot2Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < fbQueReg.getDot2Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(fblistLevel2.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endFblist.add(fblistLevel2.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < fblistLevel2.size(); i++) {
                    endFblist.add(fblistLevel2.get(i));
                }
            }

        }
        if(fbQueReg.getDot3Num()!=null&& fbQueReg.getDot3Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器
            if(fblistLevel3.size()>fbQueReg.getDot3Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[fbQueReg.getDot3Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < fbQueReg.getDot3Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(fblistLevel3.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endFblist.add(fblistLevel3.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < fblistLevel3.size(); i++) {
                    endFblist.add(fblistLevel3.get(i));
                }
            }

        }
        if(fbQueReg.getDot4Num()!=null&& fbQueReg.getDot4Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器
            if(fblistLevel4.size()>fbQueReg.getDot4Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[fbQueReg.getDot4Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < fbQueReg.getDot4Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(fblistLevel4.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endFblist.add(fblistLevel4.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < fblistLevel4.size(); i++) {
                    endFblist.add(fblistLevel4.get(i));
                }
            }

        }

        if(qaQueReg.getDot1Num()!=null&& qaQueReg.getDot1Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器
            if(qalistLevel1.size()>qaQueReg.getDot1Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[qaQueReg.getDot1Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < qaQueReg.getDot1Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(qalistLevel1.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endQalist.add(qalistLevel1.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < qalistLevel1.size(); i++) {
                    endQalist.add(qalistLevel1.get(i));
                }
            }

        }
        if(qaQueReg.getDot2Num()!=null&& qaQueReg.getDot2Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器
            if(qalistLevel2.size()>qaQueReg.getDot2Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[qaQueReg.getDot2Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < qaQueReg.getDot2Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(qalistLevel2.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endQalist.add(qalistLevel2.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < qalistLevel2.size(); i++) {
                    endQalist.add(qalistLevel2.get(i));
                }
            }

        }
        if(qaQueReg.getDot3Num()!=null&& qaQueReg.getDot3Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器
            if(qalistLevel3.size()>qaQueReg.getDot3Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[qaQueReg.getDot3Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < qaQueReg.getDot3Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(qalistLevel3.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endQalist.add(qalistLevel3.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < qalistLevel3.size(); i++) {
                    endQalist.add(qalistLevel3.get(i));
                }
            }

        }
        if(qaQueReg.getDot4Num()!=null&& qaQueReg.getDot4Num()!=0) {//单选题难度分布条件过滤(难度为3）
            Random rand = new Random();//创建随机数生成器
            if(qalistLevel4.size()>qaQueReg.getDot4Num()){ //如果题库中题型满足所需要的试题难度数量，则随机生成
                int[] intRandom = new int[qaQueReg.getDot4Num()];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断

                while (randlist.size() < qaQueReg.getDot4Num()) {//循环生成不重复的随机数，这里randlist.size()和sclistLevel1.size()有关
                    // 因为题库里该题型数量可能小于试题规约给出的数量
                    int num = rand.nextInt(qalistLevel4.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //获取该随机数为下标的试题，加入最终列表
                for (int i = 0; i < intRandom.length; i++) {
                    endQalist.add(qalistLevel4.get(intRandom[i]));
                }


            }else{//题库中题型不满足所需要的试题难度数量
                //如果题库中数量不满足的话，就把题库中所有该难度值的题，都选入最终列表中
                for (int i = 0; i < qalistLevel4.size(); i++) {
                    endQalist.add(qalistLevel4.get(i));
                }
            }

        }

        //此时难度分布的试题已经过滤完毕，如果试题数量依然少于需要的数量，则随机挑选试题加入
        if(endSclist.size()<testPaperReg.getScTotalNum()){
            Random rand = new Random();//创建随机数生成器
            int endNum=(testPaperReg.getScTotalNum())-(endSclist.size());//最后的差值
            while(endNum!=0){
                int[] intRandom = new int[endNum];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断
                while (randlist.size() < endNum) {
                    int num = rand.nextInt(sclist2.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //
                for (int i = 0; i < intRandom.length; i++) {
                    boolean flag=false;//检查是否有重复id
                    for (int j = 0; j < endSclist.size(); j++) {
                        if((sclist2.get(intRandom[i]).getId())==endSclist.get(j).getId()){
                            flag=true;
                        }
                    }
                    if(flag==false){
                        endSclist.add(sclist2.get(intRandom[i]));
                        endNum--;
                    }

                }
            }
        }
        if(endMclist.size()<testPaperReg.getMcTotalNum()){
            Random rand = new Random();//创建随机数生成器
            int endNum=(testPaperReg.getMcTotalNum())-(endMclist.size());//最后的差值
            while(endNum!=0){
                int[] intRandom = new int[endNum];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断
                while (randlist.size() < endNum) {
                    int num = rand.nextInt(mclist2.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //
                for (int i = 0; i < intRandom.length; i++) {
                    boolean flag=false;//检查是否有重复id
                    for (int j = 0; j < endMclist.size(); j++) {
                        if((mclist2.get(intRandom[i]).getId())==endMclist.get(j).getId()){
                            flag=true;
                        }
                    }
                    if(flag==false){
                        endMclist.add(mclist2.get(intRandom[i]));
                        endNum--;
                    }

                }
            }



        }
        if(endTflist.size()<testPaperReg.getTfTotalNum()){
            Random rand = new Random();//创建随机数生成器
            int endNum=(testPaperReg.getTfTotalNum())-(endTflist.size());//最后的差值
            while(endNum!=0){
                int[] intRandom = new int[endNum];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断
                while (randlist.size() < endNum) {
                    int num = rand.nextInt(tflist2.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //
                for (int i = 0; i < intRandom.length; i++) {
                    boolean flag=false;//检查是否有重复id
                    for (int j = 0; j < endTflist.size(); j++) {
                        if((tflist2.get(intRandom[i]).getId())==endTflist.get(j).getId()){
                            flag=true;
                        }
                    }
                    if(flag==false){
                        endTflist.add(tflist2.get(intRandom[i]));
                        endNum--;
                    }

                }
            }



        }
        if(endFblist.size()<testPaperReg.getFbTotalNum()){
            Random rand = new Random();//创建随机数生成器
            int endNum=(testPaperReg.getFbTotalNum())-(endFblist.size());//最后的差值
            while(endNum!=0){
                int[] intRandom = new int[endNum];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断
                while (randlist.size() < endNum) {
                    int num = rand.nextInt(fblist2.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //
                for (int i = 0; i < intRandom.length; i++) {
                    boolean flag=false;//检查是否有重复id
                    for (int j = 0; j < endFblist.size(); j++) {
                        if((fblist2.get(intRandom[i]).getId())==endFblist.get(j).getId()){
                            flag=true;
                        }
                    }
                    if(flag==false){
                        endFblist.add(fblist2.get(intRandom[i]));
                        endNum--;
                    }
                }
            }



        }
        if(endQalist.size()<testPaperReg.getQaTotalNum()){
            Random rand = new Random();//创建随机数生成器
            int endNum=(testPaperReg.getQaTotalNum())-(endQalist.size());//最后的差值
            while(endNum!=0){
                int[] intRandom = new int[endNum];
                List randlist = new ArrayList(); //用来保存随机生成数，并用于判断
                while (randlist.size() < endNum) {
                    int num = rand.nextInt(qalist2.size());//生成参数为指定范围的值,
                    // 这里参数值为该题型和难度下的数据库中试题的数量，
                    if (!randlist.contains(num)) {
                        randlist.add(num);        //往集合里面添加数据。
                    }
                }
                for(int i = 0;i <randlist.size();i++) {//把随机数list集合转换为数组
                    intRandom[i] = (Integer)(randlist.get(i));
                }
                //
                for (int i = 0; i < intRandom.length; i++) {
                    boolean flag=false;//检查是否有重复id
                    for (int j = 0; j < endQalist.size(); j++) {
                        if((qalist2.get(intRandom[i]).getId())==endQalist.get(j).getId()){
                            flag=true;
                        }
                    }
                    if(flag==false){
                        endQalist.add(qalist2.get(intRandom[i]));
                        endNum--;
                    }
                }
            }



        }

        TestPaper testPaper=new TestPaper();
        testPaper.setSclist(endSclist);
        testPaper.setMclist(endMclist);
        testPaper.setTflist(endTflist);
        testPaper.setFblist(endFblist);
        testPaper.setQalist(endQalist);









        return testPaper;

    }

    //自动组卷导出word
    public TempTestPaper handleTempTestPaper2(TempTestPaper tempTestPaper) {
        //设置单选题的总分
        if(tempTestPaper.getSclist()!=null&&tempTestPaper.getScScore()!=null){
            ScPapTitle scPapTitle=new ScPapTitle();
            scPapTitle.setScTotalScore(tempTestPaper.getSclist().size()*tempTestPaper.getScScore());
            scPapTitle.setScLength(tempTestPaper.getSclist().size());
            scPapTitle.setScScore(tempTestPaper.getScScore());
            tempTestPaper.setScTitle(scPapTitle);

            //设置序号和答案
            String answer="";
            for (int i = 0; i < tempTestPaper.getSclist().size(); i++) {
                SCQuestion scQuestion=tempTestPaper.getSclist().get(i);
                scQuestion.setStem((i+1)+"."+scQuestion.getStem());
                answer+=(i+1)+"."+scQuestion.getAnswer()+"  ";
            }
            scPapTitle.setScAnswer(answer);


        }
        //设置多选题的总分
        if(tempTestPaper.getMclist()!=null&&tempTestPaper.getMcScore()!=null){
            McPapTitle mcPapTitle=new McPapTitle();
            mcPapTitle.setMcLength(tempTestPaper.getMclist().size());
            mcPapTitle.setMcTotalScore(tempTestPaper.getMclist().size()*tempTestPaper.getMcScore());
            mcPapTitle.setMcScore(tempTestPaper.getMcScore());
            tempTestPaper.setMcPapTitle(mcPapTitle);

            //设置序号和答案
            String answer="";
            for (int i = 0; i < tempTestPaper.getMclist().size(); i++) {
                MCQuestion mcQuestion=tempTestPaper.getMclist().get(i);
                mcQuestion.setStem((i+1)+"."+mcQuestion.getStem());
                answer+=(i+1)+"."+mcQuestion.getAnswer()+"  ";
            }
            mcPapTitle.setMcAnswer(answer);
        }
        //设置判断的总分
        if(tempTestPaper.getTflist()!=null&&tempTestPaper.getTfScore()!=null){
            TfPapTitle tfPapTitle=new TfPapTitle();
            tfPapTitle.setTfLength(tempTestPaper.getTflist().size());
            tfPapTitle.setTfTotalScore(tempTestPaper.getTflist().size()*tempTestPaper.getTfScore());
            tfPapTitle.setTfTotalScore(tempTestPaper.getTfScore());
            tempTestPaper.setTfPapTitle(tfPapTitle);



            //设置序号和答案
            String answer="";
            for (int i = 0; i < tempTestPaper.getTflist().size(); i++) {
                TFQuestion tfQuestion=tempTestPaper.getTflist().get(i);
                tfQuestion.setStem((i+1)+"."+tfQuestion.getStem());
                answer+=(i+1)+"."+tfQuestion.getAnswer()+"  ";
            }
            tfPapTitle.setTfAnswer(answer);
        }
        //设置填空题的总分
        if(tempTestPaper.getFblist()!=null&&(tempTestPaper.getFbScore2()!=null)){


            FbPapTitle fbPapTitle=new FbPapTitle();
            fbPapTitle.setFbLength(tempTestPaper.getFblist().size());
            fbPapTitle.setFbTotalScore(tempTestPaper.getFblist().size()*tempTestPaper.getFbScore2());
            fbPapTitle.setFbTotalScore(tempTestPaper.getFbScore2());
            tempTestPaper.setFbPapTitle(fbPapTitle);
            //设置序号和答案
            String [] tmp =new String[tempTestPaper.getFblist().size()];
            for (int i = 0; i < tempTestPaper.getFblist().size(); i++) {
                FBQuestion fbQuestion=tempTestPaper.getFblist().get(i);
                fbQuestion.setStem((i+1)+"."+fbQuestion.getStem());
                tmp[i]=(i+1)+"."+fbQuestion.getAnswer();
            }
            fbPapTitle.setFbAnswer(StringUtils.join(tmp,"\r"));

        }
        //设置简答题的总分
        if(tempTestPaper.getQalist()!=null&&(tempTestPaper.getQaScore2()!=null)){

            QaPapTitle qaPapTitle=new QaPapTitle();
            qaPapTitle.setQaLength(tempTestPaper.getQalist().size());
            qaPapTitle.setQaTotalScore(tempTestPaper.getQalist().size()*tempTestPaper.getQaScore2());

            tempTestPaper.setQaPapTitle(qaPapTitle);

            //设置序号和答案
            String [] tmp =new String[tempTestPaper.getQalist().size()];
            for (int i = 0; i < tempTestPaper.getQalist().size(); i++) {
                QAQuestion qaQuestion=tempTestPaper.getQalist().get(i);
                qaQuestion.setStem((i+1)+"."+qaQuestion.getStem());
                tmp[i]=(i+1)+"."+qaQuestion.getAnswer();
            }
            qaPapTitle.setQaAnswer(StringUtils.join(tmp,"\r"));

        }
        //设置多选题的选项序号
        if(tempTestPaper.getMclist()!=null&&tempTestPaper.getMcScore()!=null){

            for (int i = 0; i < tempTestPaper.getMclist().size(); i++) {
                List<MCOption> options=tempTestPaper.getMclist().get(i).getOptions();
                /*  ArrayList<TextRenderData> textRenderDatas= new ArrayList<TextRenderData>();*/

                for (int j = 0; j < options.size(); j++) {
                    /*TextRenderData textRenderData = new TextRenderData(options.get(j).getOptionContent().toString());//获取多选题的每一个选项
                    textRenderDatas.add(textRenderData);*/
                    options.get(j).setOptionContent(charNum[j]+options.get(j).getOptionContent());
                }
                /* tempTestPaper.getMclist().get(i).setOptions2( new NumbericRenderData(textRenderDatas));*/
                /*   FMT_UPPER_LETTER,*/

            }
        }


        return tempTestPaper;
    }

    //自动组卷提交
    @Transactional
    public boolean addTestPaper2(TestPaper testPaper) {

        //1.设置基本参数：创建时间，提交教师id,试卷状态，试题类型
        testPaper.setCreateTime(new Date());
        testPaper.setPostTeacherId(TeacherUtils.getTeacher().getId());
        testPaper.setPaperType(1);//试题组卷类型，0代表手动组卷，1代表自动组卷
        testPaper.setStatus(0);//状态为0表示未审核
        testPaper.setIsTemplate(0);//设置非试卷模板添加
        String queTypes="";
        if(testPaper.getSclist()!=null&&testPaper.getSclist().size()>0){
            queTypes+="单选题@";
        }
        if(testPaper.getMclist()!=null&&testPaper.getMclist().size()>0){
            queTypes+="多选题@";
        }
        if(testPaper.getTflist()!=null&&testPaper.getTflist().size()>0){
            queTypes+="判断题@";
        }
        if(testPaper.getFblist()!=null&&testPaper.getFblist().size()>0){
            queTypes+="填空题@";
        }
        if(testPaper.getQalist()!=null&&testPaper.getQalist().size()>0){
            queTypes+="简答题@";
        }
        testPaper.setQueTypes(queTypes);//设置试卷中试题的类型

        testPaperMapper.insertSelective(testPaper);
        Integer testPaperId=testPaper.getId();

        //添加试卷分数表
        List<QuestionScore> questionScores=new ArrayList<>();
        //设置单选题
        if(testPaper.getSclist()!=null&&testPaper.getSclist().size()>0){
            List<SCQuestion> sclist=testPaper.getSclist();
            for (int i = 0; i < sclist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(sclist.get(i).getId());//设置单选题id
                questionScore.setQueType("单选题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getScScore());//设置单选题分数
                questionScores.add(questionScore);//加入集合
            }
        }
        //设置多选题
        if(testPaper.getMclist()!=null&&testPaper.getMclist().size()>0){
            List<MCQuestion> mclist=testPaper.getMclist();
            for (int i = 0; i < mclist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(mclist.get(i).getId());//设置多选题id
                questionScore.setQueType("多选题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getMcScore());//设置单选题分数
                questionScores.add(questionScore);//加入集合
            }
        }
        //设置判断题
        if(testPaper.getTflist()!=null&&testPaper.getTflist().size()>0){
            List<TFQuestion> tflist=testPaper.getTflist();
            for (int i = 0; i < tflist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(tflist.get(i).getId());//设置单选题id
                questionScore.setQueType("判断题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getTfScore());//设置单选题分数
                questionScores.add(questionScore);//加入集合
            }
        }
        //设置填空题
        if(testPaper.getFblist()!=null&&testPaper.getFblist().size()>0){
            List<FBQuestion> fblist=testPaper.getFblist();
            for (int i = 0; i < fblist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(fblist.get(i).getId());//设置单选题id
                questionScore.setQueType("填空题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getFbScore2());//设置填空题分数
                questionScores.add(questionScore);//加入集合
            }
        }
        //设置简答题
        if(testPaper.getQalist()!=null&&testPaper.getQalist().size()>0){
            List<QAQuestion> qalist=testPaper.getQalist();
            for (int i = 0; i < qalist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(qalist.get(i).getId());//设置单选题id
                questionScore.setQueType("简答题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getQaScore2());//设置单选题分数
                questionScores.add(questionScore);//加入集合
            }
        }
        return (questionScoreMapper.addQueScoreList(questionScores)==questionScores.size());//返回插入的结果

    }


    //获取试卷列表
    public RespPageBean getTestPaperByPage(Integer page, Integer size, TestPaper testPaper) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<TestPaper> data=testPaperMapper.getTestPaperByPage(page,size,testPaper);
        //这里把试题信息进行封装
        //首先获取试卷中的试题类型，放到集合中
        List<SCQuestion> sclist=new ArrayList<>();
        List<MCQuestion> mclist=new ArrayList<>();
        List<TFQuestion> tflist=new ArrayList<>();
        List<FBQuestion> fblist=new ArrayList<>();
        List<QAQuestion> qalist=new ArrayList<>();

        for (int i = 0; i < data.size(); i++) {//遍历试卷
            TestPaper testPaper1=data.get(i);
            System.out.println("aaaaaaaaaaaa:"+testPaper1.getId());
            List<QuestionScore> questionScoreList=questionScoreMapper.getQuestionScoreByTestPaperId2(testPaper1.getId());
            System.out.println("1111111111111111111111111111"+questionScoreList);
            for (int j = 0; j < questionScoreList.size(); j++) {
                QuestionScore questionScore=questionScoreList.get(j);
                //
                if(questionScore.getQueType().equals("单选题")){
                    SCQuestion scQuestion=scQuestionService.getSCQuestionById(questionScore.getQuestionId());
                    sclist.add(scQuestion);
                }else if(questionScore.getQueType().equals("多选题")){
                    MCQuestion mcQuestion=mcQuestionService.getMCQuestionById(questionScore.getQuestionId());
                    mclist.add(mcQuestion);
                }else if(questionScore.getQueType().equals("判断题")){
                    TFQuestion tfQuestion=tfQuestionService.getTFQuestionById(questionScore.getQuestionId());
                    tflist.add(tfQuestion);
                }else if(questionScore.getQueType().equals("填空题")){
                    FBQuestion fbQuestion=fbQuestionService.getFBQuestionById(questionScore.getQuestionId());
                    fblist.add(fbQuestion);

                }else if(questionScore.getQueType().equals("简答题")){
                    QAQuestion qaQuestion=qaQuestionService.getQAQuestionById(questionScore.getQuestionId());
                    qalist.add(qaQuestion);
                }
            }

           // System.out.println(">>>>questionScoreList:"+questionScoreList);
            testPaper1.setQuestionScores(questionScoreList);
            testPaper1.setSclist(sclist);
            testPaper1.setMclist(mclist);
            testPaper1.setTflist(tflist);
            testPaper1.setFblist(fblist);
            testPaper1.setQalist(qalist);

        }

        Long total=testPaperMapper.getTestPaperTotal(testPaper);//总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(data);//放入数据
        bean.setTotal(total);//放入总记录数
        return bean;
    }

    //获取组卷人列表
    public List<Teacher> getPostTeachers() {
        return testPaperMapper.getPostTeachers();
    }

    public Integer deleteTestPaperById(Integer id) {
        return  testPaperMapper.deleteByPrimaryKey(id);
    }

    //更新试卷（手动组卷）
    @Transactional
    public boolean updateTestPaper(TestPaper testPaper) {


        String queTypes="";

        if(testPaper.getSclist()!=null&&testPaper.getSclist().size()>0){
            queTypes+="单选题@";
        }
        if(testPaper.getMclist()!=null&&testPaper.getMclist().size()>0){
            queTypes+="多选题@";
        }
        if(testPaper.getTflist()!=null&&testPaper.getTflist().size()>0){
            queTypes+="判断题@";
        }
        if(testPaper.getFblist()!=null&&testPaper.getFblist().size()>0){
            queTypes+="填空题@";
        }
        if(testPaper.getQalist()!=null&&testPaper.getQalist().size()>0){
            queTypes+="简答题@";
        }
        testPaper.setQueTypes(queTypes);//设置试卷中试题的类型
        testPaperMapper.updateByPrimaryKeySelective(testPaper);
        Integer testPaperId=testPaper.getId();

        //添加试卷分数表
        List<QuestionScore> questionScores=new ArrayList<>();
        //设置单选题
        if(testPaper.getSclist()!=null&&testPaper.getSclist().size()>0){
            List<SCQuestion> sclist=testPaper.getSclist();
            for (int i = 0; i < sclist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(sclist.get(i).getId());//设置单选题id
                questionScore.setQueType("单选题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getScScore());
                questionScores.add(questionScore);//加入集合
            }
        }
        //设置多选题
        if(testPaper.getMclist()!=null&&testPaper.getMclist().size()>0){
            List<MCQuestion> mclist=testPaper.getMclist();
            for (int i = 0; i < mclist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(mclist.get(i).getId());//设置多选题id
                questionScore.setQueType("多选题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getMcScore());
                questionScores.add(questionScore);//加入集合
            }
        }
        //设置判断题
        if(testPaper.getTflist()!=null&&testPaper.getTflist().size()>0){
            List<TFQuestion> tflist=testPaper.getTflist();
            for (int i = 0; i < tflist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(tflist.get(i).getId());
                questionScore.setQueType("判断题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getTfScore());
                questionScores.add(questionScore);//加入集合
            }
        }
        //设置填空题
        if(testPaper.getFblist()!=null&&testPaper.getFblist().size()>0){
            List<FBQuestion> fblist=testPaper.getFblist();
            for (int i = 0; i < fblist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(fblist.get(i).getId());//设置单选题id
                questionScore.setQueType("填空题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getFbScore()[i]);
                questionScores.add(questionScore);//加入集合
            }
        }
        //设置简答题
        if(testPaper.getQalist()!=null&&testPaper.getQalist().size()>0){
            List<QAQuestion> qalist=testPaper.getQalist();
            for (int i = 0; i < qalist.size(); i++) {
                QuestionScore questionScore =new QuestionScore();
                questionScore.setTestPaperId(testPaperId);//设置试卷id
                questionScore.setQuestionId(qalist.get(i).getId());//设置单选题id
                questionScore.setQueType("简答题");
                questionScore.setSortNum(i+1);//设置排序号
                questionScore.setQueScore(testPaper.getQaScore()[i]);
                questionScores.add(questionScore);//加入集合
            }
        }

        //删除所有的试题分数记录
        questionScoreMapper.deleteByTestPaperId(testPaper.getId());
        //重新添加
        return (questionScoreMapper.addQueScoreList(questionScores)==questionScores.size());//返回插入的结果
    }
}
