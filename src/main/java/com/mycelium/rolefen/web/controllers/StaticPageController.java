package com.mycelium.rolefen.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StaticPageController {
    
    @RequestMapping(value = "/about", method=RequestMethod.GET)
    ModelAndView getAboutPage(){
        return new ModelAndView("about");
    }
    
    @RequestMapping(value = "/contact", method=RequestMethod.GET)
    ModelAndView getContactsPage(){
        return new ModelAndView("contacts");
    }
}
