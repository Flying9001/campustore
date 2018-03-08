package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.UserLog;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description: 用户操作记录 DAO 接口
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
@Repository
public interface UserLogDao {

    //	创建用户操作记录
    boolean createLog(@Param("log") UserLog log);
    //	删除所有操作记录ByUser
    boolean delLogByUser(@Param("log") UserLog log);
    //	删除单条操作记录
    boolean delOneLog(@Param("log") UserLog log);
    //	查询所有操作记录ByUser
    List queryLogByUser(@Param("log") UserLog log, @Param("page") Pagination page);
    //	查询单条操作记录
    UserLog queryOneLog(@Param("log") UserLog log);
    //	统计所有操作记录ByUser
    int countLogByUser(@Param("log") UserLog log);



}
