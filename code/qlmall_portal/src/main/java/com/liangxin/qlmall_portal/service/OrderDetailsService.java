package com.liangxin.qlmall_portal.service;


import com.liangxin.qlmall_portal.bean.OrderDetails;

public interface OrderDetailsService {
    Integer insertOrderDetails(OrderDetails orderDetails);

    OrderDetails selectByPrimaryKey(String orderId);
}
