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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author HYOJU
 */
@Controller
@RequestMapping(value = "/enquiry")
public class EnquiryController {
    
    @Autowired
    EnquiryDAO enquiryDAO;
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(){
        return "enquiry/index";
    }   
    
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String enqSave(Enquiry e) throws ClassNotFoundException, SQLException{
        String retVal="enquiry?error";
        if(enquiryDAO.insert(e)>0){
            retVal="enquiry?success";
        }
        return "redirect:/"+retVal;
    }
    
    
    
}
