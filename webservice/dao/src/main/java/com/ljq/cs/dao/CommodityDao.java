package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.Commodity;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description: 商品信息 DAO 接口
 * @author: lujunqiang
 * @date: 2017/12/17
 */
@Repository
public interface CommodityDao {

    //	添加商品
    boolean addOne(Commodity commodity);
    //	删除某一件商品
    boolean delOne(Commodity commodity);
    //	修改商品信息
    boolean update(Commodity commodity);
    //	查询所有商品
    List queryAll(Pagination page);
    //	统计所有商品数量
    int countAll();
    //	查询商品-按照类型
    List queryByCategory(Commodity commodity, Pagination page);
    //	统计-查询商品-按照类型
    int countQuery(Commodity commodity);
    //	查询某一件商品
    Commodity queryOne(Commodity commodity);
    //	搜索商品
    List search(Commodity commodity, Pagination page);
    //	统计搜索商品的数量
    int countSearch(Commodity commodity);
    //	判断商品上架状态
    boolean comStatus(Commodity commodity);
    //	判断商品是否被禁止
    boolean ifBanned(Commodity commodity);
    //	商品销量排行榜
	/*
	 * 排序说明: page 中直接包含排序规则
	*/
    List ranking(Commodity commodity, Pagination page);


}
