<%@page import="java.io.PrintWriter"%>
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

response.setContentType("text/html");
PrintWriter ptr=response.getWriter();
String n=request.getParameter("uname");
String p=request.getParameter("upass");
if(n.equals("code.microsystem") && p.equals("admin123456"))
{
	 session=request.getSession();
		session.setAttribute("uname", n);
	ptr.println("<script>alert('Admin Login Succesful');</script>");
	RequestDispatcher rd=request.getRequestDispatcher("UserHomepage.jsp");
	rd.include(request, response);
	
	

}
else
{
	out.print("<script>alert('user name or password error!');</script>");
	RequestDispatcher re=request.getRequestDispatcher("adminlogin.jsp");
	re.include(request, response);
}
ptr.close();


%>

</body>
</html>