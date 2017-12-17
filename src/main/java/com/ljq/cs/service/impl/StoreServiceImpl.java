package com.ljq.cs.service.impl;

import com.ljq.cs.dao.StoreDao;
import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.Store;
import com.ljq.cs.service.StoreService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @description: 店铺服务实现
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
@Service("storeService")
public class StoreServiceImpl implements StoreService {

    private static final Logger logger = LoggerFactory.getLogger(StoreServiceImpl.class);

    @Resource
    private StoreDao storeDao;

    @Override
    public boolean register(Store store) {
        logger.debug("store: {}",store);
        return storeDao.register(store);
    }

    @Override
    public Store signin(Store store) {
        logger.debug("store: {}",store);
        return storeDao.signin(store);
    }

    @Override
    public boolean delOne(Store store) {
        return storeDao.delOne(store);
    }

    @Override
    public boolean update(Store store) {
        return storeDao.update(store);
    }

    @Override
    public List queryAll(Pagination page) {
        return storeDao.queryAll(page);
    }

    @Override
    public Store queryOne(Store store) {
        return storeDao.queryOne(store);
    }

    @Override
    public List search(Store store, Pagination page) {
        return storeDao.search(store, page);
    }

    @Override
    public boolean ifExist(Store store) {
        return storeDao.ifExist(store);
    }

    @Override
    public boolean stoStatus(Store store) {
        return storeDao.stoStatus(store);
    }
}
