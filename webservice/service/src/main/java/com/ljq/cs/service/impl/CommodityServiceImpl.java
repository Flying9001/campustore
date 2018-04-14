package com.ljq.cs.service.impl;

import com.ljq.cs.dao.CommodityDao;
import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.Commodity;
import com.ljq.cs.service.CommodityService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @description: 商品服务实现
 * @author: lujunqiang
 * @date: 2017/12/17
 */
@Service("commodityService")
public class CommodityServiceImpl implements CommodityService {

    private static final Logger logger = LoggerFactory.getLogger(CommodityServiceImpl.class);

    @Resource
    private CommodityDao commodityDao;

    @Override
    public boolean addOne(Commodity commodity) {
        logger.debug("commodity: " + commodity);
        return commodityDao.addOne(commodity);
    }

    @Override
    public boolean delOne(Commodity commodity) {
        logger.debug("commodity: " + commodity);
        return commodityDao.delOne(commodity);
    }

    @Override
    public boolean update(Commodity commodity) {
        return commodityDao.update(commodity);
    }

    @Override
    public List queryAll(Pagination page) {
        return commodityDao.queryAll(page);
    }

    @Override
    public int countAll() {
        return commodityDao.countAll();
    }

    @Override
    public List queryByCategory(Commodity commodity, Pagination page) {
        return commodityDao.queryByCategory(commodity, page);
    }

    @Override
    public int countQuery(Commodity commodity) {
        return commodityDao.countQuery(commodity);
    }

    @Override
    public Commodity queryOne(Commodity commodity) {
        return commodityDao.queryOne(commodity);
    }

    @Override
    public List search(Commodity commodity, Pagination page) {
        return commodityDao.search(commodity,page);
    }

    @Override
    public int countSearch(Commodity commodity) {
        return commodityDao.countSearch(commodity);
    }

    @Override
    public boolean comStatus(Commodity commodity) {
        return commodityDao.comStatus(commodity);
    }

    @Override
    public boolean ifBanned(Commodity commodity) {
        return commodityDao.ifBanned(commodity);
    }

    @Override
    public List ranking(Commodity commodity, Pagination page) {
        return commodityDao.ranking(commodity, page);
    }
}
