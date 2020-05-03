package com.liangxin.qlmall_portal.bean.ov;

import com.github.pagehelper.PageInfo;
import com.liangxin.qlmall_portal.sytem.pojo.User;
import lombok.Data;

import java.util.List;

@Data
public class Page {
    private PageInfo<?> pageInfo;
    private List<?> list;
    User user;
    Integer orderType;

    public PageInfo<?> getPageInfo() {
        return pageInfo;
    }

    public void setPageInfo(PageInfo<?> pageInfo) {
        this.pageInfo = pageInfo;
    }

    public List<?> getList() {
        return list;
    }

    public void setList(List<?> list) {
        this.list = list;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getOrderType() {
        return orderType;
    }

    public void setOrderType(Integer orderType) {
        this.orderType = orderType;
    }
}
