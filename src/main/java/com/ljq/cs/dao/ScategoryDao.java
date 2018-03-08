package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.Category;
import com.ljq.cs.entity.Scategory;
import org.apache.ibatis.annotations.Param;
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
    boolean addOne(@Param("scategory") Scategory scategory);
    //	删除某一个小分类
    boolean delOne(@Param("scategory") Scategory scategory);
    //	删除全部小分类
    boolean delAll();
    //	修改小分类信息
    boolean update(@Param("scategory") Scategory scategory);
    //	查询全部小分类
    List queryAll(@Param("page") Pagination page);
    //	查询一个大类下的小分类
    List queryByParent(@Param("category") Category category, @Param("page") Pagination page);
    //	查询某一个小分类
    Category queryOne(@Param("scategory") Scategory scategory);
    //	搜索小分类
    List search(@Param("scategory") Scategory scategory,@Param("page") Pagination page);

}
