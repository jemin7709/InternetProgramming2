<%@page import="javax.websocket.Session"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.List"%>
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
String history= "The guessed history: ";
%>
<script type="text/javascript">
function delclick(){
	<%
	session.removeAttribute("history");
	%>
}
</script>
<h2>Guess a Number</h2>
Guess a number in [0, 10]<br>
<form action="3-1.jsp">
<input type="text" name="num" value=""><br>
<input type="submit" value="guess"><br>
<input type="reset" value="reset the game" onclick="delclick();location.href='3-2.jsp';">

</form>
<%
String hint = "";
String result = (String) request.getAttribute("result");
String num = (String) request.getAttribute("num");

if(result!= null){
	history += num;
	session.setAttribute("history", history);
	out.print(result + "<br>");
	out.print(history);
}
else{
	out.print(hint + "<br>");
	out.print(history);
}
%>
</body>
</html>