package com.liangxin.qlmall_admin.sytem.mapper;

import com.liangxin.qlmall_admin.commons.entity.Page;
import com.liangxin.qlmall_admin.sytem.pojo.Order;

import java.util.List;

public interface OrderMapper {
    int deleteByPrimaryKey(String[] id);

    int insert(Order record);

    Order selectByPrimaryKey(Integer id);

    List<Order> selectAll(Page page);

    int updateByPrimaryKey(Order record);

}