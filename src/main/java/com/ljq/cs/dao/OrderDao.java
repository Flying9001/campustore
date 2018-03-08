package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.Order;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description: 订单 DAO 接口
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
@Repository
public interface OrderDao {

    //	创建订单
    boolean createOrder(@Param("order") Order order);
    //	删除个人一项订单
    boolean delOne(@Param("order") Order order);
    //	删除个人所有订单
    boolean delByUser(@Param("order") Order order);
    //	修改订单信息(取消订单、修改支付状态、修改订单提交状态)
    boolean update(@Param("order") Order order);
    //	查询个人所有订单
    List queryByUser(@Param("order") Order order, @Param("page") Pagination page);
    //	查询个人一项订单
    Order queryOne(@Param("order") Order order);
    //	统计个人订单数量
    int accountByUser(@Param("order") Order order);
    //	统计系统所有订单量
    int accountAll();


}
