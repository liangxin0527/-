package com.liangxin.qlmall_admin.sytem.mapper;


import com.liangxin.qlmall_admin.commons.entity.Page;
import com.liangxin.qlmall_admin.sytem.pojo.BigAd;
import com.liangxin.qlmall_admin.sytem.pojo.SmallAd;

import java.util.List;

public interface BigAdMapper {


    List<SmallAd> selectAll(Page page);

    int insertAd(BigAd bigAd);

    void updateAdstatus(Integer[] itemId, Boolean i);
}