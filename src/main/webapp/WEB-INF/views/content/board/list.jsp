<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!-- list.jsp -->
<table>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>날짜</th>
		<th>이름</th>
	</tr>
	<c:forEach items="${list}" var="dto">
	<tr>
		<td>${dto.seq}</td>
		<td>
			<a href="/project/board/view?seq=${dto.seq}">${dto.subject}</a>
		</td>
		<td>${dto.regdate}</td>
		<td>${dto.udto.name}</td>
	</tr>
	</c:forEach>
</table>

<div>
	<button type="button" onclick="location.href='/project/board/add';">글쓰기</button>
</div>
