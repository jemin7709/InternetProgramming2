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
<%! 
int count = 0;
Date createTime = new Date();
%>
<%
String id = session.getId();
Date time = new Date();
session.setAttribute("count", Integer.toString(++count));
%>
<h2>Session track</h2>
<table border="1">
	<tr>
		<th>Session info</th>
		<th>detail</th>
	</tr>
	<tr>
		<td>session id</td>
		<td><%=id%></td>
	</tr>
	<tr>
		<td>Creation time</td>
		<td><%=createTime%></td>
	</tr>
	<tr>
		<td>Last access time</td>
		<td><%=time%></td>
	</tr>
	<tr>
		<td>Access Count</td>
		<td><%=count%></td>
	</tr>
</table>
</body>
</html>