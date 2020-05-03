package com.liangxin.qlmall_portal.service;




import com.liangxin.qlmall_portal.bean.CartItem;
import com.liangxin.qlmall_portal.bean.ov.ResultInfo;
import com.liangxin.qlmall_portal.bean.ov.ShoppingCart;
import com.liangxin.qlmall_portal.sytem.pojo.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public interface ShoppingCartService {
    public String getKey(HttpServletRequest req, HttpServletResponse resp, User user);

    public ShoppingCart mergeCart(String tempKey, User user);

    public ResultInfo addCart(HttpServletRequest req, HttpServletResponse resp, User user, CartItem item);

    public ResultInfo removeCart(HttpServletRequest req, HttpServletResponse resp, User user, List<CartItem> item);

    String removeByOne(HttpServletRequest req, HttpServletResponse resp, User user, CartItem item);

    ResultInfo updateCart(HttpServletRequest req, HttpServletResponse resp, User user, String classify, String type);
}
