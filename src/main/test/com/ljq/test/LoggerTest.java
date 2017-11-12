package com.ljq.test;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @description: Test Logger
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/11/12
 */
public class LoggerTest {

    private static final Logger log = LoggerFactory.getLogger(LoggerTest.class);

    @Test
    public void logTest() {

        log.debug("Logger test for DEBUG level");
        log.info("Logger test for INFO level");
        log.warn("Logger test for WARN level");
        log.error("Logger test for ERROR level");


    }

}
