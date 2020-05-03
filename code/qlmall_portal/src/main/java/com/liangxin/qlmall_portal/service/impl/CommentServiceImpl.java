package com.liangxin.qlmall_portal.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.liangxin.qlmall_portal.service.CommentService;
import com.liangxin.qlmall_portal.bean.Comment;
import com.liangxin.qlmall_portal.bean.Order;
import com.liangxin.qlmall_portal.bean.ov.CommentPageResult;
import com.liangxin.qlmall_portal.mapper.CommentMapper;
import com.liangxin.qlmall_portal.mapper.OrderMapper;
import com.liangxin.qlmall_portal.sytem.mapper.UserMapper;
import com.liangxin.qlmall_portal.sytem.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Date;
import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentMapper commentMapper;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public void updateImage(Integer uid, Integer details_id, String ImageAddress,Integer id) {
        commentMapper.updateImage(uid,details_id,ImageAddress,id);
    }

    @Override
    public void insertComment(Comment comment, User user) {
        comment.setCommentTime(new Date());
        comment.setUserId(user.getUserId());
        comment.setCommentImage("");
        commentMapper.insert(comment);
        orderMapper.updatePJByDetailIdAndUid(comment.getDetailsId(),user.getUserId());
    }

    @Override
    public CommentPageResult findByPageComment(Integer currentPage, Integer limit, Integer details_id) {
        CommentPageResult result=new CommentPageResult();
        PageHelper.startPage(currentPage,limit);
        List<Comment> comments = commentMapper.selectAll(details_id);
        PageInfo<Comment> info=new PageInfo<>(comments);
        result.setLists(comments);
        result.setTotal(info.getTotal());
        result.setCurrentPage(info.getPageNum());
        result.setLimit(info.getPageSize());
        return result;
    }

    @Override
    public List<Order> ispurchase(Integer userId, Integer detailsId) {
        return orderMapper.selectByUidAndDetailsId(userId,detailsId);
    }

    @Override
    public List<Order> daieValuateByUid(Integer userId) {
        return orderMapper.daieValuateByUid(userId);
    }

}
