<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>session</title>
</head>
<body>
	<h2>session 예제</h2>
	<hr>
	<%
		if(session.isNew()){
			out.println("<script>alert('세션이 해제되어 다시 설정합니다.')</script>");
			session.setAttribute("login", "ok");
		}
	%>
	1. 세션ID : <%=session.getId() %><br>
	2. 세션 유지시간 : <%=session.getMaxInactiveInterval() %><br>
	3. login 세션의 설정값 : <%=session.getAttribute("login") %><br>
</body>
</html>