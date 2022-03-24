<%@page import="java.sql.*"
import="DBPKG.DB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>매출전표등록</h2>
	<form action="./action/add.jsp" onsubmit = "return check()">
		<table border = "1">
			<tr>
				<th>매출전표번호</th>
				<td><input name = "saleno"></td>
			</tr>
			<tr>
				<th>지점코드</th>
				<td><input name = "scode"></td>
			</tr>
			<tr>
				<th>판매일자</th>
				<td><input name = "saledate"></td>
			</tr>
			<tr>
				<th>피자코드</th>
				<td>
					<select name = "pcode">
						<option value = "">피자선택</option>
						<%
						{
							Connection con1 = DB.getConnection();
							PreparedStatement pstmt1 = con1.prepareStatement("select pcode, pname from TBL_PIZZA_01");
							ResultSet rs1 = pstmt1.executeQuery();
							
							while (rs1.next()) {
								%>
								<option value = "<%=rs1.getString(1) %>">[<%=rs1.getString(1) %>] <%=rs1.getString(2) %></option>
								<%
							}
						}
						%>
					</select>
				</td>
			</tr>
			<tr>
				<th>판매수량</th>
				<td><input name = "amount"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center">
					<button type="submit">전표등록</button>
					<button type="button" onclick="formReset()">다시쓰기</button>
				</td>
			</tr>
		</table>
	</form>
</body>
	<script>
		const saleno = document.querySelector('input[name = saleno]')
		const scode = document.querySelector('input[name = scode]')
		const saledate = document.querySelector('input[name = saledate]')
		const pcode = document.querySelector('select[name = pcode]')
		const amount = document.querySelector('input[name = amount]')
		
		function check() {
			
			if (!saleno.value) {
				alert("매출전표번호가 입력되지 않았습니다.");
				saleno.focus();
				return false;
			}
			if (!scode.value) {
				alert("지점코드가 입력되지 않았습니다.");
				scode.focus();
				return false;
			}
			if (!saledate.value) {
				alert("판매일자가 입력되지 않았습니다.");
				saledate.focus();
				return false;
			}
			if (!pcode.value) {
				alert("피자코드가 입력되지 않았습니다.");
				return false;
			}
			if (!amount.value) {
				alert("판매수량이 입력되지 않았습니다.");
				amount.focus();
				return false;
			}
			alert("매출전표가 등록되었습니다.");
			return true;
		}
		
		function formReset() {
			alert("정보를 지우고 다시 입력합니다.");
			
			saleno.value = '';
			scode.value = '';
			saledate.value = '';
			pcode.value = '';
			amount.value = '';
		}
	</script>
</html>