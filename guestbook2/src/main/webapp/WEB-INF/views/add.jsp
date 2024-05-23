<%@page import="guestbook.dao.GuestbookDao"%>
<%@page import="guestbook.vo.GuestbookVo"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String contents = request.getParameter("contents");
	System.out.println(contents);
	
	//Date today = new Date();
	//SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	//String dateString = date.format(today);
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContents(contents);
	//vo.setDate(dateString);
	
	new GuestbookDao().insert(vo);
	
	response.sendRedirect("/guestbook1");
%>