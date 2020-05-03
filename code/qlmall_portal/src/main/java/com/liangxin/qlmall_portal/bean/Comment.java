package com.liangxin.qlmall_portal.bean;

import com.liangxin.qlmall_portal.commons.utils.DateUtil;
import com.liangxin.qlmall_portal.sytem.pojo.User;
import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class Comment {
    private Integer commentId;

    private Integer userId;

    private Integer detailsId;

    private String commentConnect;

    private Date commentTime;

    private String commentImage;

    private String commentTimeStr;

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getDetailsId() {
        return detailsId;
    }

    public void setDetailsId(Integer detailsId) {
        this.detailsId = detailsId;
    }

    public String getCommentConnect() {
        return commentConnect;
    }

    public void setCommentConnect(String commentConnect) {
        this.commentConnect = commentConnect;
    }

    public Date getCommentTime() {
        return commentTime;
    }

    public void setCommentTime(Date commentTime) {
        this.commentTime = commentTime;
    }

    public String getCommentImage() {
        return commentImage;
    }

    public void setCommentImage(String commentImage) {
        this.commentImage = commentImage;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    public String getCommentTimeStr() {
        if (commentTime != null) commentTimeStr= DateUtil.formatFullTime(commentTime);
        return commentTimeStr;
    }

    public void setCommentTimeStr(String commentTimeStr) {
        this.commentTimeStr = commentTimeStr;
    }

    private User user;

    private List<Order> orders;

}