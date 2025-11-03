<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- views > content > member > add.jsp -->
<h2>회원 가입</h2>

<form method="POST" action="/project/member/addok">	
<table class="vertical">
	<tr>
		<th>아이디</th>
		<td><input type="text" name="id" required></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="name" required></td>
	</tr>
	<tr>
		<th>암호</th>
		<td><input type="password" name="pw" required></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><input type="email" name="email" required></td>
	</tr>
	<tr>
		<th>나이</th>
		<td><input type="number" name="age" min="1" max="120" required></td>
	</tr>
</table>
<div>
	<button>가입하기</button>
</div>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
</form>

