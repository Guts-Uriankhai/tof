package com.naijixinxi.tof.dao;

import com.naijixinxi.tof.entity.Buyer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface BuyerDao extends JpaRepository<Buyer, Integer> {
    List<Buyer> findBuyerByBuyerNameAndAvatar(String buyerName, String avater);
}
