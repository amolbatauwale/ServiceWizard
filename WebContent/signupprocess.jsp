<%@page import="code.microsystem.dao.Signupdao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="obj" class="code.microsystem.bean.Signupbean"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<%
int status=Signupdao.register(obj);
if(status>0)
{
	out.print("<script>alert('Succesfully register');</script>");	
	RequestDispatcher rd=request.getRequestDispatcher("loginuser.jsp");
	rd.include(request, response);	
}
else
{
	out.print("<script>alert( 'mobile&email alredy register');</script>");
	RequestDispatcher rdd=request.getRequestDispatcher("signup.jsp");
			rdd.include(request, response);
}

%>
</body>
</html>