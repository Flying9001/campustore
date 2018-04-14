package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.Category;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description: 商品大类DAO 接口
 * @author: lujunqiang
 * @date: 2017/12/17
 */
@Repository
public interface CategoryDao {

    //	添加分类
    boolean addOne(Category category);
    //	删除某一个分类
    boolean delOne(Category category);
    //	删除全部分类
    boolean delAll();
    //	修改分类信息
    boolean update(Category category);
    //	查询全部分类
    List queryAll(Pagination page);
    //	查询某一个分类
    Category queryOne(Category category);
    //	搜索分类
    List search(Category category, Pagination page);

}
