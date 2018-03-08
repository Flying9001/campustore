package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.Logistic;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description: 物流信息 DAO 接口
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
@Repository
public interface LogisticDao {

    //	创建物流信息
    boolean create( @Param("logistic") Logistic logistic);
    //	删除某一项物流信息
    boolean delOne(@Param("logistic") Logistic logistic);
    //	更新物流信息
    boolean update(@Param("logistic") Logistic logistic);
    //	查询物流信息ByOrder
    Logistic queryByOrder(@Param("logistic") Logistic logistic);
    //	查询物流信息ByEmployee
    List queryByEmp(@Param("logistic") Logistic logistic, @Param("page") Pagination page);
    //	统计物流数量All
    int countAll();
    //	统计物流数量ByEmployee
    int countByEmp(@Param("logistic") Logistic logistic);


}
