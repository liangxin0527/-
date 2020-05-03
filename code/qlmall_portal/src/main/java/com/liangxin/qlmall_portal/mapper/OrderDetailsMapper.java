package com.liangxin.qlmall_portal.mapper;


import com.liangxin.qlmall_portal.bean.OrderDetails;

import java.util.List;

public interface OrderDetailsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OrderDetails record);

    OrderDetails selectByPrimaryKey(String orderId);

    List<OrderDetails> selectAll();

    int updateByPrimaryKey(OrderDetails record);
}