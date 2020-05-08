package com.sep.login.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sep.login.bean.LoginBean;
import com.sep.login.database.DBConnection;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private HttpSession session;
    private DBConnection dBConnection;

    public void init() {
        dBConnection = new DBConnection();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    	String userCategory = request.getParameter("userCategory");
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");
        LoginBean loginBean = new LoginBean();
        loginBean.setUserCategory(userCategory);
        loginBean.setUserId(userId);
        loginBean.setPassword(password);
//        System.out.println(userCategory+"\n"+userId+"\n"+password);

        try {
        	if(userCategory.equals("Admin")) {
	            if (dBConnection.validateAdmin(loginBean)) {
	                session = request.getSession();
	                session.setAttribute("userId", userId);
	                response.sendRedirect("loginSuccess.jsp");
	            } else {
	            	if(userId.equals("")) {
	            		request.getSession(false).setAttribute("loginErrorMessage", "User ID not present");
//		                request.getSession().removeAttribute("loginErrorMessage");
		                response.sendRedirect("login.jsp");
	            	} else {
	            		request.getSession(false).setAttribute("loginErrorMessage", "Invalid Credentials!");
		                response.sendRedirect("login.jsp");
	            	}
	            }
        	}else if(userCategory.equals("Vendor")){
        		if (dBConnection.validateUser(loginBean)) {
	                session = request.getSession(false);
	                session.setAttribute("userId", userId);
	                response.sendRedirect("loginSuccess.jsp");
	            } else {
	                request.getSession(false).setAttribute("loginErrorMessage", "Invalid Credentials!");
	                response.sendRedirect("login.jsp");
	            }
        	}else if(userCategory.equals("Customer")){
        		if (dBConnection.validateUser(loginBean)) {
	                session = request.getSession(false);
	                session.setAttribute("userId", userId);
	                response.sendRedirect("loginSuccess.jsp");
	            } else {
	            	System.out.println("Customer-WRONG");
	                request.getSession(false).setAttribute("loginErrorMessage", "Invalid Credentials!");
	                response.sendRedirect("login.jsp");
	            }
        	}
        	
        	
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}