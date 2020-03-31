package com.zzti.epa.service.baseinfo;

import com.zzti.epa.mapper.baseinfo.KnowsMapper;
import com.zzti.epa.model.Knows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName KnowsService
 * @Description TODO
 * @Author Administrator
 * @Date 2020-03-30 19:20
 **/
@Service
public class KnowsService {
    @Autowired
    KnowsMapper knowsMapper;
    public List<Knows> getKnowsByCourseId(Integer courseId) {
        return knowsMapper.getKnowsByCourseId(courseId);
    }

    public Integer addKnows(Knows knows) {
        return knowsMapper.insertSelective(knows);
    }

    public Integer updateKnows(Knows knows) {
        return knowsMapper.updateByPrimaryKey(knows);
    }

    public Integer deleteKnowsByKid(Integer id) {
        return knowsMapper.deleteByPrimaryKey(id);
    }
}
