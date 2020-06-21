<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>회원 정보 찾기</title>
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
<style>

input[type=text], input[type=password] {
 /*  width: 100%; */
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
h2{
	text-align: center;
	color: #8c8c8c;
}
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
/*   width: 100%; */
}

button:hover {
  opacity: 0.8;
}

</style>	
</head>
<body  class="subpage">
<%@include file ="../header.jsp" %>
	<c:if test="${not empty wrong}">
		<div class="alert alert-danger">
    		<strong>일치하는 회원정보가 없습니다.</strong><br> 아이디, 이름 및 전화번호를 다시 확인해주세요.
  		</div>
  		<%request.removeAttribute("wrong"); %>
	</c:if>
	<c:if test="${not empty fid}">
		<script type="text/javascript">
			var id = '${fid}';
			alert("회원님의 아이디는 " + "\n" +  id + "입니다.");
		</script>
		<%request.removeAttribute("fid"); %>
	</c:if>
	<div class="container"><br><br><br><br>
	<div class="first" style="float:left;">
	<div class="getuid" style="border: 2px solid #f1f1f1; height: auto; width:500px; margin: 0 auto; padding: 10px 10px;">
		<h2>아이디 찾기</h2>
		<form class="was-validated" id="finduid" name="finduid" method="post"
			action="">
			<input type="hidden" name="action" value="findid">
		
				<label><b>이름</b></label>
				<input type="text" id="uname" placeholder="이름을 입력해주세요."name="uname" required>
				<div class="invalid-feedback">해당 칸이 공백입니다 채워주세요.</div>
					<label><b>전화번호</b></label>
					<div>
						<select  name="pnum1" class="pnum1" id="pnum1"  style="width:30%;display:inline;" required>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>- 
						<input type="text" class="phone" id="pnum2"  name="pnum2" maxlength="4" tabindex="2" style="width:32%;display:inline;"
						required>- 
						<input type="text" class="phone" id="pnum3"  name="pnum3" maxlength="4" tabindex="3"  style="width:32%;display:inline;"
						required>
					</div>
			<div class="buttonid" id="buttonid" align="right">
			<button type="button" onclick="javascript:findid();">아이디 찾기</button>
			</div>
		</form>
	</div>
	</div>



	<div class="second" style="float:right;">
	<div class="getuid" style="border: 2px solid #f1f1f1; height: auto; width: 500px; margin: 0 auto; padding: 10px 10px;">
		<h2>비밀번호 찾기</h2>
		<form class="was-validated" id="findupwd" name="findupwd" method="post" action="">
		<input type="hidden" name="action" value="findpwd">
			
				<label><b>이름</b></label>
				<input type="text" id="uname_pw" placeholder="이름을 입력해주세요." name="uname_pw" required>
				<div class="invalid-feedback">해당 칸이 공백입니다 채워주세요.</div>
			
			
				<label><b>아이디</b></label>
				<input type="text" id="uid" placeholder="아이디를 입력 해 주세요." name="uid" size="50" MAXLENGTH="15" required>
				<div class="invalid-feedback">해당 칸이 공백입니다 채워주세요.</div>
			
				
				<label><b>전화번호</b></label>
				
				<div>
						<select  name="pnum1" class="pnum1_pw" id="pnum1_pw"  style="width:30%;display:inline;" required>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>- 
						<input type="text" class="phone" id="pnum2_pw"  name="pnum2_pw" maxlength="4" tabindex="2" style="width:32%;display:inline;"
						required>- 
						<input type="text" class="phone" id="pnum3_pw"  name="pnum3_pw" maxlength="4" tabindex="3"  style="width:32%;display:inline;"
						required>
					</div>
			<div class="buttonpwd" id="buttonpwd" align="right">
			<button type="button"  onclick="javascript:findpwd();">비밀번호 찾기</button>
			</div>
		</form>
	</div>
	</div>
	
	</div>
	<br><br><br><br>
<%@include file ="../footer.jsp" %>
	<script type="text/javascript">
// 	function findpwd() {
// 		document.getElementById("findupwd").action = "${root}/user/findId";
// 		document.getElementById("findupwd").submit();
// 	}
// 	function findid() {
// 		document.getElementById("finduid").action = "${root}/user/findPw";
// 		document.getElementById("finduid").submit();
// 	}

	function findid(){
		var user = 
        {
         uname : $('#uname').val(),
         uphone : $('#pnum1').val()  + $('#pnum2').val()  + $('#pnum3').val(),
        }
    	
    	console.log(user);
    	
		$.ajax(
		{
	        type : 'post',
	        url : '${root}/user/findId',
	        dataType : 'json',
	        data : JSON.stringify( user ),
	        contentType : 'application/json',
	        success : function(data, status, xhr) {
	        	if(data.uid != null){
	        		alert("아이디: "+data.uid);	
	        	}else{
	        		alert("다시 입력해주세요");
	        	}
	        }, 
	        error: function(jqXHR, textStatus, errorThrown) 
	        { 
	        	console.log(jqXHR.responseText); 
	        }
	    });
	}

	
	function findpwd(){
		var user = 
        {
         uid : $('#uid').val(),
         uname : $('#uname_pw').val(),
         uphone : $('#pnum1_pw').val() + $('#pnum2_pw').val()  + $('#pnum3_pw').val(),
        }
    	
    	console.log(user);
    	
		$.ajax(
		{
	        type : 'post',
	        url : '${root}/user/findPw',
	        dataType : 'json',
	        data : JSON.stringify( user ),
	        contentType : 'application/json',
	        success : function(data, status, xhr) {
	        	if(data.uid != null){
	        		alert("비밀번호: "+data.upassword);	
	        	}else{
	        		alert("다시 입력해주세요");
	        	}
	        }, 
	        error: function(jqXHR, textStatus, errorThrown) 
	        { 
	        	console.log(jqXHR.responseText); 
	        }
	    });
	}
	
	</script>
</body>
</html>