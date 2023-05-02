<%@ page import="dto.firstListDto" %>
<%@ page import="dao.MainDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<%
	MainDao dao = new MainDao();
	firstListDto dto = dao.ge
%>
<section>
<h2>조회/수정</h2>
<form action="" name="form" method="post">
<table border="1">
	<input type="text" name="" readonly="readonly" value="">
</table>
</section>
