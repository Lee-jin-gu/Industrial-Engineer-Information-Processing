<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
    import="DBPKG.DB"%>
    
<%
	String saleno = request.getParameter("saleno");
	String scode = request.getParameter("scode");
	String saledate = request.getParameter("saledate");
	String pcode = request.getParameter("pcode");
	String amount = request.getParameter("amount");
	
	{
		Connection con = DB.getConnection();
		PreparedStatement pstmt = con.prepareStatement(String.format("insert into TBL_SALELIST_01 values(%s, '%s', '%s', '%s', %s)", saleno, scode, saledate, pcode, amount));
		pstmt.executeQuery();
	}
%>
<script>
	location.href = '../index.jsp?section=2';
</script>