package com.liangxin.qlmall_portal.bean;

import lombok.Data;

import java.io.Serializable;

@Data
public class Address implements Serializable {
    private Integer id;

    private Integer uid;

    private String name;

    private String telephone;

    private String province;

    private String city;

    private String county;

    private String particulars;

    private Integer defaultvalue;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public String getParticulars() {
        return particulars;
    }

    public void setParticulars(String particulars) {
        this.particulars = particulars;
    }

    public Integer getDefaultvalue() {
        return defaultvalue;
    }

    public void setDefaultvalue(Integer defaultvalue) {
        this.defaultvalue = defaultvalue;
    }
}