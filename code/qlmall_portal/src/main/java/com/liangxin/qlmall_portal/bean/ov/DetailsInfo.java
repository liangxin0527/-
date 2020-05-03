package com.liangxin.qlmall_portal.bean.ov;


import com.liangxin.qlmall_portal.bean.Details;
import com.liangxin.qlmall_portal.bean.ItemSmall;
import com.liangxin.qlmall_portal.bean.Order;
import lombok.Data;

import java.io.Serializable;

@Data
public class DetailsInfo implements Serializable {

    ItemSmall itemSmall;

    Details details;

    Order order;

    Integer count;

    Double subtotal;

    public ItemSmall getItemSmall() {
        return itemSmall;
    }

    public void setItemSmall(ItemSmall itemSmall) {
        this.itemSmall = itemSmall;
    }

    public Details getDetails() {
        return details;
    }

    public void setDetails(Details details) {
        this.details = details;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(Double subtotal) {
        this.subtotal = subtotal;
    }
}
