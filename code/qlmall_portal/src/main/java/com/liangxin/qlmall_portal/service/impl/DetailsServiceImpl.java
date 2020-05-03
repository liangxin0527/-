package com.liangxin.qlmall_portal.service.impl;


import com.liangxin.qlmall_portal.service.DetailsService;
import com.liangxin.qlmall_portal.bean.Details;
import com.liangxin.qlmall_portal.mapper.DetailsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DetailsServiceImpl implements DetailsService {

    @Autowired
    private DetailsMapper detailsMapper;

    @Override
    public Details selectByPrimaryKey(Integer itemDetailsId) {
        return detailsMapper.selectByDetailsId(itemDetailsId);
    }
}
