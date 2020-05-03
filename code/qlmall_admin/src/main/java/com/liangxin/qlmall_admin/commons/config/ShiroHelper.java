package com.liangxin.qlmall_admin.commons.config;

import com.liangxin.qlmall_admin.commons.annotation.Helper;
import org.apache.shiro.authz.AuthorizationInfo;

/**
 *获取当前用户的角色和权限集合
 */
@Helper
public class ShiroHelper extends ShiroRealm {

    /**
     * 获取当前用户的角色和权限集合
     *
     * @return AuthorizationInfo
     */
    public AuthorizationInfo getCurrentuserAuthorizationInfo() {
        return super.doGetAuthorizationInfo(null);
    }
}
