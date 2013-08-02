package com.mycelium.rolefen.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/photo")
public class PhotoController {
    
    @RequestMapping(method=RequestMethod.GET)
    ModelAndView getPhotosPage(){
        return new ModelAndView("photos");
    }
}
