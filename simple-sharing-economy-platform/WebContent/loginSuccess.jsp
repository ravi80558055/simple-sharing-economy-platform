<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.sep.login.database.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome | Sharing Economy Platform</title>
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if(session.getAttribute("userId")==null){
			response.sendRedirect("login.jsp");
		}
	%>
	 <div align="center">
	  <h1>Sharing Economy Platform</h1>
	  <h2>Welcome ${userId}</h2>
	  <form action="<%=request.getContextPath()%>/logout" method="get">
	  	<input type="submit" value="Logout">
	  </form>
	 </div>
</body>
</html>