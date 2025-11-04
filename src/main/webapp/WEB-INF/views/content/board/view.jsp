<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>  

<!-- view.jsp -->
<table class="vertical">
	<tr>
		<th>번호</th>
		<td>${dto.seq}</td>
	</tr>
	<tr>
		<th>이름</th>
		<td>${dto.udto.name}(${dto.id})</td>
	</tr>
	<tr>
		<th>제목</th>
		<td>${dto.subject}</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>${dto.content}</td>
	</tr>
	<tr>
		<th>날짜</th>
		<td>${dto.regdate}</td>
	</tr>
</table>
<div>

	<%-- ${dto.id} : <sec:authentication property="principal.udto.id"/> --%>
	
	<sec:authentication property="principal.udto.id" var="id"/>
	
	<c:if test="${dto.id == id}">
	<button type="button" onclick="location.href='/project/board/edit?seq=${dto.seq}';">수정하기</button>
	<button type="button" onclick="del();">삭제하기</button>
	</c:if>
</div>

<script>
	function del() {
		
		if (confirm('삭제?')) {
			location.href='/project/board/del?seq=${dto.seq}';
		}
		
	}
</script>
