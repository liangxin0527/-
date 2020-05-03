package com.liangxin.qlmall_admin.sytem.mapper;




import com.liangxin.qlmall_admin.sytem.pojo.ItemBig;

import java.util.List;

public interface ItemBigMapper {
    int deleteByPrimaryKey(Integer itemBigId);

    int insert(ItemBig record);

    ItemBig selectByPrimaryKey(Integer itemBigId);

    List<ItemBig> selectAll();

    int updateByPrimaryKey(ItemBig record);

    List<ItemBig> selectAllByDetails_id(Integer itemDetailsId);

    Integer saveItemBig(ItemBig itemBig);

}