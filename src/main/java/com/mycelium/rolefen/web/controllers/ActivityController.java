package com.mycelium.rolefen.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/activity")
public class ActivityController {

    @RequestMapping(method = RequestMethod.GET)
    ModelAndView getActivitiesPage() {
        return new ModelAndView("activities");
    }
}
