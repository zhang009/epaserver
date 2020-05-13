package com.zzti.epa.service.baseinfo;

import com.zzti.epa.mapper.baseinfo.GradeMapper;
import com.zzti.epa.model.Grade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

/**
 * @ClassName GradeService
 * @Description 班级业务层
 * @Author Administrator
 * @Date 2020-05-13 22:09
 **/
@Service
public class BaseInfoGradeService {
    @Autowired
    GradeMapper gradeMapper;
    public List<Grade> getAllGrade() {
        return gradeMapper.getAllGrade();
    }
}
