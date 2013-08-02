package com.mycelium.rolefen.web.controllers;

import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.mycelium.rolefen.model.dao.JdbcCrudDao;
import com.mycelium.rolefen.model.entities.TeamEntity;
import com.sun.org.apache.bcel.internal.generic.NEW;

@Controller
@RequestMapping(value = "/team")
public class TeamController {
    
    @Resource(name = "teamDao")
    private JdbcCrudDao<TeamEntity>  _teamDao;

    private static final Gson _gson = new Gson();
    
    @RequestMapping(method = RequestMethod.GET, produces = "application/json")
    Map<String, Object> getTeams() {
        Type collectionType = new TypeToken<Collection<TeamEntity>>(){}.getType();
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("items", _teamDao.findAll());
//        return _gson.toJson(_teamDao.findAll(), collectionType);
        return result;
    }
}
