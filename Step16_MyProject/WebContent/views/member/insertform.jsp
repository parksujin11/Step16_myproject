<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/member/insertform.jsp</title>
<link rel="stylesheet" href="../css/bootstrap.css" />
</head>
<body>
<h3>회원 추가 폼입니다.</h3>
<form action="insert.do" medhod="post">
	<div class="form-group">
	이름 <input type="text" name="name" />
	주소 <input type="text" name="addr" />
	</div>
	<button type="submit">추가</button>
</form>
</body>
</html>