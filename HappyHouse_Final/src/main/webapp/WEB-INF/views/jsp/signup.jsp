<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>회 원 가 입</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <link rel="stylesheet" href="/assets/css/main.css" />
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
 input[type=text], input[type=password] {
    width: 60%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
} 
input{
 width:80%;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
/*     width: 100%; */
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style> 
</head>
<body class="subpage" >
<%@include file ="../header.jsp" %>


<div  style="margin-left:5%;margin-right:5%">
<form class="was-validated" id="signupform" action="" style="border:1px solid #ccc;margin-top:10%;margin-bottom:20%">
  <div class="container">
    <h1>회원가입</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <b>아이디</b><br>
    <input type="text" id="uid" placeholder="아이디를 입력 해 주세요." name="uid" size="50" MAXLENGTH="15" required>
    <div class="valid-feedback">사용가능합니다.</div>
    <div class="invalid-feedback">해당 칸이 공백입니다 채워주세요.</div>
    
   <b>이 름</b><br>
	<input type="text" id="uname" placeholder="이름을 입력 해 주세요." name="uname" size="50" MAXLENGTH="10" required>
	<div class="invalid-feedback">해당 칸이 공백입니다 채워주세요.</div>
	
	<b>전화번호</b><br>
				<div>
						<select  name="pnum1" class="pnum1" id="pnum1"  style="width:31%;display:inline;" required>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select> - 
						<input type="text" class="phone" id="pnum2"  name="pnum2" maxlength="4" tabindex="2" style="width:33%;display:inline;"
						required> - 
						<input type="text" class="phone" id="pnum3"name="pnum3" maxlength="4" tabindex="3"  style="width:33%;display:inline;"
						required>
					</div>

 
	<b>주소</b><br> 
		
<input type="text"  id="address" placeholder="주소를 입력하세요." name="address" size="100" required><br>
 
    <b>비밀번호</b><br>
    <input type="password" class="pwd" id="pwd" placeholder="비밀번호를 입력 해 주세요." name="pwd" size="50" 
				MAXLENGTH="50" tabindex="4"	required>
	<div class="valid-feedback">사용가능합니다.</div>
     <div class="invalid-feedback">해당 칸이 공백입니다 채워주세요.</div>

    <b>비밀번호 확인 </b><br>
	<input type="password" class="pwdcheck" id="pwdcheck" placeholder="비밀번호를 다시 입력 해 주세요." name="pwdcheck" size="50" 
				MAXLENGTH="50" tabindex="4"	required>
      			<div class="invalid-feedback">해당 칸이 공백입니다 채워주세요.</div>
				<span id="alert-success" style="display: none">비밀번호가 일치합니다.</span>
				<span id="alert-fail" style="display: none; color:red; font-weight: bold;">비밀번호가 일치하지 않습니다.</span>  
				
	<b>비밀번호 확인질문</b><br><div class="select-wrapper" style="width:100%">
					<select id="question" name="category" required>
						<option value="">질문을 선택 해 주세요!</option>
						<option value="q1">기억에 남는 추억의 장소는?</option>
						<option value="q2">졸업한 초등학교는?</option>
						<option value="q3">자신이 가장 좋아하는 별명은?</option>
						<option value="q4">인상 깊게 읽은 책은?</option>
						<option value="q5">감명 깊게 본 영화는?</option>
						<option value="q6">가장 좋아하는 음식은?</option>
						<option value="q7">자신이 가장 존경하는 인물은?</option>
						<option value="q8">자신이 가장 좋아하는 가수는?</option>
						<option value="q9">유년시절 가장 생각나는 친구 이름은?</option>
						<option value="q10">자신의 보물 1호는?</option>
					</select>
					</div>
					<br><br>
	
	<b>비밀번호 확인 대답</b><br>
				<input type="text" id="answer" placeholder="" name="answer" size="10" MAXLENGTH="50" tabindex="4" required>
	
				 
    

    <div align="right" style="margin-right:10%">
		<p><button type="button" class="btn special" onclick="javascript:signup();">회원가입</button>
		<button type="reset" class="btn btn-warning">초기화</button></p>
	</div>
  </div>
</form>
</div>

<%@include file ="../footer.jsp" %>
	<script type="text/javascript">
 
    function signup() {
  	  if(document.getElementById("uid").value == "") {
			alert("아이디 입력!!!");
			return;
  	  } else if(document.getElementById("uname").value == "") {
			alert("이름 입력!!!");
			return;
	  } else if(document.getElementById("pwd").value == "") {
			alert("비밀번호 입력!!!");
			return;
	  } else if(document.getElementById("city").value == "") {
			alert("도시 선택!!!");
			return;
	  } else if(document.getElementById("address").value == "") {
			alert("주소 입력!!!");
			return;
	  } else if(document.getElementById("question").value == "") {
			alert("질문 선택!!!");
			return;
	  } else if(document.getElementById("pnum2").value.length != 4) {
			alert("중간 전화번호 자릿수 확인부탁합니다.");
			return;
	  } else if(document.getElementById("pnum3").value.length != 4) {
			alert("마지막 전화번호 자릿수 확인부탁합니다.");
			return;
	  } else {
		  if(document.getElementById("pwd").value != document.getElementById("pwdcheck").value) {
			  $("#alert-fail").css('display','inline-block');
			  $("#alert-success").css('display','none');
			  return;
		  } else {
			  $("#alert-success").css('display','inline-block');
			  $("#alert-fail").css('display','none');
			  insertUser();
// 			  document.getElementById("signupform").action = "${root}/signup";
// 			  document.getElementById("signupform").submit();
		  }
	  }
  }
    
    function insertUser(){
    	var user = 
        {
         uid : $('#uid').val(),
         upassword : $('#pwd').val(),
         uname : $('#uname').val(),
         uphone : $('#pnum1').val() + $('#pnum2').val() + $('#pnum3').val(),
         uquestion : $('#question').val(),
         uanswer : $('#answer').val(),
         uaddress : $('#address').val()
        }
    	
    	console.log(user);
    	
		$.ajax(
		{
	        type : 'post',
	        url : '${root}/user/signup',
	        dataType : 'json',
	        data : JSON.stringify( user ),
	        contentType : 'application/json',
	        success : function(data, status, xhr) { 
	        	if(data==1){
	        		alert("회원가입이 완료되었습니다");
		        	location.href="${root}/";
	        	}
	        	else {
	        		alert("회원가입에 실패하였습니다.");
	        	}
	        }, 
	        error: function(request,status,error) 
	        { 
	        	console.log(request.responseText); 
	        	console.log(status);
	        	console.log(error);
	        }
	    });
	}
  	
  </script>
</body>
</html>