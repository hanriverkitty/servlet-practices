<%@page import="guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String no = request.getParameter("no");
	Long no1 = Long.parseLong(no);
	String password = request.getParameter("password");
	int result = new GuestbookDao().deleteByNo(no1, password);
	if (result==1) response.sendRedirect("/guestbook1");
	else response.sendRedirect("/guestbook1/passwordfail.jsp");
%>
