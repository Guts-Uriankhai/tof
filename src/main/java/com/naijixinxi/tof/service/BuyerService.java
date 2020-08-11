package com.naijixinxi.tof.service;

import com.naijixinxi.tof.dao.BuyerDao;
import com.naijixinxi.tof.entity.Buyer;
import org.springframework.stereotype.Service;

/**
 * @Auther taizhimin
 * @date 2020/8/10
 */
@Service
public class BuyerService {
    private BuyerDao buyerDao;

    public void save(Buyer buyer) {
        buyerDao.save(buyer);
    }

    public void delete(Integer bid) {
        buyerDao.deleteById(bid);
    }

}
