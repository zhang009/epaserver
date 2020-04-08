package com.zzti.epa.config;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

/**
 * @ClassName AuthenticationFacade
 * @Description TODO
 * @Author Administrator
 * @Date 2020-04-08 16:59
 **/
@Component
public class AuthenticationFacade implements IAuthenticationFacade{

    @Override
    public Authentication getAuthentication() {
        return SecurityContextHolder.getContext().getAuthentication();
    }
}
