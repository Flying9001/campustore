package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.UserLog;

import java.util.List;

/**
 * @description: 用户操作记录 DAO 接口
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
public interface UserLogDao {

    //	创建用户操作记录
    boolean createLog(UserLog log);
    //	删除所有操作记录ByUser
    boolean delLogByUser(UserLog log);
    //	删除单条操作记录
    boolean delOneLog(UserLog log);
    //	查询所有操作记录ByUser
    List queryLogByUser(UserLog log, Pagination page);
    //	查询单条操作记录
    UserLog queryOneLog(UserLog log);
    //	统计所有操作记录ByUser
    int countLogByUser(UserLog log);



}
