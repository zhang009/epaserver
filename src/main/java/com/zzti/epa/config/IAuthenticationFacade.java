package com.zzti.epa.config;

import org.springframework.security.core.Authentication;

/**
* @Description:为了获取用户的信息接口
* @Date: 2020-04-09  15:13
* @Param null:
* @return: null
**/
public interface IAuthenticationFacade {
    Authentication getAuthentication();
}
