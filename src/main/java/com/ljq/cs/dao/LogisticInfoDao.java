package com.ljq.cs.dao;

import com.ljq.cs.entity.LogisticInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description: 物流状态 DAO 接口
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
@Repository
public interface LogisticInfoDao {

    //	添加物流状态
    boolean create(LogisticInfo info);
    //	删除物流状态
    boolean del(LogisticInfo info);
    //	修改物流状态
    boolean update(LogisticInfo info);
    //	查询所有物流状态
    List queryAll();
    //	查询单条物流状态
    LogisticInfo queryOne(LogisticInfo info);



}
