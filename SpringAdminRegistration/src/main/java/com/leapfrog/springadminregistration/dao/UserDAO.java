/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.springadminregistration.dao;

import com.leapfrog.springadminregistration.entity.User;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author HYOJU
 */
public interface UserDAO {
    int insert(User u) throws ClassNotFoundException, SQLException;
    List<User> getAll() throws ClassNotFoundException, SQLException;
    User getById(int id) throws ClassNotFoundException, SQLException;
    int update(User u) throws ClassNotFoundException, SQLException;
    int delete(int id) throws ClassNotFoundException, SQLException;
    User login(String username, String password) throws ClassNotFoundException, SQLException;
    User login(String username, String password, Boolean isAdmin) throws ClassNotFoundException, SQLException;

    

    
    
}
