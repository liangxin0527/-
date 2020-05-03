package com.liangxin.qlmall_portal.service;


import com.liangxin.qlmall_portal.bean.Category;
import com.liangxin.qlmall_portal.commons.exception.RedisConnectException;

import java.util.List;

public interface CategoryService {
    List<Category> selectAll() throws RedisConnectException;

    Category findCatByCid(Integer cid);

}
