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
 <!--  <meta name="viewport" content="width=device-width, initial-scale=1"> -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="/assets/css/main.css" />
<title>Insert title here</title>
</head>
<body>
<%@include file ="../header.jsp" %>

<p><p><p>
<h2 style="text-align:center">주택 관련 기사</h2><br>
<div class="container">
<div id="accordion">



</div>
</div>
<script>
$(document).ready(function() {
	var innerHtml="";
 	$("#accordion").html(""); 
	 $.ajax({
         url:"<%=root%>/article/",
         type:"GET",
         data:{},
         dataType : 'json', 
         error:function(request,status,error){
             alert("실패");
             alert(request.status);
             console.log(error); 
         },
         success:function(list){
        	 if(list==null) alert("주택관련 뉴스를 조회하지 못했습니다.");
        	 else{
             makeArticleList(list);
        	 }
         }
     });  
	
});


function makeArticleList(list){
	for(var i =0 ; i<15;i++){
   	 innerHtml = `
   	 <div class="card">
   	    <div class="card-header">
   	 <a style="text-decoration: none;" class="card-link" data-toggle="collapse" href="#collapse`
   	 + i +`"> 
   	 `+
     		list[i].title
     +`
         </a>&nbsp;&nbsp;&nbsp;
   	 <span style="text-align:right">`+list[i].createdDate+`</span>
       </div>
       <div  id="collapse`+i+`" class="collapse" data-parent="#accordion" >
         <div class="card-body"  style="overflow: auto; height:350px;">
          <h4> `+list[i].title+`</h4>`+
          list[i].content 
           +`
         </div>
       </div>
     </div>`;
   	 
   	 
   	 $("#accordion").append(innerHtml);
   
    }
}
</script>
<p><p><p>
<%@include file ="../footer.jsp" %>
</body>
</html>