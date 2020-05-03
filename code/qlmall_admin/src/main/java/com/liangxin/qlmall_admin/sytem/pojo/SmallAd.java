package com.liangxin.qlmall_admin.sytem.pojo;

public class SmallAd {
    private Integer id;
    private String path;
    private String status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "SmallAd{" +
                "id=" + id +
                ", path='" + path + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
