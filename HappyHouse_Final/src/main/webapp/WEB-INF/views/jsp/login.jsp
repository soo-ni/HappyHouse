<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>로 그 인 </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/assets/css/main.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
/*body {font-family: Arial, Helvetica, sans-serif; align:center; }*/

form {

margin-left:30%;
margin-right:30%;
border: 3px solid #f1f1f1; }

input[type=text], input[type=password] {
  width: 35%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

 button {
/*   background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer; */
  width: 35%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 20px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
  /* 취소 버튼 */
     width: 100%;
  }
} */
</style>
</head>
<body  class="container" style="margin-top:8%;" >

  <c:if test="${not empty flag}">
  	<div class="alert alert-success">
  	<strong>축하합니다!</strong> 회원가입에 성공하셨습니다.
	</div>
	<%request.removeAttribute("flag");%>
  </c:if> 
  <c:if test="${not empty loginfail}">
   <br>
  	 <div class="alert alert-danger">
    <strong>로그인에 실패했습니다.</strong> 아이디 또는 비밀번호를 확인해주세요.
  	</div> 
	<%request.removeAttribute("loginfail");%> 
  </c:if>
 <div  class = "container" style="margin-bottom:0;"> 


  
<form id="loginform" action="${root}/user/login" method="post">
<h2 style="text-align: center; margin-top: 20px;">로 그 인</h2>


  <div class="container">
    <label for="uname"><b>아이디</b></label>
    <input type="text" id="uid" placeholder="Enter id" name="uid" required>

    <label for="psw"><b>비밀번호</b></label>
    <input type="password" id="upassword" placeholder="Enter password" name="upassword" required><br>
        
    <!-- <button type="submit">로그인</button> -->
  <br>
    <button type="button" class ="button special" id="btnLogin" >로 그 인</button><br><br>

    
     
  </div>


    &nbsp;&nbsp;&nbsp;&nbsp;<a style="text-decoration:  underline " href=" ${root}/findPage">아이디/비밀번호찾기</a> &nbsp;&nbsp;
	<a  style="text-decoration:  underline " href="${root}/signupPage">회원가입</a><br><br>

</form>


</div>

<%@include file ="../footer.jsp" %>
<script>
  
  $(document).ready(function(){
      $("#btnLogin").click(function(){
          if( validate() ){
        	  $("#loginform").submit();
          }
      });
      
  /*     $("#btnFindpwd").click(function(){
	    findpwd();
      }); */
  });
  
  function validate(){
      var isUserIdValid = false;
      var isUserPasswordValid = false;
      
      var userIdValue = $("#uid").val();
      var userIdLength = userIdValue.length;
      
      if( userIdLength > 0 ){
	  	isUserIdValid = true;
	  }
      
      var userPasswordValue = $("#upassword").val();
      var userPasswordLength = userPasswordValue.length;

      if( userPasswordLength > 0 ){
          isUserPasswordValid = true;
      }
      
      if( isUserIdValid && isUserPasswordValid ){
	  	return true;
	  }else{
	  	return false;
	  }
	}
  
/*   function findpwd() {
	  document.location.href = "${root}/findPage";
  } */
  
  
  </script>
</body>
</html>
