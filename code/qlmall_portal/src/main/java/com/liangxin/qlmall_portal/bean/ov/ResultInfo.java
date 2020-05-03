package com.liangxin.qlmall_portal.bean.ov;

import lombok.Data;

@Data
public class ResultInfo {
    private String message;
    private boolean flag;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }
}
