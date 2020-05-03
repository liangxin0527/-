package com.liangxin.qlmall_admin.sytem.pojo;

import lombok.Data;

import java.io.Serializable;

@Data
public class Details implements Serializable {
    private Integer itemDetailsId;

    private Integer itemDetailsItemid;

    private String itemDetailsNews;

    private Double itemDetailsPrice;

    private String itemDetailsTitle;

    private Integer itemDetailsCount;

    public Integer getItemDetailsId() {
        return itemDetailsId;
    }

    public void setItemDetailsId(Integer itemDetailsId) {
        this.itemDetailsId = itemDetailsId;
    }

    public Integer getItemDetailsItemid() {
        return itemDetailsItemid;
    }

    public void setItemDetailsItemid(Integer itemDetailsItemid) {
        this.itemDetailsItemid = itemDetailsItemid;
    }

    public String getItemDetailsNews() {
        return itemDetailsNews;
    }

    public void setItemDetailsNews(String itemDetailsNews) {
        this.itemDetailsNews = itemDetailsNews;
    }

    public Double getItemDetailsPrice() {
        return itemDetailsPrice;
    }

    public void setItemDetailsPrice(Double itemDetailsPrice) {
        this.itemDetailsPrice = itemDetailsPrice;
    }

    public String getItemDetailsTitle() {
        return itemDetailsTitle;
    }

    public void setItemDetailsTitle(String itemDetailsTitle) {
        this.itemDetailsTitle = itemDetailsTitle;
    }

    public Integer getItemDetailsCount() {
        return itemDetailsCount;
    }

    public void setItemDetailsCount(Integer itemDetailsCount) {
        this.itemDetailsCount = itemDetailsCount;
    }
}