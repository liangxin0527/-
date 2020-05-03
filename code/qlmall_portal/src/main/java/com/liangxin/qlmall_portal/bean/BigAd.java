package com.liangxin.qlmall_portal.bean;

public class BigAd {
    private Integer id;
    private String path;
    private String status;

    @Override
    public String toString() {
        return "BigAd{" +
                "id=" + id +
                ", path='" + path + '\'' +
                ", status='" + status + '\'' +
                '}';
    }

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
}
