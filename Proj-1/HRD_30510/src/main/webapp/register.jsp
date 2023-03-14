<%@page import="DAO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<% 
	MemberDAO dao = new MemberDAO();
	//int custno = dao.getMaxNo();
%>
<section>
	<h2>홈쇼핑 회원 등록</h2>
	
	<form action="registerProc.jsp" method="post" name="frm">
		<table border="1">
			<tr>
				<td>회원 번호(자동발생)</td>
				<td><input type="text" name="costno" readonly="readonly"></td>
			</tr>
			<tr>
				<td>회원성명</td>
				<td><input type="text" name="costname" ></td>
			</tr>
			<tr>
				<td>회원전화</td>
				<td><input type="text" name="phone" ></td>
			</tr>
			<tr>
				<td>통신사</td>
				<td>
					<input type="radio" name="address" value="SK"> SK
					<input type="radio" name="address" value="KT"> KT
					<input type="radio" name="address" value="LG"> LG
				</td>
			</tr>
			<tr>
				<td>가입일자</td>
				<td><input type="date" name="joindate" ></td>
			</tr>
			<tr>
				<td>고객 등급</td>
				<td><input type="text" name="grade" ></td>
			</tr>
			<tr>
				<td>도서코드 </td>
				<td><input type="text" name="city" ></td>
			</tr>
		</table>
	
	</form>
	
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>