package com.liangxin.qlmall_portal.mapper;




import com.liangxin.qlmall_portal.bean.BigAd;
import com.liangxin.qlmall_portal.bean.ov.Page;

import java.util.List;

public interface BigAdMapper {


    List<BigAd> selectAll(Page page);

    int insertAd(BigAd bigAd);

    void updateAdstatus(Integer[] itemId, Boolean i);

    List<BigAd> findAdByStatus();



}