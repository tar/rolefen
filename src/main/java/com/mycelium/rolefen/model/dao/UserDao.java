package com.mycelium.rolefen.model.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Required;
import org.springframework.jdbc.core.RowCallbackHandler;

import com.mycelium.rolefen.model.entities.Rank;
import com.mycelium.rolefen.model.entities.Role;
import com.mycelium.rolefen.model.entities.UserEntity;

public class UserDao extends JdbcCrudDao<UserEntity> {

    private String _teamUsersQuery;

    @Required
    public void setTeamUsersQuery(String teamUsersQuery) {
        this._teamUsersQuery = teamUsersQuery;
    }

    @Override
    protected void initDao() throws Exception {
        super.initDao();
        initRolesAndRanks();
    }

    private void initRolesAndRanks() {
        getJdbcTemplate().query("select id, name, caption from role", new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet rs) throws SQLException {
                String name = rs.getString("name");
                for (Role role : Role.values()) {
                    if (role.getName().equals(name)) {
                        role.setCaption(rs.getString("caption"));
                        role.setId(rs.getLong("id"));
                    }
                }
            }
        });
        getJdbcTemplate().query("select id, name, caption from rank", new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet rs) throws SQLException {
                String name = rs.getString("name");
                for (Rank rank : Rank.values()) {
                    if (rank.getName().equals(name)) {
                        rank.setCaption(rs.getString("caption"));
                        rank.setId(rs.getLong("id"));
                    }
                }
            }
        });
    }

    public List<UserEntity> findByTeam(long teamId) {
        return getJdbcTemplate().query(_teamUsersQuery, _rowMapper, teamId);
    }
}
