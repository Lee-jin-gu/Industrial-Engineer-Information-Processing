<%@page import="java.sql.*"
import="DBPKG.DB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
    margin-left:auto; 
    margin-right:auto;

}
h2{
    text-align: center;
}</style>
</head>
<body>

    <h2>지점별 매출 현황</h2>
    <table border="1">
        <thead>
            <tr>
                <th>지점 코드</th>
                <th>지점명</th>
                <th>총매출액</th>
            </tr>
        </thead>
        <tbody>
            <%
            {
                Connection con2 = DB.getConnection();
                PreparedStatement pstmt2 = con2.prepareStatement
                        ("SELECT S.scode, S.sname, to_char(sum(SL.amount*P.cost),'999,999,999') FROM tbl_SHOP_01 S, tbl_SALELIST_01 SL, tbl_PIZZA_01 P WHERE SL.scode = S.scode and P.pcode=SL.pcode GROUP BY S.scode, S.sname ORDER BY S.scode ASC");
                ResultSet rs2 = pstmt2.executeQuery();
                
                while (rs2.next()){
                    %>
                    <tr>
                        <td><%=rs2.getString(1) %></td>
                        <td><%=rs2.getString(2) %></td>
                        <td><%=rs2.getString(3) %></td>
                    </tr>
                <%
                }
            }
            %>
        </tbody>
    </table>
</body>
</html>