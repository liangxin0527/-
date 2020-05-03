package com.liangxin.qlmall_admin.sytem.service;

import com.liangxin.qlmall_admin.commons.entity.MenuTree;
import com.liangxin.qlmall_admin.sytem.pojo.Menu;

import java.util.List;

public interface IMenuService {
    List<Menu> findUserPermissions(String userName);

    MenuTree<Menu> findMenus();
}
