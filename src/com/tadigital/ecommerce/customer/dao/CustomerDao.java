package com.tadigital.ecommerce.customer.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.tadigital.ecommerce.customer.entity.Customer;

public class CustomerDao extends Dao {

	

	public boolean insertCustomer(Customer c) {
		boolean status = false;
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		try {
			String sql = "INSERT INTO customer(c_fname, c_lname,c_email, c_password) " +
						 "VALUES('" + c.getFirstName() + "', '" + c.getLastName() +
						 "', '" + c.getEmail() + "', '" + c.getPassword() + "')";
			
			int rows = stmt.executeUpdate(sql);
			if(rows != 0) {
				
				status = true;
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}
		
	
		return status;
	}
	
}
