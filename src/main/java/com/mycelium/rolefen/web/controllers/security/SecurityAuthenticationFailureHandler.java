package com.mycelium.rolefen.web.controllers.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

class SecurityAuthenticationFailureHandler implements AuthenticationFailureHandler {

    @SuppressWarnings("unused")
    private final static Logger logger = Logger.getLogger(SecurityAuthenticationFailureHandler.class);

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
            AuthenticationException exception) throws IOException, ServletException {
    }
}
