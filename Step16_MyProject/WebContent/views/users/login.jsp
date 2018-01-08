<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>

<c:choose>
	<c:when test="${not empty id }">
		<p><strong>${id }</strong>회원님 로그인 되었습니다.</p>
	<a href="${url }">확인</a>
	</c:when>
	<c:otherwise>
		<p>아이디 혹은 비밀 번호가 틀려요</p>
	<a href="login_form.jsp?url=${url }">로그인 폼으로 돌아가기</a>
	</c:otherwise>
</c:choose>
</body>
</html>