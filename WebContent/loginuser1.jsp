<%@page import="code.microsystem.connection.DAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection c;
PreparedStatement ps;
response.setContentType("text/html");
String n=request.getParameter("username");
String p=request.getParameter("pass");
String sql="select * from Signup where name=? and password=?";
try
{
	c=DAO.geConnection();
	ps=c.prepareStatement(sql);
	ps.setString(1, n);
	ps.setString(2, p);
	ResultSet res=ps.executeQuery();
	if(res.next())
	{
		out.println("<script>alert('Login Success');</script>");
		 session=request.getSession();
		session.setAttribute("username", n);
		RequestDispatcher r=request.getRequestDispatcher("UserHomepage.jsp");
		r.include(request, response);
	}
	else
	{
		out.println("<script>alert('Login fail');</script>");
		RequestDispatcher rd=request.getRequestDispatcher("loginuser.jsp");
		rd.include(request, response);
	}
}catch(Exception e)
{
	out.println(e);
}
%>

</body>
</html>