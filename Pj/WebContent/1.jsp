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
	request.setCharacterEncoding("UTF-8");
	String message = request.getParameter("message");
	int length = message.length();
	out.print("(Get the input message): " + message + "<br>");
	out.print("(The legth of the message): " + length + "<br>");
	for(int i=1;i<=length;i++){
		out.println(i);
		for(int j=0;j<i;j++){
			out.println("* ");
		}
		out.println("<br>");
	}
%>
</body>
</html>