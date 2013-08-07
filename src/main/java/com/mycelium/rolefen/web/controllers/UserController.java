package com.mycelium.rolefen.web.controllers;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mycelium.rolefen.model.dao.JdbcCrudDao;
import com.mycelium.rolefen.model.entities.TeamEntity;
import com.mycelium.rolefen.model.entities.UserEntity;

@Controller
public class UserController {
    
    @Resource(name = "teamDao")
    private JdbcCrudDao<TeamEntity>  _teamDao;
    @Resource(name = "userDao")
    private JdbcCrudDao<UserEntity>  _userDao;
    
    @RequestMapping(value = "/user",method=RequestMethod.GET)
    ModelAndView getHomePage(Model model){
        ModelAndView mav = new ModelAndView("join");
        mav.addObject("teams", _teamDao.findAll());
        model.addAttribute("member", new UserEntity());
        return mav;
    }
    
    @RequestMapping(value = "/user/member",method=RequestMethod.POST)
    void addMember(@ModelAttribute("member") UserEntity user){
        user.setRoleId(3);
        _userDao.insert(user);
    }
}
