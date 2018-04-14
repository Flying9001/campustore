package com.ljq.cs.service.impl;

import com.ljq.cs.dao.UserInfoDao;
import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.UserInfo;
import com.ljq.cs.service.UserInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @description: userinfo service impl
 * @author: lujunqiang
 * @date: 2017/11/27
 */

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {

    private static final Logger logger = LoggerFactory.getLogger(UserInfoServiceImpl.class);

    @Autowired
    private UserInfoDao userInfoDao;


    @Override
    public boolean signup(UserInfo userInfo) {
        logger.debug(userInfo.toString());
        return userInfoDao.signup(userInfo);
    }

    @Override
    public UserInfo signin(UserInfo userInfo) {
        return userInfoDao.signin(userInfo);
    }

    @Override
    public boolean writeoff(UserInfo userInfo) {
        return userInfoDao.writeoff(userInfo);
    }

    @Override
    public boolean updateInfo(UserInfo userInfo) {
        return userInfoDao.updateInfo(userInfo);
    }

    @Override
    public List queryAllUser(Pagination page) {
        return userInfoDao.queryAllUser(page);
    }

    @Override
    public int countAllUser() {
        return userInfoDao.countAllUser();
    }

    @Override
    public int countOnline() {
        return userInfoDao.countOnline();
    }

    @Override
    public UserInfo queryOneInfo(UserInfo userInfo) {
        return userInfoDao.queryOneInfo(userInfo);
    }

    @Override
    public List searchUser(UserInfo userInfo, Pagination page) {
        return userInfoDao.searchUser(userInfo, page);
    }

    @Override
    public boolean ifOnline(UserInfo userInfo) {
        return userInfoDao.ifOnline(userInfo);
    }

    @Override
    public boolean ifExist(UserInfo userInfo) {
        return userInfoDao.ifExist(userInfo);
    }

    @Override
    public boolean userStatus(UserInfo userInfo) {
        return userInfoDao.userStatus(userInfo);
    }


}
