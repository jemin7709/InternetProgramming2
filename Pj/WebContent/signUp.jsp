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
	request.setCharacterEncoding("utf-8");
%>
	<h2>회원 정보 페이지입니다</h2>
<%
	String name = request.getParameter("name");
	String number = request.getParameter("number");
	String sex = request.getParameter("sex");
	String country = request.getParameter("country");
	if (sex.equals("man")) {
		sex = "남자";
	} else {
		sex = "여자";
	}
	String hobby[] = request.getParameterValues("hobby");
%>
	성명: <%=name %><p>
	전화번호: <%=number %><p>
	성별: <%=sex %><p>
	국적: <%=country %><p>
	취미: <% 
			if(hobby!=null){
				for(String h:hobby){
					out.print(h+" ");
				}
			}
		 %><p>
	
</body>
</html>