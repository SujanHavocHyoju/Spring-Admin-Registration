/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.springadminregistration.dao.impl;

import com.leapfrog.springadminregistration.dao.EnquiryDAO;
import com.leapfrog.springadminregistration.entity.Enquiry;
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
@Repository(value = "enquiryDAO")
public class EnquiryDAOImpl implements EnquiryDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    @Override
    public int insert(Enquiry e) throws ClassNotFoundException, SQLException {
        String sql = "INSERT INTO tbl_enquiries(first_name,last_name,email,contact_no,subject,message) VALUES(?,?,?,?,?,?)";
        return jdbcTemplate.update(sql, new Object[]{e.getFirstName(),e.getLastName(),e.getEmail(),e.getContactNo(),e.getSubject(),e.getMessage()});
    }

    @Override
    public List<Enquiry> getAll() throws ClassNotFoundException, SQLException {
        String sql="SELECT * FROM tbl_enquiries";
        return jdbcTemplate.query(sql, new RowMapper<Enquiry>() {

            @Override
            public Enquiry mapRow(ResultSet rs, int i) throws SQLException {
                Enquiry e = new Enquiry();
                e.setId(rs.getInt("enquiry_id"));
                e.setFirstName(rs.getString("first_name"));
                e.setLastName(rs.getString("last_name"));
                e.setEmail(rs.getString("email"));
                e.setContactNo(rs.getString("contact_no"));
                e.setEnquiryDate(rs.getDate("enquiry_date"));
                e.setSubject(rs.getString("subject"));
                e.setMessage(rs.getString("message"));
                return e;
            }
        });
    }

    @Override
    public Enquiry getById(int id) throws ClassNotFoundException, SQLException {
        String sql="SELECT * FROM tbl_enquiries WHERE enquiry_id =?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id},new RowMapper<Enquiry>() {

            @Override
            public Enquiry mapRow(ResultSet rs, int i) throws SQLException {
                Enquiry e = new Enquiry();
                e.setId(rs.getInt("enquiry_id"));
                e.setFirstName(rs.getString("first_name"));
                e.setLastName(rs.getString("last_name"));
                e.setEmail(rs.getString("email"));
                e.setContactNo(rs.getString("contact_no"));
                e.setEnquiryDate(rs.getDate("enquiry_date"));
                e.setSubject(rs.getString("subject"));
                e.setMessage(rs.getString("message"));
                return e;
            }
        });
    }

    @Override
    public int delete(int id) throws SQLException, ClassNotFoundException {
         String sql = "DELETE FROM tbl_enquiries WHERE enquiry_id=?";
        return jdbcTemplate.update(sql,new Object[]{id});
    }

    @Override
    public int update(Enquiry en) throws SQLException, ClassNotFoundException {
        String sql = "UPDATE tbl_enquiries SET first_name=?,last_name=?,email=?,contact_no=?,subject=?,message=? WHERE enquiry_id=?";
        return jdbcTemplate.update(sql, new Object[]{
            en.getFirstName(),
            en.getLastName(),
            en.getEmail(),
            en.getContactNo(),
            en.getSubject(),
            en.getMessage(),
            en.getId()
        });
    }
    
}
