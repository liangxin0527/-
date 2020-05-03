package com.liangxin.qlmall_portal.service.impl;


import com.liangxin.qlmall_portal.service.OrderDetailsService;
import com.liangxin.qlmall_portal.bean.OrderDetails;
import com.liangxin.qlmall_portal.mapper.OrderDetailsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderDetailsServiceImpl implements OrderDetailsService {

    @Autowired
    private OrderDetailsMapper orderDetailsMapper;

    @Override
    public Integer insertOrderDetails(OrderDetails orderDetails) {
        return orderDetailsMapper.insert(orderDetails);
    }

    @Override
    public OrderDetails selectByPrimaryKey(String orderId) {
        return orderDetailsMapper.selectByPrimaryKey(orderId);
    }
}
