package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.Category;
import com.ljq.cs.entity.Scategory;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description: 商品小类 DAO 接口
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
@Repository
public interface ScategoryDao {

    //	添加小分类
    boolean addOne(Scategory scategory);
    //	删除某一个小分类
    boolean delOne(Scategory scategory);
    //	删除全部小分类
    boolean delAll();
    //	修改小分类信息
    boolean update(Scategory scategory);
    //	查询全部小分类
    List queryAll(Pagination page);
    //	查询一个大类下的小分类
    List queryByParent(Category category, Pagination page);
    //	查询某一个小分类
    Category queryOne(Scategory scategory);
    //	搜索小分类
    List search(Scategory scategory,Pagination page);

}
