package com.liangxin.qlmall_portal.service;

import com.liangxin.qlmall_portal.bean.Comment;
import com.liangxin.qlmall_portal.bean.Order;
import com.liangxin.qlmall_portal.bean.ov.CommentPageResult;
import com.liangxin.qlmall_portal.sytem.pojo.User;

import java.util.List;


public interface CommentService {
    void updateImage(Integer uid, Integer details_id, String ImageAddress, Integer id);

    void insertComment(Comment comment, User user);

    CommentPageResult findByPageComment(Integer currentPage, Integer limit, Integer details_id);

    List<Order> ispurchase(Integer userId, Integer detailsId);

    List<Order> daieValuateByUid(Integer userId);

}
