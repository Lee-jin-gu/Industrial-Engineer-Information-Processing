<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>	
header{
position: fixed;
top : 0px;
left: 0px;
width : 100%;
height: 50px;
line-height: 50px;
text-align: center;
background-color: darkcyan;
font-size: 25px;
}
nav{
	position: fixed;
	top : 50px;
	width : 100%;
	height: 40px;
	line-height: 40px;
	background-color: seagreen;
	left: 0px;
}
nav> a{
text-decoration: none;
margin-left: 30px;
color: white;
}

section{
position: fixed;
top : 90px;
left: 0px;
width : 100%;
height: 100%;
background-color: wheat;
}
footer{
position: fixed;
bottom : 0px;
left: 0px;
height: 40px;
line-height: 40px;
width : 100%;
text-align: center;
background-color: darkcyan;
}
</style>
<body>
<header>
	<b>피자전문점 판매관리 프로그램 ver1.0</b>
</header>

<nav>
	<a href="index.jsp?section=1">매출전표등록</a>
	<a href="index.jsp?section=2">통합매출조회</a>
	<a href="index.jsp?section=3">지점별매출현황</a>
	<a href="index.jsp?section=4">상품별매출현황</a>
	<a href="index.jsp">홈으로</a>
</nav>

<section>
<%
	String section = request.getParameter("section");
	if(section == null) section ="";
	
	switch(section){
	case "1":
		%><%@ include file="./page/1.jsp" %><%
		break;
	case "2":
		%><%@ include file="./page/2.jsp" %><%
		break;
	case "3":
		%><%@ include file="./page/3.jsp" %><%
		break;
	case "4":
		%><%@ include file="./page/4.jsp" %><%
		break;
	default:
		%><%@ include file="./page/home.jsp" %><%
		break;
	}
%>
</section>
<footer>
	HREKOREA Copyright@2018 All rights reserved. Human Resource Development Service of Korea
</footer>
</body>
</html>