<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
<title>회원 정보 수정</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link rel="stylesheet" href="/assets/css/main.css" />
<style>

input{
	background-color: white;
}
.tabbable-panel {
  border:1px solid #eee;
  padding: 10px;
}

.tabbable-line > .nav-tabs {
  border: none;
  margin: 0px;
}
.tabbable-line > .nav-tabs > li {
  margin-right: 2px;
}
.tabbable-line > .nav-tabs > li > a {
  border: 0;
  margin-right: 0;
  color: #737373;
  font-size: 20px;
  text-decoration: none;
}
.tabbable-line > .nav-tabs > li > a > i {
  color: #a6a6a6;
}
.tabbable-line > .nav-tabs > li.open, .tabbable-line > .nav-tabs > li:hover {
  border-bottom: 4px solid rgb(80,144,247);
}
.tabbable-line > .nav-tabs > li.open > a, .tabbable-line > .nav-tabs > li:hover > a {
  border: 0;
  background: none !important;
  color: #333333;
}
 .tabbable-line > .nav-tabs > li.open > a > i, .tabbable-line > .nav-tabs > li:hover > a > i {
  color: #a6a6a6;
} 
 .tabbable-line > .nav-tabs > li.open .dropdown-menu, .tabbable-line > .nav-tabs > li:hover .dropdown-menu {
  margin-top: 0px;
} 
.tabbable-line > .nav-tabs > li.active {
  border-bottom: 4px solid #32465B;
  position: relative;
}
 .tabbable-line > .nav-tabs > li.active > a {
  border: 0;
  color: #333333;
}
.tabbable-line > .nav-tabs > li.active > a > i {
  color: #404040;
} 
.tabbable-line > .tab-content {
  margin-top: -3px;
  background-color: #fff;
  border: 0;
  border-top: 1px solid #eee;
  padding: 15px 0;
}
.portlet .tabbable-line > .tab-content {
  padding-bottom: 0;
}

</style>
</head>
<body>
<%@include file ="../header.jsp" %>
<div id="banner1" style="height:240px;padding-top:0px; margin-top:0px;">
				<div class="inner" style="padding-top:60px;">
			  
			    <header>
						<h1 id ="bannerTitle" style=" ">My page</h1>
				
                </header>
					  <footer style="maring-top:0;">
						<h5>마이페이지</h5>
					</footer>

					
				</div>
			</div>	 

<p></p>	
<p></p>	
<p></p>	
<p></p>	
<div class="subpage">
  <div class="inner">
    <div class="inner">
    	
		<div class="tabbable-panel">
			<div class="tabbable-line">
				<ul class="nav nav-tabs ">
					<li id ="li1">
						<a href="#" data-toggle="tab" id="showMydataBtn" ><b> 내정보 </b></a>
					</li>&nbsp;&nbsp;&nbsp;&nbsp;
					<li id ="li2" >
						<a href="#" data-toggle="tab" id="interestAreaBtn"><b> 관심지역 </b></a>
					</li>&nbsp;&nbsp;&nbsp;&nbsp;
					<li id ="li3">
						<a href="#" data-toggle="tab" id="zzimBtn"><b> 찜한목록  </b></a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="container" id = "innerContainer">
					</div>
				</div>
			</div>
		</div>
    </div>
  </div>
</div>

	
<%@include file ="../footer.jsp" %>

