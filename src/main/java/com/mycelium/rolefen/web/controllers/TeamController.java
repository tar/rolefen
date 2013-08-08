package com.mycelium.rolefen.web.controllers;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mycelium.rolefen.model.dao.JdbcCrudDao;
import com.mycelium.rolefen.model.dao.UserDao;
import com.mycelium.rolefen.model.entities.TeamEntity;

@Controller
@RequestMapping(value = "/team")
public class TeamController {

    @Autowired
    private UserDao _userDao;
    @Resource(name = "teamDao")
    private JdbcCrudDao<TeamEntity> _teamDao;

    @RequestMapping(method = RequestMethod.GET, produces = "application/json")
    Map<String, Object> getTeams() {
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("items", _teamDao.findAll());
        return result;
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    ModelAndView teamPage(@PathVariable("id") long teamId) {
        ModelAndView mav = new ModelAndView("team");
        mav.addObject("members", _userDao.findByTeam(teamId));
        mav.addObject("team", _teamDao.findOne(teamId));
        return mav;
    }
}
