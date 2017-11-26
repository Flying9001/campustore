package com.ljq.cs.dao;

import com.ljq.cs.entity.UserInfo;

import java.util.List;

/**
 * @description: UserInfoDao
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/11/15
 */
public interface UserInfoDao {


    //	用户注册
    public boolean signup( UserInfo userInfo);


/*
    //	用户登录
    public UserInfo signin(UserInfo userInfo);
    //	注销用户
    public boolean writeoff(UserInfo userInfo);
    //	修改个人信息
    public boolean updateInfo(UserInfo userInfo);
    //	查询所有用户
    public List queryAllUser(Pagination page);
    //	统计所有用户数量
    public int countAllUser();
    //	统计在线人数
    public int countOnline();
    //	查询某个用户完整信息
    public UserInfo queryOneInfo(UserInfo userInfo);
    //	搜索用户
    public List searchUser(UserInfo userInfo,Pagination page);
    //	判断用户是否在线
    public boolean ifOnline(UserInfo userInfo);
    //	判断用户是否存在
    public boolean ifExist(UserInfo userInfo);
    //	判断账号是否可用
    public boolean userStatus(UserInfo userInfo);
*/




}
