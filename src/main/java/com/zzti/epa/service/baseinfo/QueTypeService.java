package com.zzti.epa.service.baseinfo;

import com.zzti.epa.mapper.paper.QueTypeMapper;
import com.zzti.epa.model.QueType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName QueTypeService
 * @Description 题型业务层
 * @Author Administrator
 * @Date 2020-04-26 9:56
 **/
@Service
public class QueTypeService {
    @Autowired
    QueTypeMapper queTypeMapper;
    public List<QueType> getQueTypes() {

        return queTypeMapper.getQueTypes();
    }

    public Integer addQueType(QueType queType) {
        //首先查询数据库中是否已经有该题型名称,如果有已经存储则返回数字2

        if(queTypeMapper.isExistQue(queType.getName()).size()!=0){
            return 2;
        }else{
            /*QueType queType=new QueType();
            queType.setName(queTypeName);*/

            return queTypeMapper.insertSelective(queType);
        }

    }
}
