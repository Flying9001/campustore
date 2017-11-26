package com.ljq.cs.dao.impl;

import com.ljq.cs.dao.UserInfoDao;
import com.ljq.cs.entity.UserInfo;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @description: UserInfoDaoImpl
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/11/15
 */


public class UserInfoDaoImpl extends SqlSessionDaoSupport implements UserInfoDao{

    private static final Logger logback = LoggerFactory.getLogger(UserInfoDaoImpl.class);

    @Override
    public boolean signup(UserInfo userInfo) {
        logback.debug(userInfo.toString());
        String registertime = new SimpleDateFormat("yyyyMMDDHHmmssSSS").format(new Date());
        userInfo.setRegistertime(registertime);
        Integer num = this.getSqlSession().insert("classpath:mapper.userInfomapper.signup",userInfo);
        logback.debug("num: " + num);
        if(num != null && num > 0){
            return true;
        }
        return false;
    }
}
