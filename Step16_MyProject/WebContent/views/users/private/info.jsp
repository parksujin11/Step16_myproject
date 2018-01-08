<%@page import="test.users.dto.UsersDto"%>
<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 페이지</title>
</head>
<body>
<h3>회원 가입된 개인 정보 입니다.</h3>
<table>
	<thead>
		<tr>
			<th>항목</th>
			<th>정보</th>
		</tr>
	</thead>
	<tbody>
			<td>${dto.id }</td>
			<td>${dto.pwd }</td>
			<td>${dto.email }</td>
	</tbody>
</table>
<a href="updateform.do">가입정보 수정</a>
<a href="javascript:deleteConfirm">회원 탈퇴</a>
<script>
	function deleteConfirm(){
		var isDelete=confirm("정말 탈퇴 하시겠습니까?");
		if(isDelete){
			location.href="delete.do";
		}
	}
</script>
</body>
</html>