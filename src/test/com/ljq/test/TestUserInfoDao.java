package com.ljq.test;

import com.ljq.cs.dao.UserInfoDao;
import com.ljq.cs.entity.UserInfo;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @description: 用户信息DAO测试
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2018/3/8
 */
public class TestUserInfoDao extends TestBase{

    private static final Logger logback = LoggerFactory.getLogger(TestMyBatis.class);

    @Autowired
    private UserInfoDao userInfoDao;


    @Test
    public void queryOneInfoTest(){

        UserInfo userInfo = new UserInfo();
        userInfo.setId(1);
        userInfo = userInfoDao.queryOneInfo(userInfo);

        logback.debug(userInfo.toString());

    }



}
