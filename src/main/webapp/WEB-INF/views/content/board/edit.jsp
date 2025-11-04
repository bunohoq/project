<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!-- edit.jsp -->
<form method="POST" action="/project/board/editok">
<table class="vertical">
	<tr>
		<th>제목</th>
		<td><input type="text" name="subject" class="full" required value="${dto.subject}"></td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea name="content" class="full" required>${dto.content}</textarea></td>
	</tr>
</table>
<div>
	<button>글쓰기</button>
</div>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
<input type="hidden" name="seq" value="${dto.seq}">
</form>