<script type="text/javascript">
	$(document).ready(function () {
	  var innerHtml;

	 $("#showMydataBtn").click(function(){
		 $("#li1").attr('class','active');
		 $("#li2").attr('class','');
		 $("#li3").attr('class','');
		 showUserInnerHtml();
		 
	 });
      $("#pnum1").val("${user.uphone.substring(0,3)}")
      $("#question").val("${user.uquestion}")
      
      $("#showMydataBtn").trigger("click"); // 처음에 회원수정 탭으로 이동위해 강제로 이벤트발생
      
      $("#interestAreaBtn").click(function(){
    	  
        $("#li1").attr('class','');
 		 $("#li2").attr('class','active');
 		 $("#li3").attr('class','');
 		
 		 showInterestList();
 	
 	});  
   
      $("#zzimBtn").click(function(){
    	  
         $("#li1").attr('class','');
   		 $("#li2").attr('class','');
   		 $("#li3").attr('class','active');
   		
   		 showZzimList();
   	
   	});  
      
 
      
	});
	
	
	
	
	function modify() {
		console.log(document.getElementById("address").value);
		if(document.getElementById("pwd").value != document.getElementById("pwdcheck").value) {
			  $("#alert-fail").css('display','inline-block');
			  $("#alert-success").css('display','none');
		  } else if(document.getElementById("pwd").value == "") {
				alert("비밀번호 입력!!!");
				return;
		  } else {
			  $("#alert-success").css('display','inline-block');
			  $("#alert-fail").css('display','none');
			  updateUser();
		  }
	}
	
	function updateUser(){
		var user = { 
			uid : $('#uid').val(),
		    upassword : $('#pwd').val(),
		    uname : $('#uname').val(),
		    uphone : $('#pnum1').val() +  $('#pnum2').val() +  $('#pnum3').val(),
		    uquestion : $('#question').val(),
		    uanswer : $('#answer').val(),
		    uaddress : $('#address').val()
		};
		
		var cur_uid = $('#uid').val();
		
		console.log(user);
		console.log(cur_uid);
		
		$.ajax(
		{
	        type : 'put',
	        url : '${root}/user/update/' + cur_uid,
	        dataType : 'json',
	        data : JSON.stringify(user),
	        contentType : 'application/json',
	        success : function(data, status, xhr) { 
	        	alert("정보수정완료");
	        	window.location.reload();
	        }, 
	        error: function(jqXHR, textStatus, errorThrown) 
	        { 
	        	console.log(jqXHR.responseText); 
	        }
	    });
	}
	
	
	function cancle() {
		document.location.href="${root}/";
	}
	
	function showUserInnerHtml(){
		 innerHtml = `
		 <div class="container" style="padding-left:110px; padding-right:50px;">
		 <form id="modifyform" class="was-validated">
				<c:if test="${not empty fpwd}">
				<input type="hidden" name="fpwd" value="ok"/>
			</c:if>
				<br>
				<div>
					<b>아이디 : </b>
					<input type="text" id="uid" value="${user.uid}" name="uid" style="width:75%;" disabled>
				</div>
				<br>
				<div>
					<b>이름 : </b> 
					<input type="text" id="uname" value="${user.uname}" name="uname" size="10" MAXLENGTH="10" tabindex="4" style="width:75%;" >
				</div>
				<br>
				<div>
					<b>전화번호 : </b>
					<div>
						<select  name="pnum1" class="pnum1" id="pnum1"  value="${user.uphone.substring(0,3)}" style="width:22%;display:inline;" required>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>- 
						<input type="text" class="phone" id="pnum2" value="${user.uphone.substring(3,7)}" name="pnum2" maxlength="4" tabindex="2" style="width:25%;display:inline;"
						required>- 
						<input type="text" class="phone" id="pnum3" value="${user.uphone.substring(7,11)}" name="pnum3" maxlength="4" tabindex="3"  style="width:25%;display:inline;"
						required>
					</div>
				</div>
				<br>
				<div>
					<b>주소 : </b>
					<input type="text" class="form-control" id="address" value="${user.uaddress}" style="width:75%;" name="address">
				</div>
				<br>
				<div>
					<b>비밀번호 : </b>
					<input type="password" class="form-control" id="pwd" 
					placeholder="비밀번호를 입력해주세요" name="pwd" tabindex="4" style="width:75%" required="required">
					<div class="valid-feedback">사용가능합니다.</div>
		  			<div class="invalid-feedback">해당 칸이 공백입니다 채워주세요.</div>
				</div>
				<br>
				<div>
					<b>비밀번호 확인 : </b>
					<input type="password" class="form-control" id="pwdcheck" placeholder="비밀번호를 다시 입력해주세요" name="pwdcheck" size="50" 
					MAXLENGTH="50" tabindex="4"	style="width:75%" required="required">
					<div class="invalid-feedback">해당 칸이 공백입니다 채워주세요.</div>
					<span id="alert-success" style="display: none">비밀번호가 일치합니다.</span>
					<span id="alert-fail" style="display: none; color:red; font-weight: bold;">비밀번호가 일치하지 않습니다.</span>
				</div>
				<br>
				<div>
					<b>비밀번호 확인 질문 : </b>
						<select id="question" name="question" class="question" style="width:75%;" value="${user.uquestion}">
						   <option value="q2">졸업한 초등학교는?</option>
						   <option value="q1">기억에 남는 추억의 장소는?</option>
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
				<br>
				<div>
					<b>비밀번호 확인 대답 : </b>
					<input type="text"class="form-control" id="answer" value="${user.uanswer}" name="answer" size="10" 
					MAXLENGTH="50" tabindex="4" style="width:75%;" required="required">
				</div>
				<br>
				<div class="form-group form-check">
					<input id="demo-copy" type="checkbox" name="remember"><label for="demo-copy">이메일 수신에 동의하시겠습니까?</label>
				</div>
				<div style="width:95%">
					<button type="button" class="button special" onclick="javascript:modify();">수정하기</button>
					<button type="button" onclick="javascript:cancle();">취소</button>
					<c:if test="${empty fpwd}">
						<button style="float: right;" type="button" onclick="javascript:withdraw();'">탈퇴하기</button>
					</c:if>
				</div>
			</form>
			 </div >
		
			`
		
			$("#innerContainer").html(innerHtml);
	}
	

	function showInterestList(){
		$(document).ready(function(){
 			$.get("${root}/map/list"
 				,function(data, status){
 					$.each(data, function(index, vo) {
 						$("#sido").append("<option value='"+vo.sido_code+"'>"+vo.sido_name+"</option>");
 					});//each
 				}//function
 				, "json"
 			);//get
 		});//ready
		
	
		var selectHtml =`	<div align='center' style="margin-bottom: 30px;">
			시도 :<select id="sido" style="width:15%; display:inline;"><option value="0">선택</option></select>
		구군 : <select class="select-wrapper" id="gugun" style="width:15%; display:inline;"><option value="0">선택</option></select>
		읍면동 : <select class="select-wrapper" id="dong" style="width:15%; display:inline;"><option value="0">선택</option></select>&nbsp;&nbsp;
		<a  class="button special" id="addInterestAreaBtn" style=" text-align:center" >추가</a>
		</div>
		`;
		 $("#innerContainer").html(selectHtml);
		 $.ajax({
	         url:"${root}/house/interest",
	         type:"GET",
	         data:{},
	         dataType : 'json', 
	         error:function(request,status,error){
	             alert("실패");
	             alert(request.status);
	             console.log(error); 
	         },
	         success:function(data){
	             console.log(data);
	             updateInterestInnerHtml(data);
	         }
	     }); 
		
	}

	function updateInterestInnerHtml(list){
		for( var i=0; i<list.length; i++){
			innerHtml=`<li class="list-group-item" style="width:95%;"><a href="${root}/house/store/`+list[i]+`">
				<strong>`+list[i]
			+`</strong></a> <button type="reset" style="float:right;line-height: normal;height: 25px;" onclick="javascript:deleteInterestArea('` + list[i] + `')";>삭제</button></li>`;
				$("#innerContainer").append(innerHtml);
		}
	}
	
	function deleteInterestArea (dong){
		if (confirm("정말 삭제하시겠습니까??") == true){

		console.log(dong);
		$.ajax({
	         type:"delete",
	         url:"${root}/house/interest/"+dong,
	         dataType : 'json', 
	         data:{dong: dong},
	         contentType : 'application/json',
	         success:function(data, status, xhr){
	             console.log(data);
	             if(data==1){
	            alert("삭제 완료하였습니다.");
	            showInterestList();
	             }else{
	            	 alert("관심지역 삭제에 실패하였습니다.");
	             }
	             
	         },
	         error:function(request,status,error){
	             alert("관심지역 삭제에 실패하였습니다.");
	             alert(request.status);
	             console.log(request);
	         },
	     }); 
		}
	}
	
	
	/* -----------관심지역 추가 --------------- */
	                  
