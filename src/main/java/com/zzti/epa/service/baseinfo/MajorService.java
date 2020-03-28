package com.zzti.epa.service.baseinfo;

import com.zzti.epa.mapper.MajorMapper;
import com.zzti.epa.model.Major;
import com.zzti.epa.model.RespPageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName MajorService
 * @Description TODO
 * @Author Administrator
 * @Date 2020-03-28 21:33
 **/
@Service
public class MajorService {

    @Autowired
    MajorMapper majorMapper;
    public RespPageBean getMajorByPage(Integer page, Integer size, String keyword) {
        if(page!=null&& size!=null){
            page=(page-1)*size;
        }
        List<Major> data=majorMapper.getMajorByPage(page,size,keyword);//第三个参数为关键词
        Long total=majorMapper.getTotal(keyword);//总记录数
        RespPageBean bean = new RespPageBean();
        bean.setData(data);
        bean.setTotal(total);
        return bean;
    }

    public Integer addMajor(Major major) {
        return majorMapper.insertSelective(major);
    }

    public Integer updateMajor(Major major) {
        return majorMapper.updateByPrimaryKeySelective(major);
    }

    public Integer deleteMajorBySid(Integer id) {
        return majorMapper.deleteByPrimaryKey(id);
    }
}
