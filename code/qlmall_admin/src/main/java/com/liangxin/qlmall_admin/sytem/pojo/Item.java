package com.liangxin.qlmall_admin.sytem.pojo;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Document(indexName = "item", type = "docs")
@Data
public class Item  {
    @Id
    private Integer id;
    @Field(type = FieldType.Integer,store = true)
    private Integer itemCid;

    @Field(type = FieldType.Text,index = true,analyzer = "ik_max_word",store = true)
    private String itemTitle;
    @Field(type = FieldType.Double,store = true)
    private Double itemPrice;
    @Field(type = FieldType.Text,store = true)
    private String itemImage;
    @Field(type = FieldType.Integer,store = true)
    private Integer itemSales;
    @Field(type = FieldType.Integer,store = true)
    private Integer itemStats;
    private String ids;
    @Field(type = FieldType.Text,store = true)
    private String itemDetailsNews;

    public String getIds() {
        return ids;
    }

    @Override
    public String toString() {
        return "Item{" +
                "id=" + id +
                ", itemCid=" + itemCid +
                ", itemTitle='" + itemTitle + '\'' +
                ", itemPrice=" + itemPrice +
                ", itemImage='" + itemImage + '\'' +
                ", itemSales=" + itemSales +
                ", itemStats=" + itemStats +
                ", ids='" + ids + '\'' +
                ", itemDetailsNews='" + itemDetailsNews + '\'' +
                ", itemCreatime=" + itemCreatime +
                ", c_name='" + c_name + '\'' +
                '}';
    }

    public void setIds(String ids) {
        this.ids = ids;
    }

    public String getItemDetailsNews() {
        return itemDetailsNews;
    }

    public void setItemDetailsNews(String itemDetailsNews) {
        this.itemDetailsNews = itemDetailsNews;
    }

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date itemCreatime;

    private String c_name;

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

    public Integer getItemStats() {
        return itemStats;
    }

    public void setItemStats(Integer itemStats) {
        this.itemStats = itemStats;
    }

    public Date getItemCreatime() {
        return itemCreatime;
    }

    public void setItemCreatime(Date itemCreatime) {
        this.itemCreatime = itemCreatime;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

}