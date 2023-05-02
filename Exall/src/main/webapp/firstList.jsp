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
				String Dept_code = "";
				switch (dto.getDept_code()) {
				case "10": Dept_code = "전자과"; break;
				case "20": Dept_code = "정통과"; break;
				case "30": Dept_code = "소프트과"; break;
				case "40": Dept_code = "바이오과"; break;
				case "50": Dept_code = "생명과"; break;
				case "60": Dept_code = "도제반"; break;
				case "70": Dept_code = "취업준비반"; break;
				case "80": Dept_code = "기능반"; break;
				case "90": Dept_code = "기타"; break;
				
				}
				
				String Grade = "";
				switch (dto.getGrade()) {
				case "1" : Grade = "학생"; break;
				case "2" : Grade = "부반장"; break;
				case "3" : Grade = "반장"; break;
				case "4" : Grade = "선생님"; break;
				}
		%>
			<tr>
				<td><a href="./update.jsp?test=<%=dto.getStudent_no()%>"><%=dto.getStudent_no()%></a></td>
				<td><%=dto.getStudent_name() %></td>
				<td><%=Dept_code%></td>
				<td><%=dto.getHire_date() %></td>
				<td>$\<%=Grade %></td>
			</tr>
		<% 
			} 
		%>
		</tbody>
	</table>
</section>	
<%@ include file="./footer.jsp" %>