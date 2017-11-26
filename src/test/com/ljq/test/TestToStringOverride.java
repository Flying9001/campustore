package com.ljq.test;

import com.ljq.cs.entity.UserInfo;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @description: Override toString test
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/11/15
 */
public class TestToStringOverride {

    private static final Logger logback = LoggerFactory.getLogger(TestToStringOverride.class);

    @Test
    public void toStringTest(){
        UserInfo userInfo = new UserInfo();

        logback.debug("userInfo: " + userInfo);


    }


}
