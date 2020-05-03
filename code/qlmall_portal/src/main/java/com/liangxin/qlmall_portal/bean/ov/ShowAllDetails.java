package com.liangxin.qlmall_portal.bean.ov;

import com.liangxin.qlmall_portal.bean.Details;
import com.liangxin.qlmall_portal.bean.ItemBig;
import com.liangxin.qlmall_portal.bean.ItemSmall;
import lombok.Data;

import java.util.List;

@Data
public class ShowAllDetails {
    Details details;
    List<ItemSmall> smallList;
    List<ItemBig> bigList;

    public Details getDetails() {
        return details;
    }

    public void setDetails(Details details) {
        this.details = details;
    }

    public List<ItemSmall> getSmallList() {
        return smallList;
    }

    public void setSmallList(List<ItemSmall> smallList) {
        this.smallList = smallList;
    }

    public List<ItemBig> getBigList() {
        return bigList;
    }

    public void setBigList(List<ItemBig> bigList) {
        this.bigList = bigList;
    }
}
