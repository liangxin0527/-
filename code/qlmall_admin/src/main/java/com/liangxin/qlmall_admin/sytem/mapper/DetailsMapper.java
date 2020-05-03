package com.liangxin.qlmall_admin.sytem.mapper;




import com.liangxin.qlmall_admin.sytem.pojo.Details;

import java.util.List;

public interface DetailsMapper {
    int deleteByPrimaryKey(Integer itemDetailsId);

    int insert(Details record);

    Details selectByPrimaryKey(Integer itemDetailsId);

    List<Details> selectAll();

    int updateByPrimaryKey(Details record);

    Details selectByDetailsId(Integer itemDetailsId);

    Integer saveDetail(Details details);

}