/* 	$(document).on("click",".sframe",function(e){
 var seat_number = this.id.match(/\d/g);
 alert(seat_number); 
 }); 
 아작스로 구현시 document.ready 적용안될땐 위의 코드로 적용하면 됨 	(이벤트, 요소, 함수)
	*/

	$(document).on("change","#sido",function(){
				console.log($("#sido").val());
				$("#dong").val("0");
				$.get("${root}/map/sido/"+ $("#sido").val()
						,{sido : $("#sido").val()}
						,function(data, status){
							$("#gugun").empty();
							$("#gugun").append('<option value="0">선택</option>');
							$.each(data, function(index, vo) {
								$("#gugun").append("<option value='"+vo.gugun_code+"'>"+vo.gugun_name+"</option>");
							});//each
						}//function
						, "json"
				);//get
			});//on
					
	
		
		$(document).on("change","#gugun",function(){
			$.get("${root}/map/gugun/"+$("#gugun").val()
					,{gugun:$("#gugun").val()}
					,function(data, status){
						$("#dong").empty();
						$("#dong").append('<option value="0">선택</option>');
						$.each(data, function(index, vo) {
							$("#dong").append("<option value='"+vo.dong+"'>"+vo.dong+"</option>");
						});//each
					}//function
					, "json"
			);//get
		});//on
		
		$(document).on("click","#addInterestAreaBtn",function(){
	    
	    	  var dongVal = $("#dong").val();
	    	  if(dongVal==("0")){
	    		  alert("동단위 까지 선택해주세요!");
	    	  }else{
	    		  
	    		  $.ajax(
	    					{
	    				        type : 'post',
	    				        url : '${root}/house/add',
	    				        dataType : 'json',
	    				        data : 
	    						{
	    				          donginterest:dongVal
	    						},
	    				        success : function(data, status, xhr) {
	    				      
	    				        	if(data==1){
	    				        		alert("관심지역이 추가되었습니다.");
	    				        		showInterestList();
	    				        		
	    				        	}else if ('${doublecheck}'!=null){
	    				        		alert("이미 추가된 지역입니다.")
	    				        	}else{
	    				        		
	    				        		alert("관심지역 등록에 실패하였습니다.")
	    				        	}
	    				        }, 
	    				        error: function(jqXHR, textStatus, errorThrown) 
	    				        { 
	    				        	if( jqXHR.status == 500 ){
	    								alert("서버 오류로 등록하지 못했습니다. 다시 등록해 주세요.")
	    							}
	    				        }
	    				    });
	    	  }
	    	 
	  
		 }); 
		
