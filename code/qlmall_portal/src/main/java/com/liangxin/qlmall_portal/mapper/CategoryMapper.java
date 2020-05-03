package com.liangxin.qlmall_portal.mapper;


import com.liangxin.qlmall_portal.bean.Category;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CategoryMapper {
    int deleteByPrimaryKey(Integer cId);

    int insert(Category record);

    Category selectByPrimaryKey(Integer cId);

    List<Category> selectAll();

    int updateByPrimaryKey(Category record);


@Select("select * from jd_category where c_id=#{cid}")
    Category findCatByCid(@Param("cid") Integer cid);

}