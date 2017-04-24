<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- /WEB-INF/views/member/memberList.jsp -->
<h2>회원 목록</h2>
<table border="1">
	<tr>
		<th>아이디</th>
		<th>이 름</th>
		<th>email</th>
		<th>회원가입일자</th>
	</tr>
<c:forEach var="row" items="${list}">
	<tr>
		<td>${row.userid}</td>
		<td><a href="/web03//member/memberInfo?userid=${row.userid}">${row.username}</a></td>
		<td>${row.email}</td>
		<td>${row.regdate}</td>
	</tr>
</c:forEach>
</table>

</body>
</html>