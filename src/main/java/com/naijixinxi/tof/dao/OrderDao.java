package com.naijixinxi.tof.dao;

import com.naijixinxi.tof.entity.OrderForm;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderDao extends JpaRepository<OrderForm, Integer> {

}
