package com.sep.login.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.sep.login.database.DBConnection;
/*
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res){
		res.setContentType("text/html");
		PrintWriter out = null;
		try{
			out = res.getWriter();
			HttpSession hs = req.getSession(false);
			//getSession(false) gets the session if existe else returns NULL as the value.
			//getSession() gets the session if exists else create the new session.
			if(hs!=null){
				//hs!=null means session already exists
				hs.invalidate();
				//invalidate() mtd. is used to invalidate the existing session.
				res.sendRedirect("login.jsp");
			}else{
				req.getSession().setAttribute("errorMessage", "Please Login First!");
				hs.invalidate();
			}
		}catch(Exception e){
			out.print(e);
			out.close();
		}
	}
}
*/

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("session killed");
        HttpSession hs = request.getSession(false);
		//getSession(false) gets the session if existe else returns NULL as the value.
		//getSession() gets the session if exists else create the new session.
		if(hs!=null){
			//hs!=null means session already exist
			hs.invalidate();
			//invalidate() mtd. is used to invalidate the existing session.
			response.sendRedirect("login.jsp");
		}else{
			request.getSession().setAttribute("errorMessage", "Please Login First!");
			hs.invalidate();
		}
    }

}