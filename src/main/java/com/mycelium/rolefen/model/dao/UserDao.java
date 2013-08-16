package com.mycelium.rolefen.model.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Required;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.mycelium.rolefen.model.entities.Rank;
import com.mycelium.rolefen.model.entities.Role;
import com.mycelium.rolefen.model.entities.UserEntity;

public class UserDao extends JdbcCrudDao<UserEntity> implements UserDetailsService {

    private String _teamUsersQuery;
    private String _loginUserQuery;

    @Required
    public void setTeamUsersQuery(String teamUsersQuery) {
        _teamUsersQuery = teamUsersQuery;
    }

    @Required
    public void setLoginUserQuery(String loginUserQuery) {
        _loginUserQuery = loginUserQuery;
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

    public UserEntity findByLogin(String login) {
        return getJdbcTemplate().query(_loginUserQuery, _rowMapper, login).get(0);
    }

    @Override
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        UserEntity user = findByLogin(login);
        return new User(login, user.getPassword(), user.isActive(), true, true, true, getAuthorities(user));
    }

    private Collection<GrantedAuthority> getAuthorities(UserEntity user) {
        Collection<GrantedAuthority> authorities = new LinkedList<GrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority(user.getRole().getName()));
        return authorities;
    }
}
