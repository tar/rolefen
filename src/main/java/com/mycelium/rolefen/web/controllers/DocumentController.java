package com.mycelium.rolefen.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/document")
public class DocumentController {
    
    @RequestMapping(method=RequestMethod.GET)
    ModelAndView getDocumentsPage(){
        return new ModelAndView("documents");
    }
    
    @RequestMapping(value="/{id}", method=RequestMethod.GET)
    ModelAndView getDocument(@PathVariable(value="id") Integer id){
        return new ModelAndView("documents");
    }
}
