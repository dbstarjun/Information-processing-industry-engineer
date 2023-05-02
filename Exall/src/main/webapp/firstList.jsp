<%@ page import="dao.MainDao"  %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.firstListDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<%
	MainDao dao = new MainDao();
	ArrayList<firstListDto> list = dao.getstlist();
%>
<section>
	<table border="1">
		<thead>
 			<tr>
				<th>학번</th>
				<th>학생이름</th>
				<th>학과</th>
				<th>입학일</th>
				<th>학년</th>
			</tr>
		</thead>
		<tbody>
		<%
			for(firstListDto dto : list) {
		%>
			<tr>
				<td><a href="./update.jsp?<%=dto.getStudent_no()%>"><%=dto.getStudent_no()%></a></td>
				<td><%=dto.getStudent_name() %></td>
				<td><%=dto.getDept_code() %></td>
				<td><%=dto.getHire_date() %></td>
				<td>\<%=dto.getGrade() %></td>
			</tr>
		<% 
			} 
		%>
		</tbody>
	</table>
</section>	
<%@ include file="./footer.jsp" %>