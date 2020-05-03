package com.liangxin.qlmall_admin.sytem.service;

import com.liangxin.qlmall_admin.commons.entity.Page;
import com.liangxin.qlmall_admin.commons.utils.PageUtil;
import com.liangxin.qlmall_admin.sytem.pojo.Details;
import com.liangxin.qlmall_admin.sytem.pojo.Item;
import com.liangxin.qlmall_admin.sytem.pojo.ItemBig;
import com.liangxin.qlmall_admin.sytem.pojo.ItemSmall;

public interface IItemService {
    PageUtil findItemAll(Page page);

    void deleteById(String[] split);

    Item findById(Integer id);

    void updateStatus(String itemId, boolean flag);

    void updateStatsAll(Integer[] itemId, boolean flag);

    void update(Item item);

    int addItem(Item item, Details details, String[] split, ItemSmall itemSmall, ItemBig itemBig);
}
