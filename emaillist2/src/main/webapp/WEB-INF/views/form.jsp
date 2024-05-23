<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메일 리스트 가입</h1>
	<p>
		메일 리스트에 가입하려면,<br>
		아래 항목을 기입하고 submit 버튼을 클릭하세요.
	</p>
	<!--  <%=request.getContextPath() %>/el?a=add 라고 쓰면 get 방식 -->
	<form action="<%=request.getContextPath() %>/el" method="post">
	<!-- url을 깔끔하게 하기 위해 post 방식 -->
	<input type = 'hidden' name='a' value='add'>
	    First name: <input type="text" name="fn" value="" ><br>
	    Last name: <input type="text" name="ln" value=""><br>
	    Email address: <input type="text" name="email" value=""><br>
	    <input type="submit" value="submit">
	</form>
	<br>
	<p>
	   <a href="<%=request.getContextPath() %>/el">리스트 가기</a>
	</p>
</body>
</html>