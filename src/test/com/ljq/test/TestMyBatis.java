package com.ljq.test;

import com.ljq.cs.entity.UserInfo;
import com.ljq.cs.service.UserInfoService;
import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import sun.util.calendar.BaseCalendar;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @description: Test Mybatis and spring
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/11/15
 */

public class TestMyBatis extends TestBase{

    private static final Logger logback = LoggerFactory.getLogger(TestMyBatis.class);

    @Resource
    private UserInfoService userInfoService = null;


    /*@Before
    public void before(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("spring/spring-dao.xml");
        userInfoService = (UserInfoService) ac.getBean("userInfoService");
    }*/

    @Test
    public void testUserInfoSignup(){

        UserInfo userInfo = new UserInfo();
        userInfo.setNickname("魔术师");
        userInfo.setAccount("ThaumaturgeQ");
        userInfo.setPhone("13111111111");
        userInfo.setUname("魔术师");
        userInfo.setPasscode("12345abcde");
        String registerTime = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
        userInfo.setRegistertime(registerTime);

        boolean flag = userInfoService.signup(userInfo);

        logback.debug("flag: " + flag);



    }


}
