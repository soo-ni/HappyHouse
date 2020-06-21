<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	
<html>
<head>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- <link rel="stylesheet" type="text/css" href="/css/logo.css"> -->
<style>
a.navHeader{
  font-size:20px;
}
a{
	height:50px;
}

</style>
</head>
<body>


		<!-- Header -->
			<header id="header">
				<div class="inner">
				
<!-- 					<a href="index.html" class="logo"><strong>Projection</strong> by TEMPLATED</a> -->
					<nav id="nav">
					  <a  class="navHeader" href="${root}/" style="fontsize:20px;">메인으로</a>
                       <a class="navHeader" href="${root}/mapPage">부동산</a>
 		               <a class="navHeader" href="${root}/sfc/board/index.html">공지사항</a>
 		                <c:if test="${empty user}">
			       <a class="navHeader" href="${root}/signupPage">회원가입</a>
	 			   <a class="navHeader" href="${root}/loginPage">로그인</a>
	             </c:if>
	            <c:if test="${not empty user}">
		
			<a class="navHeader" href="${root}/sfc/qna/qna.html">QnA</a>
				
			<c:if test="${not empty admin}">
				<a class="navHeader" href="${root}/userList">회원관리</a>
			</c:if>
				<a class="navHeader" href="${root}/myPage">마이페이지</a>
				<a class="navHeader" href="${root}/user/logout">로그아웃</a>
	
	</c:if>
						
					</nav>
			<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>
<!-- Banner -->
<section id="banner">
				<h1>Happy House</h1>
				<p>Find your dream house</p>
			</section>
			<!-- <section id="banner">
				<div class="inner">
					<header>
						<h1>Happy House</h1>
					</header>

					<div class="flex ">

						<div>
							<span class="icon fa-car"></span>
							<h3>Aliquam</h3>
							<p>Suspendisse amet ullamco</p>
						</div>

						<div>
							<span class="icon fa-camera"></span>
							<h3>Elementum</h3>
							<p>Class aptent taciti ad litora</p>
						</div>

						<div>
							<span class="icon fa-bug"></span>
							<h3>Ultrices</h3>
							<p>Nulla vitae mauris non felis</p>
						</div>

					</div> -->
<!-- 
					<footer>
						<a href="#" class="button">Get Started</a>
					</footer>
				</div>
			</section> -->
	

<p></p>	
<p></p>	
<p></p>	
<p></p>	

	<script>
		$(".jumbotron").click(function(){
			location.href="${root}/";
		});
		
		
		</script>
		
		<!-- Scripts -->
		<script src="/assets/js/jquery.min.js"></script>
		<script src="/assets/js/skel.min.js"></script>
		<script src="/assets/js/util.js"></script>
		<script src="/assets/js/main.js"></script>
</body>
</html>