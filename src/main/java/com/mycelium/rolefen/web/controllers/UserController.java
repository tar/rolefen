package com.mycelium.rolefen.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
    
    @RequestMapping(value = "/user",method=RequestMethod.GET)
    ModelAndView getHomePage(){
        return new ModelAndView("join");
    }
}
