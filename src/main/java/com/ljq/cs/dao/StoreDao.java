package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.Store;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description: 店铺 DAO 接口
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
@Repository
public interface StoreDao {

    //	注册店铺
    boolean register(Store store);
    //	登录店铺
    Store signin(Store store);
    //	删除某店铺
    boolean delOne(Store store);
    //	修改店铺信息
    boolean update(Store store);
    //	查询所有店铺
    List queryAll(Pagination page);
    //	查询某一家店铺信息
    Store queryOne(Store store);
    //	搜索店铺
    List search(Store store,Pagination page);
    //	判断店铺是否存在
    boolean ifExist(Store store);
    //	判断店铺状态
    boolean stoStatus(Store store);


}
