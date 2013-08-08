package com.mycelium.rolefen.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Required;

import com.mycelium.rolefen.model.entities.UserEntity;

public class UserDao extends JdbcCrudDao<UserEntity> {

    private String _teamUsersQuery;

    @Required
    public void setTeamUsersQuery(String teamUsersQuery) {
        this._teamUsersQuery = teamUsersQuery;
    }

    public List<UserEntity> findByTeam(long teamId) {
        return getJdbcTemplate().query(_teamUsersQuery, _rowMapper, teamId);
    }
}
