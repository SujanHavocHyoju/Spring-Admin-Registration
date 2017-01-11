/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.springadminregistration.controller;

import com.leapfrog.springadminregistration.dao.EnquiryDAO;
import com.leapfrog.springadminregistration.entity.Enquiry;
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
@RequestMapping(value = "/admin/enquiry")
public class AdminEnquiryController {

    @Autowired
    EnquiryDAO enquiryDAO;

    @RequestMapping(method = RequestMethod.GET)
    public String admin(Model model) throws ClassNotFoundException, SQLException {
        model.addAttribute("enquiries", enquiryDAO.getAll());
        return "/admin/enquiry/index";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(Model model) throws ClassNotFoundException, SQLException {
        model.addAttribute("enquiry", new Enquiry());
        return "/admin/enquiry/add";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    String save(Enquiry e) throws ClassNotFoundException, SQLException {
        String retVal = "admin/enquiry?error";
        if (enquiryDAO.insert(e) > 0) {
            retVal = "admin/enquiry?success";
        }
        return "redirect:/" + retVal;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") int id, Model model) throws ClassNotFoundException, SQLException {
        Enquiry enquiry = enquiryDAO.getById(id);
        if (enquiry == null) {
            return "redirect:/admin/enquiry";
        }
        model.addAttribute("enquiry", enquiry);
        return "admin/enquiry/edit";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editPost(Enquiry en) throws SQLException, ClassNotFoundException {
        if (enquiryDAO.update(en) > 0) {
            return "redirect:/admin/enquiry?success";
        }
        return "redirect:/admin/enquiry??error";
    }

    /*@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id, Model model) throws ClassNotFoundException, SQLException {
        Enquiry enquiry = enquiryDAO.getById(id);
        if (enquiry == null) {
            return "redirect:/admin/enquiry";
        }
        model.addAttribute("enquiry", enquiry);
        return "admin/enquiry/delete";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    public String remove(@PathVariable("id") int id) throws SQLException, ClassNotFoundException {
        if (enquiryDAO.delete(id) != 0) {
            return "redirect:/admin/enquiry?success";
        }
        return "redirect:/admin/enquiry?error";
    }*/
    
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id, Enquiry enquiry) throws ClassNotFoundException, SQLException {
        if(enquiryDAO.delete(id)>0)
        {
            return "redirect:/admin/enquiry?deleteSuccess";
        }
        return "redirect:/admin/enquiry?deleteError";
    }
}
