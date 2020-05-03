package com.liangxin.qlmall_portal.bean.ov;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class CommentPageResult {
    private List<?> lists=new ArrayList<>();
    private Long total;
    private Integer currentPage;
    private Integer limit;

    public List<?> getLists() {
        return lists;
    }

    public void setLists(List<?> lists) {
        this.lists = lists;
    }

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }
}
