
<%@page import="code.microsystem.connection.DAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
String email=request.getParameter("uemail");
String sql="select * from signup where email=?";
try
{
c=DAO.geConnection();
ps=c.prepareStatement(sql);
ps.setString(1, email);
ResultSet r=ps.executeQuery();
if(r.next())
{
session.setAttribute("email", email);
RequestDispatcher rd=request.getRequestDispatcher("fpass2.jsp");
rd.include(request, response);
}
else
{
out.print("<script>alert('fail');</script");
RequestDispatcher rd=request.getRequestDispatcher("fpass1.jsp");
rd.include(request, response);
}

}catch(Exception e)
{
out.print(e);	
}
%>
</body>
</html>