<%@page import="test.member.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/member/list.jsp</title>
<link rel="stylesheet" href="./css/bootstrap.css" />
</head>
<body>
<a href="insertform.do">회원 정보 추가</a>
<p>회원 목록입니다.</p>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>주소</th>
			<th>삭제</th>
			<th>수정</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="tmp" items="${member }">
		<tr>
			<td>${tmp.getNum }</td>
			<td>${tmp.getName }</td>
			<td>%{tmp.getAddr]</td>
			<td><a href="delete.do?num=${tmp.getNum() }">삭제</a></td>
			<td><a href="updateform.do?num=${tmp.getNum() }">수정</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>