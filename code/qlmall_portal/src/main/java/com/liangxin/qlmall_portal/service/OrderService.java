package com.liangxin.qlmall_portal.service;

import com.liangxin.qlmall_portal.bean.Order;
import com.liangxin.qlmall_portal.bean.ov.Page;

import java.util.List;

public interface OrderService {
    Integer  insertOrder(Order order);

    Order selectPrimayById(String orderId);

    Integer updateByIsPay(String out_trade_no, String orderDetailsId);

    Page selectAllByUid(Integer currentPage, Integer pageSize, String name, Integer uid, Integer orderType);

    List<Order> selectByOrderId(String out_trade_no);

    Integer updateByOrderIds(List<Order> orderList);

    Integer updateByOrderIsShouh(String orderId);


    Order selectByOrderIdAndOrderDetailsId(String orderId, String orderDetailsId);

    Integer updateByOrderIdAndOrderDetailsId(String orderId, String orderDetailsId);

    List<Order> selectAjaxlength(Integer id, Integer orderType);

    List<Order> findByispjAndUid(Integer userId);
}
