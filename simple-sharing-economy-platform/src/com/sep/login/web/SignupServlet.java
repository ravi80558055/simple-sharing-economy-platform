package com.sep.login.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sep.login.bean.SignupBean;
import com.sep.login.database.DBConnection;


@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DBConnection dBConnection;

    public void init() {
        dBConnection = new DBConnection();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
/*
        String userCategory = request.getParameter("userCategory");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zip = request.getParameter("zip");
        String emailId = request.getParameter("emailId");
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");
        
        if(userCategory=="" || firstName=="" || lastName=="" || gender=="" || phone=="" || address=="" || city=="" || state=="" || zip=="" || emailId=="" || userId=="" || password=="") {
        	request.getSession().setAttribute("signupErrorMessage", "Please update the highlighted mandatory fields.");
        	response.sendRedirect("signup.jsp");
        }
*/       
        SignupBean signupBean = new SignupBean();
        signupBean.setUserCategory(request.getParameter("userCategory"));
        signupBean.setFirstName(request.getParameter("firstName"));
        signupBean.setLastName(request.getParameter("lastName"));
        signupBean.setDob(request.getParameter("dob"));
        signupBean.setGender(request.getParameter("gender"));
        signupBean.setPhone(request.getParameter("phone"));
        signupBean.setAddress(request.getParameter("address"));
        signupBean.setCity(request.getParameter("city"));
        signupBean.setState(request.getParameter("state"));
        signupBean.setZip(request.getParameter("zip"));
        signupBean.setEmailId(request.getParameter("emailId"));
        signupBean.setUserId(request.getParameter("userId"));
        signupBean.setPassword(request.getParameter("password"));

        try {
            if (dBConnection.insertUser(signupBean) != 0) {
            	System.out.println("success");
                request.getSession().setAttribute("successMessage", "Your details are submitted successfully.");
                response.sendRedirect("login.jsp");
            } else {
                request.getSession().setAttribute("signupErrorMessage", "Please update the highlighted mandatory fields.");;
                System.out.println("Opertn. Failed");
                response.sendRedirect("signup.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
}