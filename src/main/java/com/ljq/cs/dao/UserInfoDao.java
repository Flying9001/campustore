package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.UserInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description: UserInfoDao
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/11/15
 */
@Repository
public interface UserInfoDao {


    //	用户注册
   boolean signup(@Param("userInfo") UserInfo userInfo);
    //	用户登录
   UserInfo signin(@Param("userInfo") UserInfo userInfo);
    //	注销用户
   boolean writeoff(@Param("userInfo") UserInfo userInfo);
    //	修改个人信息
   boolean updateInfo(@Param("userInfo") UserInfo userInfo);
    //	查询所有用户
   List queryAllUser(@Param("page") Pagination page);
    //	统计所有用户数量
   int countAllUser();
    //	统计在线人数
   int countOnline();
    //	查询某个用户完整信息
   UserInfo queryOneInfo(@Param("userInfo") UserInfo userInfo);
    //	搜索用户
   List searchUser(@Param("userInfo") UserInfo userInfo,@Param("page") Pagination page);
    //	判断用户是否在线
   boolean ifOnline(@Param("userInfo") UserInfo userInfo);
    //	判断用户是否存在
   boolean ifExist(@Param("userInfo") UserInfo userInfo);
    //	判断账号是否可用
   boolean userStatus(@Param("userInfo") UserInfo userInfo);



}