function showZzimList(){ //찜목록 선택시 ajax 요청 
	$("#innerContainer").html("");
	innerHtml="";
	$.ajax({
        url:"${root}/user/likedList/houseinfo",
        type:"GET",
        data:{},
        dataType : 'json', 
        error:function(request,status,error){
            alert("실패");
            alert(request.status);
            console.log(error); 
        },
        success:function(data){
            console.log(data);
            if(data==null) {alert("아직 찜한 매물이 없습니다.");
            }
            else{
            	
            	 updateZzimInnerHtml(data);
            }
           
            
        }
    }); 
	
	
}

function updateZzimInnerHtml(list){ //찜목록 그려주기 
	innerHtml =`<table class='table' style='width:95%;'>
		    <thead>
    <tr>
      <th>아파트이름</th>
      <th>거래금액</th>
      <th>거래년도</th>
      <th>전용면적</th>
      <th>건축연도</th>
      <th>동</th>
      <th>지번</th>
      <th>찜한목록삭제</th>
    </tr>
  </thead>
  <tbody>`;
	
  for(var i =0; i<list.length ;i++){
	  innerHtml += ` <tr>
	        <td>`+list[i].aptName+`</td>
	        <td>`+list[i].dealAmount+`</td>
	        <td>`+list[i].dealYear+`</td>
	        <td>`+list[i].area+`</td>
	        <td>`+list[i].buildYear+`</td>
	        <td>`+list[i].dong+`</td>
	        <td>`+list[i].jibun+`</td>
	        <td><button type="reset" style="line-height: normal;height: 25px;" onclick="javascript:deleteZzim(`+list[i].no+`)";>삭제</button></td>
	      </tr>`;
	 
  }
  innerHtml += (` </tbody></table>`);
  $("#innerContainer").append(innerHtml);

}

function deleteZzim(no){ //찜목록에서 housedeal no으로 지우기 
	  $.ajax(
				{
			        type : 'delete',
			        url : '${root}/user/liked/'+no,
			        dataType : 'json',
			        data:{
			        },
			        success : function(data, status, xhr) {
			        	if(data==1){
			        		console.log("성공");
			                 alert("삭제되었습니다.");
			        	}
			        	showZzimList(); // 찜목록 다시 보여주기
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
