package com.mycelium.rolefen.web.controllers.security;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class SecurityAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

    @SuppressWarnings("unused")
    private final static Logger logger = Logger.getLogger(SecurityAuthenticationSuccessHandler.class);

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth)
            throws IOException, ServletException {
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        out.write("{\"status\":\"success\",\"code\":\"logged in\"}");
        out.flush();
    }
}
