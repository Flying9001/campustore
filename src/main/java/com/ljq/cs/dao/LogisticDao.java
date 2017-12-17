package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.Logistic;

import java.util.List;

/**
 * @description: 物流信息 DAO 接口
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
public interface LogisticDao {

    //	创建物流信息
    boolean create( Logistic logistic);
    //	删除某一项物流信息
    boolean delOne(Logistic logistic);
    //	更新物流信息
    boolean update(Logistic logistic);
    //	查询物流信息ByOrder
    Logistic queryByOrder(Logistic logistic);
    //	查询物流信息ByEmployee
    List queryByEmp(Logistic logistic, Pagination page);
    //	统计物流数量All
    int countAll();
    //	统计物流数量ByEmployee
    int countByEmp(Logistic logistic);


}
