<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<!-- jQuery library --> 
<!-- 통신받을 거기 때문에 ajax로 변경해줄것! -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
	footer {
    width: 100%;
    position: absolute;  
    bottom: 0;
    left: 0;
	}
</style>
</head>
<body>
	<nav class="navbar bg-info navbar-dark">
	  <!-- Brand -->
	  <a class="navbar-brand" href="/">블로그</a>
	
	  <!-- Toggler/collapsibe Button -->
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <!-- Navbar links -->
	  <div class="collapse navbar-collapse" id="collapsibleNavbar">
	    <ul class="navbar-nav">
	    <c:choose>
	    		<c:when test="${empty sessionScope.principal}">
	    			<li class="nav-item">
				       <a class="nav-link" href="/login">로그인</a>
				    </li>
				    <li class="nav-item">
				       <a class="nav-link" href="/join">회원가입</a>
				    </li>
	    		</c:when>
	    		<c:otherwise>
	    			<li class="nav-item">
				       <a class="nav-link" href="/board/saveForm">글쓰기</a>
				     </li>
				     <li class="nav-item">
				       <a class="nav-link" href="/board/updateForm">로그아웃</a>
				     </li>
	    		</c:otherwise>
	    	
	    	</c:choose>
	      
	    </ul>
	  </div>
	</nav>