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
int ans = 7;
int num = Integer.parseInt(request.getParameter("num"));
String result = "";
if(ans == num){
	result = "Very good, you are right.";
}
else if(ans > num){
	result = "Try again and input a lager number";
}
else if(ans < num){
	result = "Try again and input a smaller number";
}
request.setAttribute("result", result);
request.setAttribute("num", Integer.toString(num));
RequestDispatcher dispatcher = request.getRequestDispatcher("3-2.jsp");
dispatcher.forward(request, response);
%>
</body>
</html>