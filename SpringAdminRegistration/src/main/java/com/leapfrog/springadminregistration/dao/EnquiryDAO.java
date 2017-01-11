/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.springadminregistration.dao;

import com.leapfrog.springadminregistration.entity.Enquiry;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author HYOJU
 */
public interface EnquiryDAO {
    int insert(Enquiry e) throws ClassNotFoundException, SQLException;
    List<Enquiry> getAll() throws ClassNotFoundException, SQLException;
    Enquiry getById(int id) throws ClassNotFoundException, SQLException;
    int delete(int id) throws SQLException, ClassNotFoundException;
    int update(Enquiry en) throws SQLException, ClassNotFoundException;
}
