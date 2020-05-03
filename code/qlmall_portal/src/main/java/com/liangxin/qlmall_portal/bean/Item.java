package com.liangxin.qlmall_portal.bean;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

import java.io.Serializable;
import java.util.Date;

@Data
@Document(indexName = "item", type = "docs")
public class Item implements Serializable {
    @Id
    private Integer id;
    @Field(type = FieldType.Integer,store = true)
    private Integer itemCid;

    @Field(type = FieldType.Text,index = true,analyzer = "ik_max_word",store = true)
    private String itemTitle;
    @Field(type = FieldType.Double,index = true,store = true)
    private Double itemPrice;
    @Field(type = FieldType.Text,index = true,store = true)
    private String itemImage;
    @Field(type = FieldType.Integer,index = true)
    private Integer itemSales;
    @Field(type = FieldType.Date,index = true)
    private Date itemCreatime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getItemCid() {
        return itemCid;
    }

    public void setItemCid(Integer itemCid) {
        this.itemCid = itemCid;
    }

    public String getItemTitle() {
        return itemTitle;
    }

    public void setItemTitle(String itemTitle) {
        this.itemTitle = itemTitle;
    }

    public Double getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(Double itemPrice) {
        this.itemPrice = itemPrice;
    }

    public String getItemImage() {
        return itemImage;
    }

    public void setItemImage(String itemImage) {
        this.itemImage = itemImage;
    }

    public Integer getItemSales() {
        return itemSales;
    }

    public void setItemSales(Integer itemSales) {
        this.itemSales = itemSales;
    }

    public Date getItemCreatime() {
        return itemCreatime;
    }

    public void setItemCreatime(Date itemCreatime) {
        this.itemCreatime = itemCreatime;
    }
}