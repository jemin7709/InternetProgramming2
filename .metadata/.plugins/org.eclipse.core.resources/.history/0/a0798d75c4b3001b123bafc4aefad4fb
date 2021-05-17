<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String food = request.getParameter("food");
		String name = (String)session.getAttribute("thename");
		String pwd = request.getParameter("pwd");
	%>
	Your Name is : <%=name %><br>
	Your favorite food is : <%=food %><br>
	Your password is : <%=pwd %><br>
	
	<form action="hidden.jsp" method="post" name="form1">
		<input type="hidden" name="time" value="<%=new Date()%>"><br>
		Hidden Test Name : <input type="text" name="name"><br>
		<input type="submit" name="submit" value="submit">
	</form>
</body>
</html>