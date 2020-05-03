package com.liangxin.qlmall_admin.sytem.controller;

import com.liangxin.qlmall_admin.commons.controller.BaseController;
import com.liangxin.qlmall_admin.commons.entity.FebsResponse;
import com.liangxin.qlmall_admin.commons.entity.MenuTree;
import com.liangxin.qlmall_admin.sytem.service.IMenuService;
import com.liangxin.qlmall_admin.sytem.pojo.Menu;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/menu")
public class MenuController extends BaseController {

    @Autowired
    private IMenuService menuService;

    @GetMapping("tree")
    public FebsResponse getMenuTree() {
        MenuTree<Menu> menus = this.menuService.findMenus();
        return new FebsResponse().success().data(menus.getChilds());
    }
}
