package com.tadigital.servlet.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.customer.entity.*;
import com.tadigital.customer.service.*;

@WebServlet("/login")
public class CustomerLoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("Loginform.html");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("f1");
		String password = req.getParameter("f2");
		
		Customer customer = new Customer();
		customer.setEmail(email);
		customer.setPassword(password);
		CustomerService customerService = new CustomerService();
		boolean status = customerService.loginCustomer(customer);	
		if(status) {
			HttpSession ses = req.getSession();
			ses.setAttribute("log", "Y");
			RequestDispatcher rd = req.getRequestDispatcher("SignInSignupform.jsp");
			rd.forward(req, resp);
		} else {
			HttpSession ses = req.getSession();
			ses.setAttribute("log", "N");
			RequestDispatcher rd = req.getRequestDispatcher("SignInSignupform.jsp");
			rd.forward(req, resp);
		}
	}
}