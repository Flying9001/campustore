package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.Shoppingcar;

import java.util.List;

/**
 * @description: 购物车 DAO 接口
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
public interface ShoppingcarDao {

    //	将商品添加到购物车
    boolean addOne(Shoppingcar shopcar);
    //	清空购物车
    boolean delAll(Shoppingcar shopcar);
    //	将一件商品移除购物车
    boolean delOne(Shoppingcar shopcar);
    //	修改购物车内商品信息
    boolean update(Shoppingcar shopcar);
    //	查询个人购物车
    List queryByUser(Shoppingcar shopcar, Pagination page);
    //	查询	个人单项购物车详情
    Shoppingcar queryOne(Shoppingcar shopcar);
    //	统计个人购物车订单量
    int accountByUser(Shoppingcar shopcar);

}
