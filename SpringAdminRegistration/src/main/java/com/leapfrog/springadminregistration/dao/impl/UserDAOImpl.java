/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.springadminregistration.dao.impl;

import com.leapfrog.springadminregistration.dao.UserDAO;
import com.leapfrog.springadminregistration.entity.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author HYOJU
 */
@Repository(value = "userDAO")
public class UserDAOImpl implements UserDAO{

    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    @Override
    public int insert(User u) throws ClassNotFoundException, SQLException {
        String sql = "INSERT INTO tbl_users(first_name,last_name,email,username,password) VALUES(?,?,?,?,?)";
        return jdbcTemplate.update(sql, new Object[]{u.getFirstName(),u.getLastName(),u.getEmail(),u.getUsername(),u.getPassword()});
    
    }

    @Override
    public List<User> getAll() throws ClassNotFoundException, SQLException {
        String sql = "SELECT * FROM tbl_users";
        return jdbcTemplate.query(sql, new RowMapper<User>() {

            @Override
            public User mapRow(ResultSet rs, int i) throws SQLException {
                User u = new User();
                u.setId(rs.getInt("user_id"));
                u.setFirstName(rs.getString("first_name"));
                u.setLastName(rs.getString("last_name"));
                u.setEmail(rs.getString("email"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setRegisteredDate(rs.getDate("registered_date"));
                u.setIsAdmin(rs.getBoolean("is_admin"));
                return u;
            }
        });
    }

    @Override
    public User getById(int id) throws ClassNotFoundException, SQLException {
        String sql = "SELECT * FROM tbl_users WHERE user_id=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new RowMapper<User>() {

            @Override
            public User mapRow(ResultSet rs, int i) throws SQLException {
                User u = new User();
                u.setId(rs.getInt("user_id"));
                u.setFirstName(rs.getString("first_name"));
                u.setLastName(rs.getString("last_name"));
                u.setEmail(rs.getString("email"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setRegisteredDate(rs.getDate("registered_date"));
                u.setIsAdmin(rs.getBoolean("is_admin"));
                return u;
            }
        });
    }

    @Override
    public int update(User u) throws ClassNotFoundException, SQLException {
        String sql = "UPDATE tbl_users SET first_name=?,last_name=?,email=?,username=?,password=?,is_admin=? WHERE user_id=?";
        return jdbcTemplate.update(sql, new Object[]{
            u.getFirstName(),
            u.getLastName(),
            u.getEmail(),
            u.getUsername(),
            u.getPassword(),
            u.getIsAdmin(),
            u.getId()
        });
    }

    @Override
    public int delete(int id) throws ClassNotFoundException, SQLException {
        String sql = "DELETE FROM tbl_users WHERE user_id=?";
        return jdbcTemplate.update(sql, new Object[]{id});
    }

    @Override
    public User login(String username, String password) throws ClassNotFoundException, SQLException {
        for (User u : getAll()) {
            if (((u.getUsername().equals(username)) && (u.getPassword().equals(password)))) {
                return u;
            }
        }
        return null;
    }

    @Override
    public User login(String username, String password, Boolean isAdmin) throws ClassNotFoundException, SQLException {
        for (User u : getAll()) {
            if (((u.getUsername().equals(username)) && (u.getPassword().equals(password))  &&(u.getIsAdmin().equals(isAdmin.TRUE)))) {
                return u;
            }
        }
        return null;
    }
    
}
