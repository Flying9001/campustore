package com.ljq.test;

import com.ljq.cs.dao.UserInfoDao;
import com.ljq.cs.dao.impl.UserInfoDaoImpl;
import com.ljq.cs.entity.UserInfo;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;

import javax.annotation.Resource;

/**
 * @description: Test Mybatis
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/11/15
 */

@ContextConfiguration(locations = {"classpath: spring-dao.xml"})
public class TestMyBatis {

//    @Resource
//    private UserInfoDao userInfoDao = null;
    private static final Logger logback = LoggerFactory.getLogger(TestMyBatis.class);



    @Test
    public void testUserInfoSignup(){

        UserInfo userInfo = new UserInfo();
        userInfo.setNickname("魔术师");
        userInfo.setAccount("ThaumaturgeQ");
        userInfo.setPhone("13111111111");
        userInfo.setUname("魔术师");
        userInfo.setPasscode("12345abcde");

        boolean flag = new UserInfoDaoImpl().signup(userInfo);

        logback.debug("flag: " + flag);



    }


}
