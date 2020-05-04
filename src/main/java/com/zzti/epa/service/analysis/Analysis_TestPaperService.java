package com.zzti.epa.service.analysis;

import com.zzti.epa.mapper.grade.StudentGradeMapper;
import com.zzti.epa.mapper.paper.TestPaperMapper;
import com.zzti.epa.model.analysis.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Service
public class Analysis_TestPaperService {

    @Autowired
    TestPaperMapper testPaperMapper;
    @Autowired
    StudentGradeMapper studentGradeMapper;
    //得到试卷列表
    public List<ListOfTestPaperForWeb> getListOfTestPaper(){
        List<ListOfTestPaper> list = testPaperMapper.select_ListOfTestPaper();
        List<ListOfTestPaperForWeb> listOfTestPaperForWebs= new ArrayList<ListOfTestPaperForWeb>();
        for(int i=0;i<list.size();i++){
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            String createTime = formatter.format(list.get(i).getCreateTime());
            ListOfTestPaperForWeb listOfTestPaperForWeb=new ListOfTestPaperForWeb();
            //将数据放到List<ListOfTestPaperForWeb>中，返回给前端
            listOfTestPaperForWeb.setId(list.get(i).getId());
            listOfTestPaperForWeb.setName(list.get(i).getName());
            listOfTestPaperForWeb.setTeacher(list.get(i).getTeacher());
            listOfTestPaperForWeb.setCreateTime(createTime);
            listOfTestPaperForWebs.add(listOfTestPaperForWeb);
        }
        return  listOfTestPaperForWebs;
    }
    //根据试卷id查询试卷
    public TestPaperForAnalysis getTestPaperById(int id){
        return testPaperMapper.getTestPaperByIdForAnalysis(id);
    }
    //根据试卷计算该试卷应该统计的分数区间，赋值给TotalScoreDistribution
    public TotalScoreDistribution calculate_score_section(TestPaperForAnalysis testPaperForAnalysis){
        //得到满分和及格分计算柱状图的分数区间
        float full_score = testPaperForAnalysis.getTotalScore();
        float pass_score = testPaperForAnalysis.getPassScore();
        String[] section = new String[10];
        section[0] = pass_score+"以下";
        int n=(int)pass_score,m=(int)pass_score,i=1;
        while (n<full_score){
            n+=9;
            if(n+1 != full_score){
                section[i] = m+"-"+n;
                m = n = n+1;
            }else {
                n = n+1;
                section[i] = m+"-"+n;
            }
            i++;
        }
        int arr_length = i;
        TotalScoreDistribution totalScoreDistribution = new TotalScoreDistribution();
        totalScoreDistribution.setLength(arr_length);
        totalScoreDistribution.setSection(section);
        return totalScoreDistribution;
    }
    //根据试卷id，查询试卷成绩表(得到一个List)，并获取所有的成绩，统计到对应的分数区间中。
    public void TotalScoreDistribution_service(int testPaperId,TotalScoreDistribution totalScoreDistribution){
        //根据试卷id，以列表形式得到成绩表中的数据
        List<StudentGrade> studentGrades = studentGradeMapper.getStudentGradeOfListByTestPaperId(testPaperId);


        String[] section = totalScoreDistribution.getSection();
        int[] paper_num = new int[totalScoreDistribution.getLength()];
        //获取所有成绩，统计到对应的分数区间中
        for(int i=0;i<studentGrades.size();i++){
            for(int j=1;j<totalScoreDistribution.getLength();j++){
                float passscore = Float.parseFloat(section[0].split("以下")[0]);
                float min = Float.parseFloat(section[j].split("-")[0]);
                float max = Float.parseFloat(section[j].split("-")[1]);
                //如果这个学生的分数在这个区间之内，这个区间的人数就+1
                if(studentGrades.get(i).getTotalScore() - min >=0 && studentGrades.get(i).getTotalScore()-max <= 0 ){
                    paper_num[j]+=1;
                }else if(studentGrades.get(i).getTotalScore()<passscore){
                    paper_num[0]+=1;
                }
            }
        }
        totalScoreDistribution.setPeople_num(paper_num);
    }

}
