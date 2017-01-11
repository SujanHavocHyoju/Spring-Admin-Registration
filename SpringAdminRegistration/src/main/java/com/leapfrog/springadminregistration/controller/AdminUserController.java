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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author HYOJU
 */
@Controller
@RequestMapping(value = "/admin/user")
public class AdminUserController {

    @Autowired
    UserDAO userDAO;

    @RequestMapping(method = RequestMethod.GET)
    public String admin(Model model) throws ClassNotFoundException, SQLException {
        model.addAttribute("users", userDAO.getAll());
        return "/admin/user/index";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(Model model) throws ClassNotFoundException, SQLException {
        model.addAttribute("user", new User());
        return "/admin/user/add";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    String save(User u) throws ClassNotFoundException, SQLException, NoSuchAlgorithmException {
        String retVal = "admin/user?error";
        MessageDigest m = MessageDigest.getInstance("MD5");
            m.update(u.getPassword().getBytes(), 0, u.getPassword().length());
            String finalPassword = (new BigInteger(1, m.digest()).toString(16));
            u.setPassword(finalPassword);
        if(userDAO.insert(u)>0){
            retVal = "admin/user?success";
        }
        return "redirect:/"+retVal;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") int id, Model model) throws ClassNotFoundException, SQLException {
        User user = userDAO.getById(id);
        if (user == null) {
            return "redirect:/admin/user";
        }
        model.addAttribute("user", user);
        return "admin/user/edit";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editPost(User u) throws SQLException, ClassNotFoundException {
        if (userDAO.update(u) > 0) {
            return "redirect:/admin/user?success";
        }
        return "redirect:/admin/user??error";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id, User user) throws ClassNotFoundException, SQLException {
        if(userDAO.delete(id)>0)
        {
            return "redirect:/admin/user?deleteSuccess";
        }
        return "redirect:/admin/user?deleteError";
    }
}
