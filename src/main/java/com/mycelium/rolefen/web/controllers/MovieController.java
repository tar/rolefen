package com.mycelium.rolefen.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/movie")
public class MovieController {
    
    @RequestMapping(method=RequestMethod.GET)
    ModelAndView getMoviesPage(){
        return new ModelAndView("movies");
    }
}
