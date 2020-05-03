package com.liangxin.qlmall_portal.mapper;


import com.liangxin.qlmall_portal.bean.Details;

import java.util.List;

public interface DetailsMapper {
    int deleteByPrimaryKey(Integer itemDetailsId);

    int insert(Details record);

    Details selectByPrimaryKey(Integer itemDetailsId);

    List<Details> selectAll();

    int updateByPrimaryKey(Details record);

    Details selectByDetailsId(Integer itemDetailsId);
}