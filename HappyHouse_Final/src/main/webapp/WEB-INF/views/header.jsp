<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	
<html>
<link rel="stylesheet" href="/assets/css/main.css" />
<head>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		
<style>
 #banner1 {
		padding: 8em 0 9em 0;
		background-image: url(../../images/happyhousenight4.jpg);
		background-size: cover;
		background-position: bottom;
		background-attachment: fixed;
		background-repeat: no-repeat;
		text-align: center;
		position: relative;
	}

		#banner1:before {
			content: '';
			background: rgba(75, 75, 93, 0.85);
			position: absolute;
			width: 100%;
			height: 100%;
			top: 0;
			left: 0;
		}

		#banner1 .inner {
			border-top: 2px solid rgba(255, 255, 255, 0.2);
			position: relative;
	/* 		z-index: 10005; */
			padding-top: 8em;
		}
		#banner1 h1 {
			font-size: 3.5em;
			font-weight: 400;
			color: #fff;
			line-height: 1em;
			margin: 0 0 1em 0;
			padding: 0;
		} 
	


</style>
</head>
<body class="subpage">


		<!-- Header -->
			<nav id="header" style="height:50px;">
				<div class="inner" style=" margin-right:50px;">
					<nav id="nav" style="height:60px;">
					  <a   href="${root}/">메인으로</a>
                       <a  href="${root}/mapPage">부동산</a>
 		               <a   href="${root}/sfc/board/index.html">공지사항</a>
 		                <c:if test="${empty user}">
			       <a   href="${root}/signupPage">회원가입</a>
				   <a   href="${root}/loginPage">로그인</a>
	             </c:if>
	            <c:if test="${not empty user}">
		
			<a   href="${root}/sfc/qna/qna.html">QnA</a>
				
			<c:if test="${not empty admin}">
				<a   href="${root}/userList">회원관리</a>
			</c:if>
				<a  href="${root}/myPage">마이페이지</a>
				<a   href="${root}/user/logout">로그아웃</a>
	
	</c:if>
						
					</nav>
				<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>	
				</div>
			</nav>



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