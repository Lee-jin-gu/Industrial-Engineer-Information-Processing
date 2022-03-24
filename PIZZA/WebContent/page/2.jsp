<%@page import="java.sql.*"
import="DBPKG.DB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
table{
margin: auto;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>통합매출현황조회</h2>
	<table border="1">
		<thead>
			<tr>
				<th>매출전표번호</th>
				<th>지점</th>
				<th>판매일자</th>
				<th>피자코드</th>
				<th>피자명</th>
				<th>판매수량</th>
				<th>매출액</th>
			</tr>
		</thead>
		<tbody>
			<%
			{
				Connection con2 = DB.getConnection();
				PreparedStatement pstmt2 = con2.prepareStatement
						("select saleno, s.scode ||'-'|| sname, to_char(saledate, 'yyyy-mm-dd'), p.pcode, pname, amount, '\\' || to_char(cost * amount, '999,999,999') from tbl_pizza_01 p, tbl_shop_01 s, tbl_salelist_01 sl where p.pcode = sl.pcode and s.scode = sl.scode order by saleno ASC");
				ResultSet rs2 = pstmt2.executeQuery();
				
				while (rs2.next()){
					%>
					<tr>
						<td><%=rs2.getString(1) %></td>
						<td><%=rs2.getString(2) %></td>
						<td><%=rs2.getString(3) %></td>
						<td><%=rs2.getString(4) %></td>
						<td><%=rs2.getString(5) %></td>
						<td><%=rs2.getString(6) %></td>
						<td><%=rs2.getString(7) %></td>
					</tr>
				<%
				}
			}
			%>
		</tbody>
	</table>
</body>
</html>