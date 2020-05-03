package com.liangxin.qlmall_admin.sytem.service;

import com.liangxin.qlmall_admin.commons.entity.Page;
import com.liangxin.qlmall_admin.commons.utils.PageUtil;
import com.liangxin.qlmall_admin.sytem.pojo.SmallAd;

public interface SmallADService {
    PageUtil findAllAd(Page page);

    int addAd(SmallAd bigAd);

    void updateStatsAll(Integer[] itemId, boolean flag);
}
