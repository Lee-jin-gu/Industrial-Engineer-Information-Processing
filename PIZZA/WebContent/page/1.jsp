<%@page import="java.sql.*" 
    import="DBPKG.DB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
h2{
text-align: center;
}
table{
margin: auto;
}
</style>
<title>Insert title here</title>
</head>
<body>
<h2>매출전표등록</h2>
<form>
	<table border="1">
		<tr>
			<th>매출전표등록</th>
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
					<option value ="">피자선택</option>
					<%
					{
						Connection con1 = DB.getConnection();
						PreparedStatement pstmt1 =con1.prepareStatement("select pcode, pname from TBL_pizza_01");
						ResultSet rs1 = pstmt1.executeQuery();
						
						while(rs1.next()){
							%>
							<option value="<%=rs1.getString(1)%>">
							[<%=rs1.getString(1)%>]<%=rs1.getString(2) %>
							</option>
							<%
						}
					}
					%>
				</select>
			</td>
		</tr>
	</table>
</form>
</body>
</html>