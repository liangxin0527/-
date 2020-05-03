package com.liangxin.qlmall_admin.sytem.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.liangxin.qlmall_admin.commons.entity.Page;
import com.liangxin.qlmall_admin.commons.utils.PageUtil;
import com.liangxin.qlmall_admin.sytem.mapper.BigAdMapper;
import com.liangxin.qlmall_admin.sytem.pojo.BigAd;
import com.liangxin.qlmall_admin.sytem.pojo.SmallAd;
import com.liangxin.qlmall_admin.sytem.service.BigAdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BigAdServiceImpl implements BigAdService {
    @Autowired
    private BigAdMapper bigAdMapper;

    @Override
    public void updateStatsAll(Integer[] itemId, boolean flag) {

            bigAdMapper.updateAdstatus(itemId,flag);


    }

    @Override
    public int addAd(BigAd bigAd) {
        return bigAdMapper.insertAd(bigAd);
    }

    @Override
    public PageUtil findAllAd(Page page) {
        PageUtil pageUtil = new PageUtil();

        PageHelper.startPage(page.getPage(), page.getLimit());

        List<SmallAd> list = bigAdMapper.selectAll(page);

        PageInfo<SmallAd> pageInfo = new PageInfo<>(list);
        pageUtil.setData(pageInfo.getList());
        pageUtil.setCount(pageInfo.getTotal());
        return pageUtil;
    }
}
