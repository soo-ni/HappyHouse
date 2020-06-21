<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.ssafy.happyhouse.model.dto.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>회원 관리</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="/assets/css/main.css" />
</head>
<body style="background-color: #f2f2f2; color: #4d4d4d;" >
	<%@include file ="../header.jsp" %>
	<div class="blank" style="height: 50px;"></div>
<div class="container">
  <h2 style="font-size: 50; font-style: bold;">회원 정보</h2>
  <p>HappyHouse를 이용해주시는 고객분들</p>            
	<div class="blank" style="height: 20px;"></div>
  <table class="table">
    <thead id="theadUser">
      <tr>
        <th>회원번호</th>
        <th>회원 아이디</th>
        <th>방문 횟수</th>
        <th>최근 접속일</th>
      </tr>
    </thead>
    <thead id="theadDetail" style="display:none;">
      <tr>
        <th>회원 아이디</th>
        <th>회원 이름</th>
        <th>회원 주소</th>
        <th>회원 전화번호</th>
      </tr>
    </thead>
    
    <tbody id="tbodyUser">
    
    </tbody>
  </table>
</div>


  
<form id="formUserDetail" name="userDetailForm" method="POST">
	<input type="hidden" name="userId" id="hiddenUserId">
</form>	

<%@include file ="../footer.jsp" %>
 <script type="text/javascript">
 	$(document).ready(function() {
		list();
	});
 	
 	function list(){
		$.ajax(
		{
	        type : 'get',
	        url : '${root}/manager/list',
	        dataType : 'json',
	        data : 
			{
			},
	        success : function(data, status, xhr) { 
	        	makeListHtml(data);
	        	console.log(data);
	        }, 
	        error: function(jqXHR, textStatus, errorThrown) 
	        { 
	        	console.log(jqXHR.responseText); 
	        }
	    });
	}
 	
 	function makeListHtml(list){
		$("#tbodyUser").html("");

		for( var i=0; i<list.length; i++){

			var no = list[i].no
			var uid = list[i].uid;
			var count = list[i].count;
			var lastdate = list[i].lastdate;
			
			var listHtml =
				'<tr style="cursor:pointer" data-id=' + no +' data-id2='+ uid +'><td>' + no + '</td><td>' + uid + '</td><td>' + count + '</td><td>' + lastdate + '</td></tr>';
			$('#theadUser').css("display", "''");
			$('#theadDetail').css("display", "none");
			$("#tbodyUser").append(listHtml);
		}

		makeListHtmlEventHandler();
	}
 	
 	function makeListHtmlEventHandler(){
		$("#tbodyUser tr").click(function(){
			var no = $(this).attr("data-id");
			var uid = $(this).attr("data-id2");
			console.log(uid);
			console.log(no, uid);
			detail(no, uid);
		});
	}
 	
 	function detail(no, userId){
 		var userPageBean = {
 			id: userId
 		}
 		console.log(userPageBean);
 		
		$.ajax(
		{
	        type : 'get',
	        url : '${root}/manager/list/' + no,
	        dataType : 'json',
	        data : JSON.stringify(userPageBean),
	        contentType : 'application/json',
	        success : function(data, status, xhr) { 

	        	makeDetailHtml(data);
	        }, 
	        error: function(jqXHR, textStatus, errorThrown) 
	        { 
	        	console.log(jqXHR.responseText); 
	        }
	    });
	}
 	
 	function makeDetailHtml(list){
		$("#tbodyUser").html("");

		for( var i=0; i<list.length; i++){
			var uid = list[i].uid
			var uname = list[i].uname;
			var uaddress = list[i].uaddress;
			var uphone = list[i].uphone;
			
			var listHtml =
				'<tr style="cursor:pointer" data-id=' + uid +'><td>' + uid + '</td><td>' + uname + '</td><td>' + uaddress + '</td><td>' + uphone + '</td></tr>';

			$('#theadUser').css("display", "none");
			$('#theadDetail').css("display", "''");
			$("#tbodyUser").append(listHtml);
		}

// 		makeListHtmlEventHandler();
	}
 
 	$(".userdata").click(function(){
		console.log(1);
		var userId = $(this).attr("data-userId");
		$("#hiddenUserId").val( userId );
		$("#formUserDetail").attr("action", "${root}/main.do?action=search");
		$("#formUserDetail").submit();
	});
	 var sf = document.getElementById('${searchField}');
	 sf.setAttribute('selected', 'selected');
 	
 	
  </script>
</body>
</html>
