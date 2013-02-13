package com.mycelium.rolefen.model;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.mycelium.rolefen.model.dao.JdbcCrudDao;
import com.mycelium.rolefen.model.entities.UserEntity;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test-config.xml" })
@Transactional
public class DaoTest {
    @Resource(name = "userDao")
    private JdbcCrudDao<UserEntity> _userDao;

    @Test
    public void testUserDao() {
        List<UserEntity> allUsers = _userDao.findAll();
        System.out.println("users in DB = " + allUsers.size());
        for (UserEntity user : allUsers) {
            System.out.println("login : " + user.getLogin());
        }
    }

}
