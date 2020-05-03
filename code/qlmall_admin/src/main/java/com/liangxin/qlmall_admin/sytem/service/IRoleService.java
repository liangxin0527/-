package com.liangxin.qlmall_admin.sytem.service;

import com.liangxin.qlmall_admin.commons.entity.Page;
import com.liangxin.qlmall_admin.commons.utils.PageUtil;
import com.liangxin.qlmall_admin.sytem.pojo.Role;

import java.util.List;

public interface IRoleService {
    /**
     * 根据用户名查询用户拥有的角色
     * @param userName
     * @return
     */
    List<Role> findUserRole(String userName);

    /**
     * 查询所有角色
     * @return
     */
    PageUtil findRoles(Page page);

    List<Role> selectAll();

    /**
     * 新增角色
     * @param role
     */
    void createRole(Role role);

    void deleteRoleById(String roleIds);

    void updateRole(Role role);
}
