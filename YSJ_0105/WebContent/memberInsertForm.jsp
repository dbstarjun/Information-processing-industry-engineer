<%@page import="dao.MemberDao"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./header.jsp"%>
<%
	MemberDao dao = new MemberDao();
	int custno = dao.getMaxNO();
%>
<section>
	<div class="container">
		<h3 class="title">회원 등록</h3>
		<form action="/memberInsert" method="post" name="frm"
			onsubmit="return checkFrom()">
			<table>
				<tr>
					<td>회원번호</td>
					<td><input type="number" value="<%=custno%>" name="custno"
						readonly="readonly"></td>
				</tr>
				<tr>
					<td>회원성명</td>
					<td><input type="text" name="custname"></td>
				</tr>
				<tr>
					<td>회원전화</td>
					<td><input type="text" name="phone"></td>
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
					<td><input type="date" name="joindate"></td>
				</tr>
				<tr>
					<td>고객등급[A:vip, B:일반, C:직원]</td>
					<td><input type="text" name="grade"></td>
				</tr>
				<tr>
					<td>거주지역</td>
					<td><input type="text" name="city" placeholder="숫자 입력 _ 두 자리"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="등록">
						<a href="/memberList"><input type="button" value="조회"></a>
					</td>
				</tr>
			</table>
		</form>
	</div>
</section>

<script>
	function checkFrom() {
		if (document.frm.custname.value.trim() =="") {
			alert("회원 성명이 입력되지 않았습니다.");
			document.frm.custname.focus();
			return false;
		}
		if (document.frm.phone.value.trim() =="") {
			alert("회원 전화가 입력되지 않았습니다.");
			document.frm.phone.focus();
			return false;
		}
		if (document.frm.address.value.trim() =="") {
			alert("회원 주소가 입력되지 않았습니다.");
			document.frm.address.focus();
			return false;
		}
		if (document.frm.joindate.value.trim() =="") {
			alert("가입일자가 입력되지 않았습니다.");
			document.frm.joindate.focus();
			return false;
		}
		if (document.frm.grade.value.trim() =="") {
			alert("고객등급이 입력되지 않았습니다.");
			document.frm.grade.focus();
			return false;
		}
		if (document.frm.city.value.trim() =="") {
			alert("거주지역이 입력되지 않았습니다.");
			document.frm.city.focus();
			return false;
		}
		
		alert("회원 등록이 완료되었습니다.");
		return true;
	}
	
</script>

<%@ include file="./footer.jsp" %>