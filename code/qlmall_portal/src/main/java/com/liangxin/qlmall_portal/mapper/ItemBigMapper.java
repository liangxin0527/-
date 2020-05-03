package com.liangxin.qlmall_portal.mapper;


import com.liangxin.qlmall_portal.bean.ItemBig;

import java.util.List;

public interface ItemBigMapper {
    int deleteByPrimaryKey(Integer itemBigId);

    int insert(ItemBig record);

    ItemBig selectByPrimaryKey(Integer itemBigId);

    List<ItemBig> selectAll();

    int updateByPrimaryKey(ItemBig record);

    List<ItemBig> selectAllByDetails_id(Integer itemDetailsId);
}