package com.liangxin.qlmall_portal.bean;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
public class Order implements Serializable {
    private Integer id;

    private Integer orderUid;

    private String orderId;

    private Integer orderAddressId;

    private String orderDetailsId;

    private String orderClassify;

    private String orderTitle;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    private Integer orderCount;

    private String orderImage;

    private Double orderPrice;

    private Double orderSubTotal;

    private String orderTime;

    private Integer orderShouh;

    private Integer orderIspay;

    private Integer orderType;

    private Integer orderPj;

    private String orderShouhStr;

    private String orderIspayStr;

    private String orderTypeStr;

    private Integer detailsId;

    public String getOrderShouhStr() {
        if (orderShouh==1){
            orderShouhStr="待评价";
        }
        if (orderShouh==0){
            orderShouhStr="待收货";
        }
        return orderShouhStr;
    }

    public Integer getOrderUid() {
        return orderUid;
    }

    public void setOrderUid(Integer orderUid) {
        this.orderUid = orderUid;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public Integer getOrderAddressId() {
        return orderAddressId;
    }

    public void setOrderAddressId(Integer orderAddressId) {
        this.orderAddressId = orderAddressId;
    }

    public String getOrderDetailsId() {
        return orderDetailsId;
    }

    public void setOrderDetailsId(String orderDetailsId) {
        this.orderDetailsId = orderDetailsId;
    }

    public String getOrderClassify() {
        return orderClassify;
    }

    public void setOrderClassify(String orderClassify) {
        this.orderClassify = orderClassify;
    }

    public String getOrderTitle() {
        return orderTitle;
    }

    public void setOrderTitle(String orderTitle) {
        this.orderTitle = orderTitle;
    }

    public Integer getOrderCount() {
        return orderCount;
    }

    public void setOrderCount(Integer orderCount) {
        this.orderCount = orderCount;
    }

    public String getOrderImage() {
        return orderImage;
    }

    public void setOrderImage(String orderImage) {
        this.orderImage = orderImage;
    }

    public Double getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(Double orderPrice) {
        this.orderPrice = orderPrice;
    }

    public Double getOrderSubTotal() {
        return orderSubTotal;
    }

    public void setOrderSubTotal(Double orderSubTotal) {
        this.orderSubTotal = orderSubTotal;
    }

    public String getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(String orderTime) {
        this.orderTime = orderTime;
    }

    public Integer getOrderShouh() {
        return orderShouh;
    }

    public void setOrderShouh(Integer orderShouh) {
        this.orderShouh = orderShouh;
    }

    public Integer getOrderIspay() {
        return orderIspay;
    }

    public void setOrderIspay(Integer orderIspay) {
        this.orderIspay = orderIspay;
    }

    public Integer getOrderType() {
        return orderType;
    }

    public void setOrderType(Integer orderType) {
        this.orderType = orderType;
    }

    public Integer getOrderPj() {
        return orderPj;
    }

    public void setOrderPj(Integer orderPj) {
        this.orderPj = orderPj;
    }

    public Integer getDetailsId() {
        return detailsId;
    }

    public void setDetailsId(Integer detailsId) {
        this.detailsId = detailsId;
    }

    public void setOrderShouhStr(String orderShouhStr) {
        this.orderShouhStr = orderShouhStr;
    }

    public String getOrderIspayStr() {
        if (orderIspay==1){
            orderIspayStr="已支付";
        }
        if (orderIspay==0){
            orderIspayStr="待支付";
        }
        return orderIspayStr;
    }

    public void setOrderIspayStr(String orderIspayStr) {
        this.orderIspayStr = orderIspayStr;
    }

    public String getOrderTypeStr() {
        if (orderType==0){
            orderTypeStr="支付宝";
        }
        if (orderType==1){
            orderTypeStr="微信";
        }
        if (orderType==2){
            orderTypeStr="银联";
        }
        return orderTypeStr;
    }

    public void setOrderTypeStr(String orderTypeStr) {
        this.orderTypeStr = orderTypeStr;
    }

}