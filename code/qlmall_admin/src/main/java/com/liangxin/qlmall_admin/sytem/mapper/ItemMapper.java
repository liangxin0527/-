package com.liangxin.qlmall_admin.sytem.mapper;

import com.liangxin.qlmall_admin.commons.entity.Page;
import com.liangxin.qlmall_admin.sytem.pojo.Item;

import java.util.List;

public interface ItemMapper {
    int deleteByPrimaryKey(String[] id);

    int insert(Item record);

    Item selectByPrimaryKey(Integer id);

    List<Item> selectAll(Page page);

    int updateByPrimaryKey(Item record);

    void updateStatus(String itemId, boolean flag);

    void updateStatsAll(Integer[] itemId, boolean flag);

    int saveItem(Item item);

}