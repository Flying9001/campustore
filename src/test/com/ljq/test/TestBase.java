package com.ljq.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @description: test root base,all spring tests are base on this
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/11/26
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml"})
public class TestBase {


    @Test
    public void test(){


        System.out.println("hahahaha");
    }



}
