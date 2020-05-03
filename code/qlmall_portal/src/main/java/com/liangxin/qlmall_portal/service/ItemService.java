package com.liangxin.qlmall_portal.service;



import com.liangxin.qlmall_portal.bean.BigAd;
import com.liangxin.qlmall_portal.bean.Item;
import com.liangxin.qlmall_portal.bean.SmallAd;
import com.liangxin.qlmall_portal.bean.ov.Page;
import com.liangxin.qlmall_portal.bean.ov.ShowAllDetails;

import java.util.List;

public interface ItemService {
    Page SelectAllByCid(Integer cid, Integer currentPage, Integer pageSize);

    ShowAllDetails selectAllDetailsAndSmallAndBig(Integer item_id);
    List<Item> findListByCid(Integer currentPage, Integer pageSize);
    Page searchSelectAll(Integer currentPage, Integer pageSize, String name, Integer sort);
    Long selectconct();

    List<Item> selectALl();


    List<BigAd> findALLAd();


    List<SmallAd> findALLAdSm();
}
