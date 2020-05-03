package com.liangxin.qlmall_admin.sytem.pojo;

import lombok.Data;

import java.io.Serializable;

@Data
public class ItemSmall implements Serializable {
    private Integer itemSmallId;

    private Integer itemDetailsId;

    private String itemSmallAlt;

    private String itemSmallImage;

    public Integer getItemSmallId() {
        return itemSmallId;
    }

    public void setItemSmallId(Integer itemSmallId) {
        this.itemSmallId = itemSmallId;
    }

    public Integer getItemDetailsId() {
        return itemDetailsId;
    }

    public void setItemDetailsId(Integer itemDetailsId) {
        this.itemDetailsId = itemDetailsId;
    }

    public String getItemSmallAlt() {
        return itemSmallAlt;
    }

    public void setItemSmallAlt(String itemSmallAlt) {
        this.itemSmallAlt = itemSmallAlt;
    }

    public String getItemSmallImage() {
        return itemSmallImage;
    }

    public void setItemSmallImage(String itemSmallImage) {
        this.itemSmallImage = itemSmallImage;
    }
}