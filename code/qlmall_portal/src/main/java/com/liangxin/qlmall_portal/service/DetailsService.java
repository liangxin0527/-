package com.liangxin.qlmall_portal.service;


import com.liangxin.qlmall_portal.bean.Details;

public interface DetailsService {
    Details selectByPrimaryKey(Integer itemDetailsId);
}
