<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// post 방식만 엔코딩
	request.setCharacterEncoding("utf-8");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String birth = request.getParameter("birth");
	String gender = request.getParameter("gender");
	String profile = request.getParameter("profile");
	String[] hobbies = request.getParameterValues("hobby");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=email %>
	<br>
	<%=password %>
	<br>
	<%=birth %>
	<br>
	<%=gender %>
	<br>
	
	<p>
	<%=profile %>
	</p>
	
	<% 
		for(String hobby:hobbies){
		
	%>
		<span><%=hobby %></span>
	<%
		}	
	%>
	
	<!--  이렇게 변경된다 JSTL, EL 에서
	<forEach var="hobby">
		<span>${hobby }</span>
	</forEach>
	-->
</body>
</html>