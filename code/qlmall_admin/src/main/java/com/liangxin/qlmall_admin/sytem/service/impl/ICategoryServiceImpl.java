package com.liangxin.qlmall_admin.sytem.service.impl;

import com.liangxin.qlmall_admin.sytem.mapper.CategoryMapper;
import com.liangxin.qlmall_admin.sytem.pojo.Category;
import com.liangxin.qlmall_admin.sytem.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ICategoryServiceImpl implements ICategoryService {

    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public List<Category> findCategory() {
        return categoryMapper.selectAll();
    }
}
