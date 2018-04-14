package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.Order;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description: 订单 DAO 接口
 * @author: lujunqiang
 * @date: 2017/12/17
 */
@Repository
public interface OrderDao {

    //	创建订单
    boolean createOrder(Order order);
    //	删除个人一项订单
    boolean delOne(Order order);
    //	删除个人所有订单
    boolean delByUser(Order order);
    //	修改订单信息(取消订单、修改支付状态、修改订单提交状态)
    boolean update(Order order);
    //	查询个人所有订单
    List queryByUser(Order order, Pagination page);
    //	查询个人一项订单
    Order queryOne(Order order);
    //	统计个人订单数量
    int accountByUser(Order order);
    //	统计系统所有订单量
    int accountAll();


}
