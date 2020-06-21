<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<%
	String root = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/assets/css/main.css" />
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
</head>

<style>
 .button.special.icon.fa-search {

	width:77px;height:29px;
}

 .swiper-container {
      width: 100%;
      height: 100%;
    }
 .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;

      /* Center slide text vertically */
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;

 }
img {
 width:100%;
 height:50%
}
</style>
 
</head>
<body>
<%@include file ="./mainHeader.jsp" %>
<p><p><p><p>
<div class="container" >


<br>
<div style ="float:left;height:500px;width:380px;padding-left: 15px;padding-right: 15px;">
&nbsp;&nbsp;&nbsp;&nbsp;<b style="font-size:20px;">관심지역 매물</b><img style="width:24px;height:24px;" src="../img/houseIcon.png"><br>
<!-- Swiper -->
    <div  class="swiper-container ">
      	  <c:if test="${empty user}">
      	  <div style ="height:350px;width:350px;text-align:center;display:table-cell;vertical-align:middle;">로그인을 해주세요</div>
      	  </c:if>
      <div class="swiper-wrapper" id=swiperContainer>
          <div class="swiper-slide"></div>
          <div class="swiper-slide"></div>
          <div class="swiper-slide"></div>
          <div class="swiper-slide"></div>
          <div class="swiper-slide"></div>
          <div class="swiper-slide"></div>
          <div class="swiper-slide"></div>
          <div class="swiper-slide"></div>
          <div class="swiper-slide"></div>
          <div class="swiper-slide"></div>
      </div>
      <!-- Add Pagination -->
    <!--   <div class="swiper-pagination"></div> -->
      <!-- Add Arrows -->
      <div class="swiper-button-next" id="next"></div>
      <div class="swiper-button-prev" id="prev"></div>
  </div>

</div>


		<div id ="articlePreview" style ="float:left;height:500px;width:350px;padding-left: 15px;padding-right: 15px;">
		<div style="display: inline-block;text-align:center;"><b style="font-size:20px;text-align:center;">주택관련기사    </b>
		<img style="width:24px;height:24px;" src="../img/newspaper.png">
		</div>
		<br><br><ul class="list-group list-group-flush" id ="articlePreviewList" style ="font-size: 15px;"  >
		
		</ul>
		</div >
		
		
		
		<div id = "Notice" style ="float:left;width:350px;height:500px;padding-left: 15px;padding-right: 15px;">
		<div align="center" style="display: inline-block;"><b style="font-size:20px;">공지사항    </b>
		<img style="width:24px;height:24px;" src="../img/notepad.png">
		</div>
		
		<br><br><ul class="list-group list-group-flush" id ="noticePreviewList" style ="font-size: 15px;"  >
		
		</ul>
		</div>



</div>



<%@include file ="./footer.jsp" %>

<script>
$(document).ready(function() {

	$.ajax({
        url:"${root}/house/interest",
        type:"GET",
        data:{},
        dataType : 'json', 
        error:function(request,status,error){
            $("#swiperContainer").html("");
            $("#prev").css("display","none");
            $("#next").css("display","none");
        },
        success:function(list){
            console.log(list);
         if(list.length==0){
        	 $("#recommendHouse").html("마이페이지 '관심지역'을 설정해주세요!");
        	 $("#prev").css("display","none");
             $("#next").css("display","none");
        	 
         }
         else{
        	  var index = Math.floor(Math.random() * list.length); // 동 랜덤 생성  
        	   getInterestAreaByDong(list[index]); 
        	  console.log(list[index]);
         }
        }
    }); 
	
	
	 
 
	
	
	$("#articlePreviewList").html("");
	var innerHtml="";
	 $.ajax({
         url:"<%=root%>/article/preview",
         type:"GET",
         data:{},
         dataType : 'json', 
         error:function(request,status,error){
             alert("실패");
             alert(request.status);
             console.log(error); 
         },
         success:function(list){
        	 if(list==null){}
        	 else{
        	 console.log(list);
             makeArticlePreview(list);
        	 }
         }
     });   
	 
	 
	 $("#noticePreviewList").html("");
	 $.ajax({
         url:"<%=root%>/board",
         type:"GET",
         data:{},
         dataType : 'json', 
         error:function(request,status,error){
             alert("실패");
             alert(request.status);
             console.log(error); 
         },
         success:function(list){
        	 if(list==null){}
        	 else{
        	 console.log(list);
            makeboardPreview(list); 
        	 }
         }
     }); 
	 
	 
});

function makeArticlePreview(list){
	innerHtml="";
	
		for(var i =0; i<list.length; i++){
			 innerHtml +=`<li class="list-group-item" style=" overflow: hidden;text-overflow: ellipsis;  white-space : nowrap;">`+list[i].title+`</li>`;
		
	}
		innerHtml +=`<li class="list-group-item" style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;cursor:pointer;text-align:center;" onclick="location.href='/articlePage'">더보기 +</li>`;
	$("#articlePreviewList").html(innerHtml);
}

function makeboardPreview(list){
	innerHtml="";
	if(list.length>5){
		for(var i =0; i<5; i++){
			innerHtml +=`<li class="list-group-item" style=" overflow: hidden;text-overflow: ellipsis;  white-space : nowrap;">`+list[i].title+`  [관리자]</li>`;
		}
	}
	else{
		for(var i =0; i<list.length; i++){
			innerHtml +=`<li class="list-group-item" style=" overflow: hidden;text-overflow: ellipsis;  white-space : nowrap;">`+list[i].title+`  [관리자]</li>`;
		}
	}
	innerHtml +=`<li class="list-group-item" style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;cursor:pointer;text-align:center;" onclick="location.href='${root}/sfc/board/index.html'">더보기 +</li>`;
	$("#noticePreviewList").html(innerHtml);
}

function getInterestAreaByDong(dong){
	$.ajax(
	         {
	              type : 'get',
	              url : '${root}/map/apt/'+dong,
	              dataType : 'json',
	              data:{
	                 dong: dong
	              },
	              success : function(list, status, xhr) {
	                 console.log(list);
	                 var innerHtml="";
	                   for(var i =0; i<list.length;i++){
	                	   innerHtml+=`<div class ="swiper-slide" style="height:64%;width:100%"><div style="margin-left:0;margin-right:0;">`;
	                	   innerHtml+=`<br>`+list[i].dong+`<br>`; 
	                	   innerHtml+=`<b>`+list[i].aptName+` </b>`+list[i].floor+`층<br>`; 
	                	   innerHtml+=list[i].area+`(전용면적) | `;
                           innerHtml+=list[i].dealAmount+'(만원)<br> '; 
 	                	   if(list[i].img==null){

 	                		   innerHtml+=`<img src='/img/아파트기본이미지.png'><br>`;
	                	   }else{
	                		    innerHtml+=`<img src=/img/`+ list[i].img + `><br>`; 
	                	   }
 	                	  
	                      
	                       
	                	    innerHtml+=`</div></div>` 
	                   }
	                   $("#swiperContainer").html(innerHtml).trigger("create");
	             

	               
	              }, 
	              error: function(jqXHR, textStatus, errorThrown) 
	              { 
	                 console.log(jqXHR.responseText); 
	             
	              }
	          });
	
}


</script>
 <!-- Swiper JS -->
  <script src="https://unpkg.com/swiper/js/swiper.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
 
    var swiper = new Swiper('.swiper-container', {
      /*  spaceBetween: 30,  */
      centeredSlides: true,
      autoplay: {
        /* delay: 3000, */
        disableOnInteraction: false,
      },
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
  </script>
</body>
</html>