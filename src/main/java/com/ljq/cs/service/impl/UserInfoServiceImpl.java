package com.ljq.cs.service.impl;

import com.ljq.cs.dao.UserInfoDao;
import com.ljq.cs.entity.UserInfo;
import com.ljq.cs.service.UserInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @description: userinfo service impl
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/11/27
 */

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {

    private static final Logger logger = LoggerFactory.getLogger(UserInfoServiceImpl.class);

    @Resource
    private UserInfoDao userInfoDao;


    @Override
    public boolean signup(UserInfo userInfo) {

        logger.debug("userInfo: " + userInfo);

        return userInfoDao.signup(userInfo);
    }




}
