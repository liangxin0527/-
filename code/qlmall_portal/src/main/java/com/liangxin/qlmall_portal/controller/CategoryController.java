package com.liangxin.qlmall_portal.controller;


import com.liangxin.qlmall_portal.bean.Category;
import com.liangxin.qlmall_portal.commons.exception.RedisConnectException;
import com.liangxin.qlmall_portal.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @PostMapping("/selectAll")
    public List<Category> selectAll() throws RedisConnectException {
        return categoryService.selectAll();
    }


}
