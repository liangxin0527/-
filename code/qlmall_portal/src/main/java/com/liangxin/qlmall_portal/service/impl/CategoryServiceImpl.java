package com.liangxin.qlmall_portal.service.impl;


import com.liangxin.qlmall_portal.service.CategoryService;
import com.liangxin.qlmall_portal.bean.Category;
import com.liangxin.qlmall_portal.commons.exception.RedisConnectException;
import com.liangxin.qlmall_portal.mapper.CategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;

    @Autowired
    private RedisTemplate redisTemplate;

    @Override
    public Category findCatByCid(Integer cid) {
       return categoryMapper.selectByPrimaryKey(cid);
    }

    @Override
    public List<Category> selectAll() throws RedisConnectException {
        String redisKey = "category";
        List<Category> listUser = null;
        //判断是否包含，如果有去redis去拿
        if(redisTemplate.hasKey(redisKey)) {
            return (List<Category>) redisTemplate.opsForValue().get(redisKey);
        } else {
            //如果没有去数据库拿
            listUser = categoryMapper.selectAll();
            redisTemplate.opsForValue().set(redisKey, listUser);
            return listUser;
        }

    }
}
