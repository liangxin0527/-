package com.liangxin.qlmall_portal.service;


import com.liangxin.qlmall_portal.bean.Address;

import java.util.List;

public interface AddressService {
    List<Address> selectAllByUid(Integer id);

    boolean saveAddress(Address address);

    Address selectByPrimark(Integer id);

    boolean updateAddressByid(Address address);

    boolean deleteAddressByid(Integer id);

    boolean updateDefaultById(Integer uid, Integer id);
}
