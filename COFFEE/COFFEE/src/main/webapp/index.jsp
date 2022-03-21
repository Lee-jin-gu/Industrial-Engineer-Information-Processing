<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
header{
position: fixed;
width : 100%;
left : 0px;
top : 0;
height: 100px;
line-height: 100px;
background-color: lightgray;
text-align: center;
font-size: 30px;
}

nav{
position: fixed;
width : 100%;
left : 0px;
top : 100px;
line-height: 50px;
height: 50px;
background-color: silver;
}
nav>a{
text-decoration: none;
color : black;
margin-left: 20px;
}

section{
position: fixed;
width : 100%;
left : 0px;
top : 150px;
}

footer{
position: fixed;
width : 100%;
left : 0px;
bottom : 0;
height: 50px;
line-height: 50px;
background-color: gray;
color : white;
text-align: center;
}


</style>
</head>
<body>


<header>
<b>매장별 커피 판매관리 Ver 1.0</b>
</header>

<nav>
<a href="index.jsp?section=1">판매등록</a>
<a href="index.jsp?section=2">판매현황</a>
<a href="index.jsp?section=3">매장별판매액</a>
<a href="index.jsp?section=4">상품별판매액</a>
<a href="index.jsp">홈으로</a>
</nav>

<section>
<%
	String section = request.getParameter("section");
	if(section == null ) section = "";
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
	case "4":
		%><%@ include file = "./page/4.jsp" %><%
		break;
	default:
		%><%@ include file = "./page/home.jsp" %><%
	}
%>
</section>


<footer>
Copyright @ 2018 All right reserved Hanyang High School
</footer>
</body>
</html>