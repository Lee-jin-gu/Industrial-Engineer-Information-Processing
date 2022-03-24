<%@page import="java.sql.*"
import="DBPKG.DB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
table{
margin: auto;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>상품별 매출 현황</h2>
	<table border="1">
		<thead>
			<tr>
				<th>피자 코드</th>
				<th>피자 명</th>
				<th>총매출액</th>
			</tr>
		</thead>
		<tbody>
			<%
			{
				Connection con4 = DB.getConnection();
				PreparedStatement pstmt4 = con4.prepareStatement
						("select p.pcode, pname, '\\' || to_char(sum(cost*amount), '999,999,999') from tbl_pizza_01 p, tbl_salelist_01 sl where p.pcode = sl.pcode group by p.pcode, pname order by sum(cost* amount) desc");
				ResultSet rs4 = pstmt4.executeQuery();
				
				while (rs4.next()){
					%>
					<tr>
						<td><%=rs4.getString(1) %></td>
						<td><%=rs4.getString(2) %></td>
						<td><%=rs4.getString(3) %></td>
					</tr>
				<%
				}
			}
			%>
		</tbody>
	</table>
</body>
</html>