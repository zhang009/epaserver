package com.zzti.epa.mapper.paper;

import com.zzti.epa.model.Teacher;
import com.zzti.epa.model.TestPaper;
import com.zzti.epa.model.analysis.ListOfTestPaper;
import com.zzti.epa.model.analysis.TestPaperForAnalysis;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TestPaperMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TestPaper record);

    int insertSelective(TestPaper record);

    TestPaper selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TestPaper record);

    int updateByPrimaryKey(TestPaper record);

    //write by writer start
    //write by writer start
    //试卷的模糊查询
    List<ListOfTestPaper> select_ListOfTestPaperByName(@Param("name") String name);
    //查询试卷列表
    List<ListOfTestPaper> select_ListOfTestPaper();
    //根据id查询试卷
    TestPaperForAnalysis getTestPaperByIdForAnalysis(@Param("id")Integer id);

    //write by writer end
    //write by writer end



    //write by yifang start
    //获取试卷列表
    List<TestPaper> getTestPaperByPage(@Param("page")Integer page, @Param("size") Integer size, @Param("tp") TestPaper testPaper);
    Long getTotal(@Param("tp")TestPaper testPaper);
    //获取试卷总数
    Long getTestPaperTotal(@Param("tp")TestPaper testPaper);

    //获取试卷模板列表
    List<TestPaper> getTestPaperTemplateByPage(@Param("page")Integer page,  @Param("size")Integer size, @Param("tp")TestPaper testPaper);

    //获取试卷模板总数
    Long getTestPaperTemplateTotal(@Param("tp")TestPaper testPaper);

    //获取组卷人列表（非试卷模板）
    List<Teacher> getPostTeachers();

    TestPaper getTestPaperById(@Param("testPaperId") Integer testpaperId);
    //获取组卷人列表(所有）
    List<Teacher> getAllCreateTeachers();

    //获取所有试卷
    List<TestPaper> getAllTestPaperByPage(@Param("page")Integer page, @Param("size") Integer size, @Param("tp") TestPaper testPaper);

    Long getAllTestPaperTotal( @Param("tp")TestPaper testPaper);

    //获取试卷信息，（包括试卷和试卷模板）
    TestPaper getAllTestPaperById(@Param("testPaperId") Integer testpaperId);
    TestPaper getAllTestPaperById2(@Param("testPaperId") Integer testpaperId);
    //write by yifang end


    //根据学号获取所有的试卷
    List<TestPaper> getAllMyTestPaper(@Param("page")Integer page, @Param("size")Integer size, @Param("studentNum")String studentNum);

    Long getAllMyTestPaperTotal(@Param("studentNum") String studentNum);
}