<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  
  

<!-- index.jsp -->
<h2>시작페이지</h1>

<sec:authorize access="isAuthenticated()">
<div><sec:authentication property="principal.udto.id"/></div>
<div><sec:authentication property="principal.udto.id"/></div>

</sec:authorize>
	
