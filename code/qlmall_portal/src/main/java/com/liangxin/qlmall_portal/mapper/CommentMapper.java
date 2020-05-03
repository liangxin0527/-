package com.liangxin.qlmall_portal.mapper;

import com.liangxin.qlmall_portal.bean.Comment;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.type.JdbcType;

import java.util.List;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer commentId);

    int insert(Comment record);

    Comment selectByPrimaryKey(Integer commentId);

    @Select("select comment_id, user_id, details_id, comment_connect, comment_time, comment_image   from jd_comment where details_id=#{details_id}")
    @Results({
            @Result(column="comment_id", property="commentId", jdbcType= JdbcType.INTEGER, id=true),
            @Result(column="user_id", property="userId", jdbcType=JdbcType.INTEGER),
            @Result(column="details_id", property="detailsId", jdbcType=JdbcType.INTEGER),
            @Result(column="comment_connect", property="commentConnect",jdbcType=JdbcType.VARCHAR),
            @Result(column="comment_time", property="commentTime"),
            @Result(column="comment_image", property="commentImage", jdbcType=JdbcType.VARCHAR),
            @Result(column = "user_id",property = "user",
                    one = @One(select = "UserMapper.selectByPrimaryKey")),
            @Result(column = "{param1=user_id,param2=details_id}",property = "orders",javaType=List.class,
                    many=@Many(select = "OrderMapper.selectByUidAndDetailsId"))
    })
    List<Comment> selectAll(Integer details_id);

    int updateByPrimaryKey(Comment record);

    void updateImage(@Param("uid") Integer uid, @Param("details_id") Integer details_id, @Param("image") String imageAddress, @Param("id") Integer id);

}