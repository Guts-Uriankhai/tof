package com.naijixinxi.tof.dao;

import com.naijixinxi.tof.entity.Goods;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GoodsDao extends JpaRepository<Goods, Integer> {
}
