package com.sep.login.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import com.sep.login.bean.LoginBean;
import com.sep.login.bean.SignupBean;


public class DBConnection {
	
//    public boolean validate(LoginBean loginBean) throws ClassNotFoundException {
//        boolean status = false;
//
//        Class.forName("com.mysql.jdbc.Driver");
//
//        try (Connection connection = 		DriverManager.getConnection("jdbc:mysql://localhost:3306/sharing_economy_platform", "root", "MySQLPassword");
//
//            PreparedStatement preparedStatement = connection.prepareStatement("select * from admin_credentials where userid = ? and password = ? ")) {
//            preparedStatement.setString(1, loginBean.getUsername());
//            preparedStatement.setString(2, loginBean.getPassword());
//
//            ResultSet rs = preparedStatement.executeQuery();
//            status = rs.next();
//
//        } catch (SQLException e) {
//            // process sql exception
//            printSQLException(e);
//        }
//        return status;
//    }

	
	public Connection connection;
	public PreparedStatement loginUser, signupUser;
	public ResultSet rs;
	
	
	public boolean validateAdmin(LoginBean loginBean) throws ClassNotFoundException {
        boolean status = false;
        try {
	        Class.forName("com.mysql.jdbc.Driver");
	
	        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sharing_economy_platform?useSSL=false", "root", "MySQLPassword");

            loginUser = connection.prepareStatement("select * from admin_credentials where userCategory = ? and userId = ? and password = ? "); 
        	loginUser.setString(1, loginBean.getUserCategory());
        	loginUser.setString(2, loginBean.getUserId());
        	loginUser.setString(3, loginBean.getPassword());

            ResultSet rs = loginUser.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return status;
    }
	
	
    public boolean validateUser(LoginBean loginBean) throws ClassNotFoundException {
        boolean status = false;
        
        try {
	        Class.forName("com.mysql.jdbc.Driver");
	
	        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sharing_economy_platform?useSSL=false", "root", "MySQLPassword");

            loginUser = connection.prepareStatement("select * from users where user_category = ? and userId = ? and password = ? "); 
        	loginUser.setString(1, loginBean.getUserCategory());
        	loginUser.setString(2, loginBean.getUserId());
        	loginUser.setString(3, loginBean.getPassword());

            System.out.println(loginUser);
            ResultSet rs = loginUser.executeQuery();
            status = rs.next();
           

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return status;
    }

	public int insertUser(SignupBean signupBean) throws ClassNotFoundException {
		int res = 0;
    	try {
	        Class.forName("com.mysql.jdbc.Driver");
	
	        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sharing_economy_platform", "root", "MySQLPassword");

            signupUser = connection.prepareStatement("INSERT INTO sharing_economy_platform.users (user_category, f_name, l_name, dob, gender, phone, address, city, state, zip, email, userId, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);"); 
            
        	signupUser.setString(1, signupBean.getUserCategory());
        	signupUser.setString(2, signupBean.getFirstName());
        	signupUser.setString(3, signupBean.getLastName());
        	signupUser.setString(4, signupBean.getDob());
        	signupUser.setString(5, signupBean.getGender());
        	signupUser.setString(6, signupBean.getPhone());
        	signupUser.setString(7, signupBean.getAddress());
        	signupUser.setString(8, signupBean.getCity());
        	signupUser.setString(9, signupBean.getState());
        	signupUser.setString(10, signupBean.getZip());
        	signupUser.setString(11, signupBean.getEmailId());
        	signupUser.setString(12, signupBean.getUserId());
        	signupUser.setString(13, signupBean.getPassword());

            System.out.println(signupUser);
            res = signupUser.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return res;

	}
	
	
    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
