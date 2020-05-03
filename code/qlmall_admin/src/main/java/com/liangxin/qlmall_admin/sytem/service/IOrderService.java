package com.liangxin.qlmall_admin.sytem.service;

import com.liangxin.qlmall_admin.commons.entity.Page;
import com.liangxin.qlmall_admin.commons.utils.PageUtil;

public interface IOrderService {
    PageUtil findOrderList(Page page);

    void delete(String[] split);
}
