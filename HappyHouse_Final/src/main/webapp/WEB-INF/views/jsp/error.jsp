<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Happy House</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/assets/css/main.css" />
</head>
<body style="background-color: #f2f2f2; color: #4d4d4d;" >
	<c:if test="${empty user}">
		<div class="navi" align="right">
			<ul class="nav" style="float: right">
			<li class="nav-item"><a class="nav-link"
					href="${root}/board.do?action=boardMain">공지사항</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${root}/jsp/signup.jsp">회원가입</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${root}/jsp/login.jsp">로그인</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${root}/house.do?action=SEARCH&searchField=ALL&check=1">처음으로</a></li>
			</ul>
		</div>
	</c:if>
	<c:if test="${not empty user}">
		<div class="navi" align="right">
			<ul class="nav" style="float: right">
			<li class="nav-item"><a class="nav-link"
					href="${root}/board.do?action=boardMain">공지사항</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${root}/house.do?action=INTEREST">관심지역</a></li>
				<li class="nav-item"> <a href="#" class="nav-link" data-toggle="modal" data-target="#myModal">관심지역추가</a></li>
				
			<c:if test="${not empty admin}">
				<li class="nav-item"><a class="nav-link"
					href="${root}/main.do?action=list">회원관리</a></li>
			</c:if>
				<li class="nav-item"><a class="nav-link"
					href="${root}/user.do?action=link">정보수정</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${root}/user.do?action=logout">로그아웃</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${root}/house.do?action=SEARCH&searchField=ALL&check=1">처음으로</a></li>
			</ul>
		</div>
	</c:if>
	<p></p>
	<div class="jumbotron" style="cursor:pointer">
		<h1>Happy House</h1>
		<p>여러분의 행복한 집을 찾아주는 서비스입니다.</p>
	</div>
	<p></p>
	<div class="img" style="right: clear;" align="center">
		<img src="<c:url value='/img/img13.jpg'/>" width="100%" height="300" style="opacity: 0.7">
	</div>
	<p></p>
	<p></p>
	<p></p>
	<p></p>
<div class="container">
  <div class="jumbotron">
    <h1>처리중 에러가 발생했습니다.</h1>      
    <p>${msg}</p>
  </div>  
  <p><a href="${root}/">메인으로 가기</a></p>
</div>
</body>
</html>