/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.springadminregistration.controller;


import com.leapfrog.springadminregistration.dao.UserDAO;
import com.leapfrog.springadminregistration.entity.User;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author HYOJU
 */
@Controller
@RequestMapping(value = "/register")
public class RegistrationController {
    
    @Autowired
    UserDAO userDAO;
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(){
        return "register/index";
    }   
    
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String regSave(User u) throws ClassNotFoundException, SQLException, NoSuchAlgorithmException{
        String retVal="register?error";
        MessageDigest m = MessageDigest.getInstance("MD5");
            m.update(u.getPassword().getBytes(), 0, u.getPassword().length());
            String finalPassword = (new BigInteger(1, m.digest()).toString(16));
            u.setPassword(finalPassword);
        if(userDAO.insert(u)>0){
            retVal="register?success";
        }
        return "redirect:/"+retVal;
    }
}
