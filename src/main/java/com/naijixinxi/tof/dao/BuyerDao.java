package com.naijixinxi.tof.dao;

import com.naijixinxi.tof.entity.Buyer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BuyerDao extends JpaRepository<Buyer, Integer> {
}
