package com.liangxin.qlmall_admin.sytem.mapper;


import com.liangxin.qlmall_admin.commons.entity.Page;
import com.liangxin.qlmall_admin.sytem.pojo.SmallAd;

import java.util.List;

public interface SmallAdMapper {


    List<SmallAd> selectAll(Page page);

    int insertInto(SmallAd bigAd);

    void updateStatsAll(Integer[] itemId, boolean flag);
}