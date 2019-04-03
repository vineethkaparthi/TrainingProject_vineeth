package com.tadigital.customer.service;

import com.tadigital.ecommerce.customer.dao.CustomerDao;
import com.tadigital.ecommerce.customer.entity.Customer;

public class CustomerService {
	CustomerDao cd=new CustomerDao();

	

	public boolean registerCustomer(Customer c) {
		boolean status=cd.insertCustomer(c);
		return status;
	}

}
