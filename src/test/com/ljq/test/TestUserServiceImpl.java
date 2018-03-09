package com.ljq.test;

import com.ljq.cs.entity.UserInfo;
import com.ljq.cs.service.UserInfoService;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @Desccription: test userInfoServiceImpl
 * @author: Thaumaturge
 * @email: lujunqiang@ancun.com
 * @date: 2018/3/9
 */
public class TestUserServiceImpl extends TestBase{

    private static final Logger logback = LoggerFactory.getLogger(TestUserServiceImpl.class);

    @Autowired
    UserInfoService userInfoService;

    @Test
    public void queryOneInfoTest(){
        UserInfo userInfo = new UserInfo();
        userInfo.setId(1);
        userInfo = userInfoService.queryOneInfo(userInfo);

        System.out.println(userInfo.toString());

    }


}
