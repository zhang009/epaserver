package com.zzti.epa.service.baseinfo;

import com.zzti.epa.mapper.paper.SemesterMapper;
import com.zzti.epa.model.Semester;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName SemesterService
 * @Description 学期-业务层
 * @Author Administrator
 * @Date 2020-04-21 10:08
 **/
@Service
public class SemesterService {
    @Autowired
    SemesterMapper semesterMapper;

    public List<Semester> getAllSemesters() {

        return semesterMapper.getAllSemesters();
    }
}
