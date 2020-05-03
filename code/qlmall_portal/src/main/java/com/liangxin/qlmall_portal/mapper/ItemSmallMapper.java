package com.liangxin.qlmall_portal.mapper;


import com.liangxin.qlmall_portal.bean.ItemSmall;

import java.util.List;

public interface ItemSmallMapper {
    int deleteByPrimaryKey(Integer itemSmallId);

    int insert(ItemSmall record);

    ItemSmall selectByPrimaryKey(Integer itemSmallId);

    List<ItemSmall> selectAll();

    int updateByPrimaryKey(ItemSmall record);

    List<ItemSmall> selectAllByDetails_id(Integer itemDetailsId);
}