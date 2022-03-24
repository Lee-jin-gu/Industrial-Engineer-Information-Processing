<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
header{
position: fixed;
width : 100%;
left : 0;
font-size: 25px;
text-align: center;
background-color: lightgray;
top : 0;
height: 100px;
line-height: 100px;
}

nav{
position: fixed;
width : 100%;
left : 0;
top : 100px;
height : 50px;
line-height : 50px;
background-color: gray;
}

nav > a{
text-decoration: none;
color : black;
padding-left: 10px;
}

section{
position: fixed;
width : 100%;
left : 0;
top : 150px;
height: 100%;
}

section > table{
margin: auto;
}

h2{
text-align: center;
}

footer{
position: fixed;
width : 100%;
left : 0;
bottom : 0px;
color : white;
background-color: black;
height: 50px;
line-height: 50px;
text-align: center;
}


</style>
<title>Insert title here</title>
</head>
<body>

<header>
<b>(과정평가형정보처리산업기사) 백신접종예약 프로그램 ver 2021-08</b>
</header>

<nav>
<a href="index.jsp?section=1">백신접종예약</a>
<a href="index.jsp?section=2">접종예약조회</a>
<a href="index.jsp?section=3">저종인원통계</a>
<a href="index.jsp">홈으로</a>
</nav>

<section>
<%
	String section = request.getParameter("section");
	if(section == null) section = "";
	
	switch(section){
	case "1":
		%><%@ include file = "./page/1.jsp" %><%
		break;
	case "2":
		%><%@ include file = "./page/2.jsp" %><%
		break;
	case "3":
		%><%@ include file = "./page/3.jsp" %><%
		break;
	default:
		%><%@ include file = "./page/home.jsp" %><%
		break;
	
		
	}
%>
</section>

<footer>
HRDKIREA Copyright @ 2021 All rights reserved. Human Resources Development Service of Korea.
</footer>


</body>
</html>