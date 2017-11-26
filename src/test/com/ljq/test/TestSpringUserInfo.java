package com.ljq.test;

import com.ljq.cs.dao.UserInfoDao;
import com.ljq.cs.entity.UserInfo;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;

/**
 * @description: test userinfo signup function with spring
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/11/26
 */
public class TestSpringUserInfo extends TestBase {

    private static final Logger logger = LoggerFactory.getLogger(TestSpringUserInfo.class);
    private static final boolean DBG = true;

//    @Autowired
    private UserInfoDao userInfoDao;

    @Test
    public void TestUserInfoSignUp(){

        boolean flag = false;
        UserInfo userInfo = new UserInfo();
        userInfo.setNickname("魔术师");
        userInfo.setAccount("ThaumaturgeQ");
        userInfo.setPhone("13111111111");
        userInfo.setUname("魔术师");
        userInfo.setPasscode("12345abcde");
        flag = userInfoDao.signup(userInfo);

        logger.debug("flag: " + flag);



    }






}
