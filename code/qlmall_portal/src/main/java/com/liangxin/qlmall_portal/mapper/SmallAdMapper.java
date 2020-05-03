package com.liangxin.qlmall_portal.mapper;



import com.liangxin.qlmall_portal.bean.SmallAd;
import com.liangxin.qlmall_portal.bean.ov.Page;

import java.util.List;

public interface SmallAdMapper {


    List<SmallAd> selectAll(Page page);

    int insertInto(SmallAd bigAd);

    void updateStatsAll(Integer[] itemId, boolean flag);

    List<SmallAd> findADByStatus();


}