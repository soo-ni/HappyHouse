<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
		<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="/assets/css/main.css" />
		<!-- kakao Map Script: Key잘 지우기! -->
		<script type="text/javascript" 
				 src="">
		</script>
		
		
		<style type="text/css">
		html, body{width:100%; height: 100%;}
		.tg-j1i3{font-size:13pt; border-color:inherit;position:-webkit-sticky;position:sticky;text-align:left;top:-1px;vertical-align:top;
		  will-change:transform;}
		#myBtn {
		  display: none; position: fixed; bottom: 7%; right: 7%; z-index: 99; font-size: 18px; border: none;
		  outline: none; color: white; cursor: pointer; padding: 15px; border-radius: 70px;}
		#myBtn:hover {background-color: #555;}
		
		.select-wrapper{
			display: inline;
			width: 15%;
		}
		
		thead {
			font-size: 14pt; align: center;
		}
		
		::-webkit-scrollbar{
			display:none;
		}
		
		#houseDiv, #storeDiv, #houseListDiv, #storeListDiv{
			display:inline-block;
			font-size:15pt;
			cursor: pointer;
		}
		
		.tabbable-panel {
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
		article{
		  padding-block-end: 7px;
		}
		#thHouse{
			font-size: 20px;
			padding-bottom: 7px;
    		font-weight: bold;
		}
		</style>
	</head>
	<body>
	<%@include file ="../header.jsp" %>
	<div id="root_container" style="width: 90%; margin:0 auto;">
	<br><br>
		<div class="tabbable-panel">
			<div class="tabbable-line">
				<ul class="nav nav-tabs ">
					<li id="li1">
						<a href="#" data-toggle="tab" id="houseDiv" ><b> 실거래가 정보 </b></a>
					</li>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<li id="li2" >
						<a href="#" data-toggle="tab" id="storeDiv"><b> 상권 정보 </b></a>
					</li>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<li id="li3">
						<a href="#" data-toggle="tab" id="houseListDiv"><b> 실거래가 리스트  </b></a>
					</li>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<li id="li4">
						<a href="#" data-toggle="tab" id="storeListDiv"><b> 상권 리스트  </b></a>
					</li>
				</ul>
			</div>
		</div>

		<div id="div12">
			<div>
				<div style="top: 50%;">
					<!-- 시, 군, 구 선택 start -->
					<div align='center' style="margin-bottom: 30px;">
					시도 : <select id="sido" class="select-wrapper" style="display:inline">
						<option value="0">선택</option>
					</select>
					구군 : <select id="gugun" class="select-wrapper" style="display:inline">
						<option value="0">선택</option>
					</select>
					읍면동 : <select id="dong" class="select-wrapper" style="display:inline">
						<option value="0">선택</option>
					</select>
					</div>
					<!-- 시, 군, 구 선택 end -->
				</div>
				<div class="6u 12u$(small)"><!-- 반경 그려주기 -->
					<input type="checkbox" id="drawCircle" name="drawCircle" checked>
					<label for="drawCircle">주변 반경을 선택해주세요 (단위: m)</label>
					<input type="text" id="circleRadius" name="circleRadius" value="300" placeholder="300" style="width:10%;display:inline" size=5 maxlength=5>
				</div>
			</div>
			<!-- map_container start -->
			<div id="map_container" style="float: left; width: 70%;">
				
				<!-- kakao map start -->
				<div id="map" style="height:700px;"></div>
				<!-- kakao map end -->
			</div>
			<!-- map_container end -->
	
			<!-- houseList 매물 정보 start -->
			<div id="houseList_container" style="float: right; width: 30%; height: 700px; overflow: auto;">
<!-- 				<table class="tg" style="width: 100%;"> -->
<!-- 					<thead> -->
<!-- 					  <tr> -->
					    <div id="thHouse" class="tg-j1i3" style="text-align:center;">매물정보</div>
<!-- 					  </tr> -->
<!-- 					</thead> -->
					<div id="tbodyHouse">
					</div>
<!-- 				</table> -->
			</div>
			<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
			<!-- houseList 매물 정보 end -->
			
			<!-- 매물정보 상세보기 start -->
			<div id="houseList_detail_container" style="display:none; float: right; width: 30%; height:700px; overflow-y:scroll;">
				<table id="tdetailHouse" style="width:100%;">
				</table>
			</div>
			<!-- 매물정보 상세보기 end -->
		</div>
		
		<div id="div34" style="display:none;">
			<div>
				<!-- houseDealFrom start -->
				<form id="housedealForm" style="align:center;">
				<input type="hidden" name="pg" id="pg" value="1">
					<table class="table table-bordered" id="housedealtable">
						<tr id="checklist" style="border: hidden;">
							<th colspan="5" style="align:center">
								<div class="checkDiv">
									<input type="checkbox" name="check" id="1" value="1" ${ck1}>
									<label>아파트 매매</label>
								</div>
								<div class="checkDiv">
									<input type="checkbox" name="check" id="2" value="2" ${ck2}>
									<label for="2">아파트 전월세</label>
								</div>
								<div class="checkDiv">
									<input type="checkbox" name="check" id="3" value="3" ${ck3}>
									<label for="3">다세대,주택 매매</label>
								</div>
		
								<div class="checkDiv">
									<input type="checkbox" name="check" id="4" value="4" ${ck4}>
									<label for="4">다세대,주택 전월세</label>
								</div>
							</th>
						</tr>
						<tr align="right" style="border-right: hidden; border-left: hidden;">
							<th colspan="5"><input type="hidden" name="action" value="SEARCH"> 
							<select name="searchField" id="searchField" style="width:20%;display:inline;">
									<option id="ALL" value="ALL">전체</option>
									<option id="DONG" value="DONG">동</option>
									<option id="APT" value="APT">이름</option>
							</select>
							&nbsp;&nbsp;
							<input type="text" id="searchText" name="searchText" style="width:60%;display:inline;" value=${searchText}>
							&nbsp;&nbsp;
							<input type="button" id ="search" value="검색" style="width:10%;display:inline;">
							</th>
						</tr>
					</table>
				</form>
				<!-- houseDealFrom end -->
				
				<table class="table table-bordered">
					<thead>
						<tr id="trHouseList">
						</tr>
						</thead>
					<tbody id = houseDealList >
					
					</tbody>
				</table>
			</div>
			<div id="paginationWrapper"></div>
			
			<!-- house - detail modal -->
			<div id="divBtnmodal" style="display: none;">
				<button id =detailButton type="button" data-toggle="modal" data-target="#houseDetailModal">Open Modal</button>
			</div>
			<div class="modal" id="houseDetailModal">
			  <div class="modal-dialog">
			    <div class="modal-content">
			
			      <!-- Modal Header -->
			      <div class="modal-header">
			        <h4 class="modal-title">주택상세정보&환경정보</h4>
			        <button type="button" class="close" data-dismiss="modal" onclick="javascript:modalButtonClose();">&times;</button>
			      </div>
			
			      <!-- Modal body -->
			      <div class="modal-body" >
			      <img src="/img/아파트기본이미지.png" class="" width="30%" height="60%" align="center" style="margin-top:20px;">
			       <div align="right" style="float: right; ">
					 <table class="table"  >
					 <tbody style="text-align: left" id ="houseDetilaModalBody" >
					 </tbody>
					 </table>
					 </div>
			      </div>
			
			      <!-- Modal footer -->
			      <div class="modal-footer">
			        <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="javascript:modalButtonClose();" >Close</button>
			      </div>
			
			    </div>
			  </div>
			</div>
		</div>
	
		<%@include file ="../footer.jsp" %>
	</div>
	
	<script>
		//selectBox 생성
		let colorArr = ['table-primary','table-success','table-danger'];
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
		
		$(document).ready(function(){
			$("#sido").change(function() {
				console.log($("#sido").val());
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
			});//change
			
			$("#gugun").change(function() {
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
			});//change
			$("#dong").change(function() {
				console.log(divNum);
				if(divNum==1){
					$("#thHouse").text('');
					getMapData();
				}else if(divNum==2){
					$("#thHouse").text('');
					getMapStoreData();
				}
			});//change
			
			// scroll 하기
			$("#houseList_container").scroll(function(){
// 				console.log($("#houseList_container").scrollTop());
				if ($("#houseList_container").scrollTop() > 20) {
					$("#myBtn").css ('display', 'block');
				} else {
					$("#myBtn").css ('display', 'none');
				}
			});
		});//ready
	
		
		// 실거래가 map 생성
		$(document).ready(function() {
			$("#li1").attr('class','active');
			$("#li2").attr('class','');
			$("#li3").attr('class','');
			$("#li4").attr('class','');
			
			getMapData();
			getLikedList();
			$("#thHouse").text('매물정보');
		});
		
		$(document).on("click", "#houseDiv", function(){
			divNum=1;
			$('#div12').css('display', '');
			$('#div34').css('display', 'none');
			$("#thHouse").text($("#dong").val()+" 매물정보");
			$("#li1").attr('class','active');
			$("#li2").attr('class','');
			$("#li3").attr('class','');
			$("#li4").attr('class','');
			$("#thHouse").text('매물정보');
			
			getMapData();
		});
		
		$(document).on("click", "#storeDiv", function(){
			divNum=2;
			$('#div12').css('display', '');
			$('#div34').css('display', 'none');
			$("#thHouse").text($("#dong").val()+" 상권정보");
			$("#li1").attr('class','');
			$("#li2").attr('class','active');
			$("#li3").attr('class','');
			$("#li4").attr('class','');
			$("#thHouse").text('상권정보');
			
			getMapStoreData();
		});
		
		var divNum=1;	//1: 실거래가, 2: 상권, 3: 실거래가 리스트
		var isCircle=false;	// 현재 반경 그려져 있음?
		var drawCircle=$("#drawCircle").is(":checked");	// 반경 선택?
		
		$(document).on("change", "#drawCircle", function(){
			drawCircle=$("#drawCircle").is(":checked");
			if(!drawCircle) removeCircles();
		})
				
		// 지도 클릭이벤트 생성
		var aptInfowindow;
		$(document).on("click", "#map_container", function(){
			kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
				if(isInfowindow) {
					aptInfowindow.close();
					isInfowindow=false;
				}
			});
		});
		
		// 실거래가 map 데이터 가져오기
		function getMapData(){
		    var dong = $("#dong").val();
		    console.log(dong);
		    
			$.ajax(
			{
		        type : 'get',
		        url : '${root}/map/apt/'+dong,
		        dataType : 'json',
		        data:{
		        	dong: dong
		        },
		        success : function(data, status, xhr) {
		        	positions = data;
		        	console.log(data);
		        	houseMapList();
		        	initMap();
		        	var dongText = $("#dong").val();
		        	if(dongText==0) dongText='';
					$("#thHouse").text(dongText+" 매물정보 ("+data.length+"개)");
		        }, 
		        error: function(jqXHR, textStatus, errorThrown) 
		        { 
		        	console.log(jqXHR.responseText); 
		        }
		    });
			
			$('#houseList_container').css('display', '');
			$('#houseList_detail_container').css('display', 'none');
		}
		
		// 초기 세팅
		function houseMapList(){
			$("#tbodyHouse").empty();
			console.log(positions);
			positions.forEach(function(position) {
				var img_src = position.img;
				if(img_src==null) img_src='/img/아파트기본이미지.png';
				else img_src = "/img/"+img_src;

				let str =
				"<article style='width:100%;height:150px;cursor:pointer;padding-block-end: 7px;' data-id='" + position.no + "' data-name='" + position.aptName + "'>"
				+"<div class='' style='width:35%;float:left;height:100%;'><img src='"+img_src+"' width=100% height=100%/></div>"
				+ "<div><h4 style='text-align:center;'>" + position.aptName + "</h4></div>"
				+ "<div style='text-align:center;'>" + position.dealAmount + ",000 원" + "</div>"
				+ "<div style='text-align:center;'>" + Math.floor(position.area/3) + "평 ("  + position.area + "m2)</div>"
				+ "</article>";
				
				$("#tbodyHouse").append(str);
			});
			if(positions.length==0) {
				$("#tbodyHouse").append("<div style='text-align:center'>매물이 없습니다.</div>");
			}
			
			makeHouseMapListHtmlEventHandler();
		}
		
		var positions;
    	var circles = [];
    	var map;
		function initMap() {
			var c_lat;
			var c_lng;
			
			if(positions.length==0){
				c_lat = 37.5665734;	c_lng = 126.978179;
			}else{
				c_lat = positions[0].lat; c_lng = positions[0].lng;
			}
			
			map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
		        center : new kakao.maps.LatLng(c_lat, c_lng), // 지도의 중심좌표 
		        level : 5 // 지도의 확대 레벨 
		    });
			
			// 마커 클러스터러를 생성합니다 
		    var clusterer = new kakao.maps.MarkerClusterer({
		        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
		        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 ,
		        minClusterSize: 1,
		        minLevel: 1, // 클러스터 할 최소 지도 레벨
		        disableClickZoom: true // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정: 이벤트 만들기 위해서
		    });
			
			
		    // 마커를 생성합니다
		    var markers = positions.map(
		    		function(position, i){
// 		    			console.log(position.lat);
		    			return new kakao.maps.Marker({
				        position: new kakao.maps.LatLng(position.lat, position.lng), // 마커를 표시할 위치
				        title: i,
		    		});
		    });
		    
		 	// 클러스터러에 마커들을 추가합니다
	        clusterer.addMarkers(markers);
			console.log(markers);
	        var inCircleMarkers=[];
	        
	        kakao.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {
		         inCircleMarkers.length=0;
			     // 현재 지도 레벨에서 1레벨 확대한 레벨
			     var level = map.getLevel();
			     if(level <= 3){	// 3까지 확대됐다면?
 	        	 
			     if(drawCircle){
						var center = cluster.getCenter();
				        var line = new kakao.maps.Polyline();
				        var radius = $("#circleRadius").val();	// 300m 반경으로 cluster
						console.log($("#circleRadius").val());
				        markers.forEach(function(marker) { 
				    		    var path = [ marker.getPosition(), cluster.getCenter()];
				    		    line.setPath(path);
				    		    var dist = line.getLength();
	
				    		    if (dist < radius) {
	// 			    		        console.log(marker);
				    		    	inCircleMarkers.push(marker);
				    		    }
				    	});
						
						// 원그리기
				    	var drawingCircle;	// 그려지고 있는 원을 표시할 원 객체입니다
				    	var drawingOverlay;
				    	var circleOptions;	// 그려지고 있는 원의 중심좌표와 반지름입니다
				    	var radiusObj;
				    	removeCircles();	// 기존 원 지우기
				    	
				    	$(".info").text('');
	
			            drawingCircle = new kakao.maps.Circle({ 
			                strokeWeight: 1, // 선의 두께입니다
			                strokeColor: '#00a0e9', // 선의 색깔입니다
			                strokeOpacity: 0.1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
			                strokeStyle: 'solid', // 선의 스타일입니다
			                fillColor: '#00a0e9', // 채우기 색깔입니다
			                fillOpacity: 0.2 // 채우기 불투명도입니다 
			            });
				        drawingOverlay = new kakao.maps.CustomOverlay({
			                xAnchor: 0,
			                yAnchor: 0,
			                zIndex: 1
			            }); 
			            circleOptions = { 
			                center : center, 
			            	radius : radius,                 
			            };
			            
			            drawingCircle.setOptions(circleOptions); // 그려지고 있는 원의 옵션을 설정합니다
			            content = '<div class="info">반경 <span class="number">' + radius + '</span>m</div>'; // 반경 정보를 표시할 커스텀오버레이의 내용입니다
			            drawingOverlay.setContent(content); // 반경 정보를 표시할 커스텀 오버레이의 표시할 내용을 설정합니다
			            drawingCircle.setMap(map); // 그려지고 있는 원을 지도에 표시합니다
			            drawingOverlay.setMap(map); // 그려지고 있는 원의 반경정보 커스텀 오버레이를 지도에 표시합니다
			            
			            radiusObj = {
		                    'circle' : drawingCircle,
		                    'overlay' : drawingOverlay
		                };
			            
			            circles.push(radiusObj);
			            getList(inCircleMarkers);
		        	
		        	}else{
		        		var center = cluster.getCenter();
				        var line = new kakao.maps.Polyline();
				        var radius = 10;	// 300m 반경으로 cluster
				        markers.forEach(function(marker) { 
				    		    var path = [ marker.getPosition(), cluster.getCenter()];
				    		    line.setPath(path);
				    		    var dist = line.getLength();
	
				    		    if (dist < radius) {
				    		    	inCircleMarkers.push(marker);
				    		    }
				    	});
		        		getList(inCircleMarkers);
		        	}
					 $("#thHouse").text($("#dong").val()+"매물정보 ("+inCircleMarkers.length+"개)");
			     }else{
			    	 level = level-2;
			    	 if(level<=3){
			    		 level=3;
			    	 }
				     // 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
				     map.setLevel(level, {anchor: cluster.getCenter()});
			     }
			});
	        
	        kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
				if(isInfowindow) {
					aptInfowindow.close();
					isInfowindow=false;
				}
			});
		}
		
		// 지도 위에있는 반경 지우기
		function removeCircles() {         
		    for (var i = 0; i < circles.length; i++) {
		        circles[i].circle.setMap(null);    
		        circles[i].overlay.setMap(null);
		    }         
		    circles = [];
		}
		
		
		function getList(inCircleMarkers){
			$("#tbodyHouse").empty();
			console.log(inCircleMarkers);
			inCircleMarkers.forEach(function(marker) { 
				var idx = marker.getTitle();
				if(idx=="") idx=0;
				var img_src = positions[idx].img;
				if(img_src==null) img_src='/img/아파트기본이미지.png';
				else img_src = "/img/"+img_src;
				
				let str =
					"<article style='width:100%;height:150px;cursor:pointer;padding-block-end: 7px;' data-id='" + positions[idx].no + "' data-name='" + positions[idx].aptName + "'>"
					+"<div class='' style='width:35%;float:left;height:100%;'><img src='"+img_src+"' width=100% height=100%/></div>"
					+ "<div><h4 style='text-align:center;'>" + positions[idx].aptName + "</h4></div>"
					+ "<div style='text-align:center;'>" + positions[idx].dealAmount + ",000 원" + "</div>"
					+ "<div style='text-align:center;'>" + Math.floor(positions[idx].area/3) + "평 ("  + positions[idx].area + "m2)</div>"
					+ "</article>";
				
				$("#tbodyHouse").append(str);
			});
			
			makeHouseMapListHtmlEventHandler();
		}
		
		function makeHouseMapListHtmlEventHandler(){
			$("#tbodyHouse article").click(function(){
				var aptNo = $(this).attr("data-id");
				var aptName = $(this).attr("data-name");
				console.log(aptNo);
				console.log(aptName);
				$('#houseList_container').css('display', 'none');
				$('#houseList_detail_container').css('display', '');
				
				showDetail(aptNo, aptName);
			});
		}
		
		var details;	// 상세정보 저장
		function showDetail(aptNo, aptName){
			var dong = $("#dong").val();
			console.log(aptNo);
			console.log(aptName);
			var apt = {
					aptName: aptName,
					dong: dong
			};
			console.log(apt);
			$.ajax(
			{
		        type : 'post',
		        url : '${root}/house/view/' + aptNo,
		        dataType : 'json',
		        data : JSON.stringify( apt ),
	            contentType : 'application/json',
		        success : function(data, status, xhr) {
		        	console.log(data);
		        	details = data;
		        	setDetail();
		        }, 
		        error: function(jqXHR, textStatus, errorThrown) 
		        {
		        	console.log("apt 상세정보 받기 오류!");
		        }
		    });
		}
		

		var isInfowindow=false;	//infowindow 생성?
		function panTo(detail) {
			console.log("detail ");
			console.log(detail);
		    // 이동할 위도 경도 위치를 생성합니다
		    var iwPosition = new kakao.maps.LatLng(detail.lat, detail.lng);
		    var moveLatLon = iwPosition;
		    
		    // 지도 중심을 부드럽게 이동시킵니다
		    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
		    map.panTo(moveLatLon);
		    var contents;
		    if(detail.aptName!=null) contents=detail.aptName
		    if(detail.shopname!=null) contents=detail.shopname;
		    aptInfowindow = new kakao.maps.InfoWindow({
		    	map: map,
		    	position: iwPosition,
		    	content: contents
		    });
		    isInfowindow=true;
		}   
		
		function setDetail(){
			panTo(details);
			
			console.log(details);
			console.log('${user.uid}');
			$("#tdetailHouse").empty();
			
			var tableD = 
			  "<thead style='font-size:14pt;'><tr><th style='width:20%'><img id='backBtn' src='/img/backarrow.png' style='width:25px; height:25px; cursor:pointer;'/></th><th style='text-align:center;'><strong>" + details.aptName +"</strong></th>"
			+ "<th><img id='likedImg' src='^IMG_SRC' style='width:25px; height:25px; cursor:pointer;' onclick='javascript:like("+ details.no +");'/></th></tr></thead>"
			+ "<tbody><tr><td colspan='3' style='text-align:center;'>" + "<img src='^APT_IMG_SRC' style='width:100%;'/>" + "</td></tr><tr>"
			+ "<td colspan='2' style='text-align:center;'><strong>" + details.dealAmount + ",000</strong></td><td>원</td></tr>"
			+ "<tr><td>동</td><td colspan='2'>" + details.dong + "</td></tr>"
			+ "<tr><td>건립일</td>" + "<td colspan='2'>" + details.buildYear + "</td></tr>"
// 			+ "<tr><td colspan='3'></td></tr>"
			+ "<tr><td colspan='3'>위치<div id='staticMap' style='width:95%;height:200px;'><a href='https://map.kakao.com/link/to/"+ details.aptName + "," + details.lat + "," + details.lng +"' target='_sub'>길찾기</a></div></td></tr>"
			+ "<tr><td>평수</td>" + "<td colspan='2'>" + Math.floor(details.area/3) + "평 ("  + details.area + "m2)" + "</td></tr>"
			+ "<tr><td>1인당 공원 면적</td>" + "<td colspan='2'>" + details.perpark + "</td></tr>"
			+ "<tr><td>미세먼지 농도</td>" + "<td colspan='2'>" + details.finedust + "</td></tr>"
			+"</tbody>"
			;
			
			// 찜목록 이미지
			console.log(likedList.filter(liked=>liked.no==details.no));
			if(likedList.filter(liked=>liked.no==details.no).length!=0){
				tableD = tableD.replace('^IMG_SRC', '/img/liked.png');
			}else{
				tableD = tableD.replace('^IMG_SRC', '/img/like.png');
			}
			
			// 아파트 이미지
			if(details.img==null){
				tableD = tableD.replace('^APT_IMG_SRC', '/img/아파트기본이미지.png');
			}else {
				console.log(details.img);
				tableD = tableD.replace('^APT_IMG_SRC', '/img/'+details.img);
			}
			
			$("#tdetailHouse").append(tableD);
			detailBackEventHandler();
			makeStaticMap(details);
		}
		
		function makeStaticMap(detail) {
			// 이미지 지도에서 마커가 표시될 위치입니다 
			var markerPosition  = new kakao.maps.LatLng(detail.lat, detail.lng); 

			// 이미지 지도에 표시할 마커입니다
			// 이미지 지도에 표시할 마커는 Object 형태입니다
			var marker = {
			    position: markerPosition
			};

			var staticMapContainer  = document.getElementById('staticMap'), // 이미지 지도를 표시할 div  
			    staticMapOption = { 
			        center: markerPosition, // 이미지 지도의 중심좌표
			        level: 3, // 이미지 지도의 확대 레벨
			        marker: marker // 이미지 지도에 표시할 마커 
			    };    

			// 이미지 지도를 생성합니다
			var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
		}
		
		function detailBackEventHandler(){
			$("#backBtn").click(function(){
				likedList.length=0;
				getLikedList();
				$('#houseList_container').css('display', '');
				$('#houseList_detail_container').css('display', 'none');
			});
		}
		
		// 상권정보 map 데이터 가져오기
		function getMapStoreData(){
		    var dong = $("#dong").val();
		    console.log(dong);
		    
			$.ajax(
			{
		        type : 'get',
		        url : '${root}/store/'+dong,
		        dataType : 'json',
		        data:{
		        	dong: dong
		        },
		        success : function(data, status, xhr) {
		        	console.log(data);
		        	stores = data;
		        	storeMapList();	//초기 세팅
		        	initStoreMap();
		        	var dongText = $("#dong").val();
		        	if(dongText==0) dongText='';
		        	$("#thHouse").text(dongText+"상권정보 ("+data.length+"개)");
		        }, 
		        error: function(jqXHR, textStatus, errorThrown) 
		        { 
		        	console.log(jqXHR.responseText); 
		        }
		    });
			$('#houseList_container').css('display', '');
			$('#houseList_detail_container').css('display', 'none');
		}
		
		// 상권정보 map 만들기
		var stores;
		function initStoreMap(){
			var c_lat;
			var c_lng;
			
			if(stores.length==0){
				c_lat = 37.5665734;	c_lng = 126.978179;
			}else{
				c_lat = stores[0].lat; c_lng = stores[0].lng;
			}
			
			var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
		        center : new kakao.maps.LatLng(c_lat, c_lng), // 지도의 중심좌표 
		        level : 3 // 지도의 확대 레벨 
		    });
			
			// 마커 클러스터러를 생성합니다 
		    var clusterer = new kakao.maps.MarkerClusterer({
		        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
		        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 ,
		        minClusterSize: 1,
		        minLevel: 1, // 클러스터 할 최소 지도 레벨
		        disableClickZoom: true // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정: 이벤트 만들기 위해서
		    });
			
		    // 마커를 생성합니다
		    var markers = stores.map(
		    		function(store, i){
// 		    			console.log(position.lat);
		    			return new kakao.maps.Marker({
				        position: new kakao.maps.LatLng(store.lat, store.lng), // 마커를 표시할 위치
				        title: i,
		    		});
		    });
		    
		 	// 클러스터러에 마커들을 추가합니다
	        clusterer.addMarkers(markers);
			console.log(markers);
	        var inCircleMarkers=[];

	        kakao.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {
	        	inCircleMarkers.length=0;
			     // 현재 지도 레벨에서 1레벨 확대한 레벨
			     var level = map.getLevel();
			     if(level <= 3){	// 3까지 확대됐다면?
	        	 
			     if(drawCircle){
						var center = cluster.getCenter();
				        var line = new kakao.maps.Polyline();
				        var radius = $("#circleRadius").val();	// 300m 반경으로 cluster
						console.log($("#circleRadius").val());
				        markers.forEach(function(marker) { 
				    		    var path = [ marker.getPosition(), cluster.getCenter()];
				    		    line.setPath(path);
				    		    var dist = line.getLength();
	
				    		    if (dist < radius) {
	// 			    		        console.log(marker);
				    		    	inCircleMarkers.push(marker);
				    		    }
				    	});
						
						// 원그리기
				    	var drawingCircle;	// 그려지고 있는 원을 표시할 원 객체입니다
				    	var drawingOverlay;
				    	var circleOptions;	// 그려지고 있는 원의 중심좌표와 반지름입니다
				    	var radiusObj;
				    	removeCircles();	// 기존 원 지우기
				    	
				    	$(".info").text('');
	
			            drawingCircle = new kakao.maps.Circle({ 
			                strokeWeight: 1, // 선의 두께입니다
			                strokeColor: '#00a0e9', // 선의 색깔입니다
			                strokeOpacity: 0.1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
			                strokeStyle: 'solid', // 선의 스타일입니다
			                fillColor: '#00a0e9', // 채우기 색깔입니다
			                fillOpacity: 0.2 // 채우기 불투명도입니다 
			            });
				        drawingOverlay = new kakao.maps.CustomOverlay({
			                xAnchor: 0,
			                yAnchor: 0,
			                zIndex: 1
			            }); 
			            circleOptions = { 
			                center : center, 
			            	radius : radius,                 
			            };
			            
			            drawingCircle.setOptions(circleOptions); // 그려지고 있는 원의 옵션을 설정합니다
			            content = '<div class="info">반경 <span class="number">' + radius + '</span>m</div>'; // 반경 정보를 표시할 커스텀오버레이의 내용입니다
			            drawingOverlay.setContent(content); // 반경 정보를 표시할 커스텀 오버레이의 표시할 내용을 설정합니다
			            drawingCircle.setMap(map); // 그려지고 있는 원을 지도에 표시합니다
			            drawingOverlay.setMap(map); // 그려지고 있는 원의 반경정보 커스텀 오버레이를 지도에 표시합니다
			            
			            radiusObj = {
		                    'circle' : drawingCircle,
		                    'overlay' : drawingOverlay
		                };
			            
			            circles.push(radiusObj);
			            getStoreList(inCircleMarkers);
		        	
		        	}else{
		        		var center = cluster.getCenter();
				        var line = new kakao.maps.Polyline();
				        var radius = 10;	// 300m 반경으로 cluster
				        markers.forEach(function(marker) { 
				    		    var path = [ marker.getPosition(), cluster.getCenter()];
				    		    line.setPath(path);
				    		    var dist = line.getLength();
	
				    		    if (dist < radius) {
				    		    	inCircleMarkers.push(marker);
				    		    }
				    	});
				        getStoreList(inCircleMarkers);
		        	}
			     	$("#thHouse").text($("#dong").val()+"상권정보 ("+inCircleMarkers.length+"개)"); 
			     }else{
			    	 level = level-2;
			    	 if(level<=3){
			    		 level=3;
			    	 }
				     // 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
				     map.setLevel(level, {anchor: cluster.getCenter()});
			     }
			});
		}
		
		// 상권 초기 리스트
		// 초기 세팅
		function storeMapList(){
			$("#tbodyHouse").empty();
			console.log(stores);
			stores.forEach(function(store) {
				
				let str =
					"<article style='width:100%;height:150px;cursor:pointer;padding-block-end: 7px;' data-id='" + store.no + "'>"
					+"<div class='' style='width:35%;float:left;height:100%;'><img src='/img/store.png' width=85% height=85%/></div>"
					+ "<div><div><h4 style='text-align:center;'>" + store.shopname + "</h4></div>"
					+ "<div style='text-align:center;'>" + store.address + "</div>"
					+ "<div style='text-align:center;'>" + store.codename4 + "</div>"
					+ "</div></article>";
				$("#tbodyHouse").append(str);
			});
			if(stores.length==0) {
				$("#tbodyHouse").append("<td colspan='5' align='center'>주위 상권이 없습니다.</td>");
			}
			
			makeStoreListHtmlEventHandler();
		}
		
		// 상권 리스트
		function getStoreList(inCircleMarkers){
			$("#tbodyHouse").empty();
			console.log(inCircleMarkers);
			inCircleMarkers.forEach(function(marker) { 
				var idx = marker.getTitle();
				if(idx=="") idx=0;
				
				let str =
					"<article style='width:100%;height:150px;cursor:pointer;padding-block-end: 7px;' data-id='" + stores[idx].no + "'>"
					+"<div class='' style='width:35%;float:left;height:100%;'><img src='/img/store.png' width=95% height=95%/></div>"
					+ "<div><h4 style='text-align:center;'>" + stores[idx].shopname + "</h4></div>"
					+ "<div style='text-align:center;'>" + stores[idx].address + "</div>"
					+ "<div style='text-align:center;'>" + stores[idx].codename4 + "</div>"
					+ "</article>";
				$("#tbodyHouse").append(str);
			});
			
			makeStoreListHtmlEventHandler();
		}
		
		// 상권 리스트 detail
		function makeStoreListHtmlEventHandler(){
			$("#tbodyHouse article").click(function(){
				var storeNo = $(this).attr("data-id");
				console.log(storeNo);
				$('#houseList_container').css('display', 'none');
				$('#houseList_detail_container').css('display', '');
				
				showStoreDetail(storeNo);
			});
		}
		
		var storeDetails;	// 상세정보 저장
		function showStoreDetail(storeNo){
			var dong = $("#dong").val();
			console.log(storeNo);
			
			$.ajax(
			{
		        type : 'get',
		        url : '${root}/store/detail/' + storeNo,
		        dataType : 'json',
		        success : function(data, status, xhr) {
		        	console.log(data);
		        	storeDetails = data;
		        	setStoreDetail();
		        }, 
		        error: function(jqXHR, textStatus, errorThrown) 
		        {
		        	console.log("store 상세정보 받기 오류!");
		        }
		    });
		}
		
		function setStoreDetail(){
			panTo(storeDetails);
			console.log(storeDetails);
			console.log('${user.uid}');
			$("#tdetailHouse").empty();
			
			var tableD = 
			  "<thead style='font-size:14pt;'><tr><th><img id='backBtn' src='/img/backarrow.png' style='width:25px; height:25px; cursor:pointer;'/></th><th style='text-align:center;'><strong>" + storeDetails.shopname +"</strong></th>"
			+ "<th></th></tr></thead>"
			+ "<tr><td colspan='3'>위치<div id='staticMap' style='width:95%;height:200px;'><a href='https://map.kakao.com/link/to/"+ storeDetails.shopname + "," + storeDetails.lat + "," + storeDetails.lng +"' target='_sub'>길찾기</a></div></td></tr>"
			+ "<tr><td>주소</td><td colspan='2'>" + storeDetails.address + "</td></tr>"
			+ "<tr><td>대분류</td>" + "<td colspan='2'>" + storeDetails.codename1 + "</td></tr>"
			+ "<tr><td>중분류</td>" + "<td colspan='2'>" + storeDetails.codename2 + "</td></tr>"
			+ "<tr><td>소분류</td>" + "<td colspan='2'>" + storeDetails.codename3 + "</td></tr>"
			+"</tbody>"
			;
			
			$("#tdetailHouse").append(tableD);
			detailBackEventHandler();
			makeStaticMap(storeDetails);
		}
		
		// 찜목록 불러오기
		var likedList=[];	// 찜목록 불러오기
		function like(no){
			if('${user.uid}'.length==0){
				alert("찜하기 서비스: 로그인을 해주세요");
			}else{
				if($("#likedImg").attr('src')=='/img/liked.png'){	// 이미 찜목록으로 눌려있다면
					// ajax 통신으로 delete하기
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
				        		$("#likedImg").attr('src', '/img/like.png');
				        	}
				        }, 
				        error: function(jqXHR, textStatus, errorThrown) 
				        { 
				        	console.log(jqXHR.responseText); 
				        }
				    });
				}else{
					// ajax 통신으로 put하기
					$.ajax(
					{
				        type : 'post',
				        url : '${root}/user/liked/'+no,
				        dataType : 'json',
				        data:{
				        },
				        success : function(data, status, xhr) {
				        	if(data==1){
				        		console.log("성공");
				        		$("#likedImg").attr('src', '/img/liked.png');
				        	}
				        }, 
				        error: function(jqXHR, textStatus, errorThrown) 
				        { 
				        	console.log(jqXHR.responseText); 
				        }
				    });
				}
			}
		}
		
		function getLikedList(){
			console.log('${user.uid}');
			if('${user.uid}'.length>0){
				$.ajax(
				{
			        type : 'get',
			        url : '${root}/user/likedList/',
			        dataType : 'json',
			        data:{
			        },
			        success : function(data, status, xhr) {
			        	likedList=data;
			        	console.log(likedList);
			        }, 
			        error: function(jqXHR, textStatus, errorThrown) 
			        { 
			        	console.log(jqXHR.responseText); 
			        }
			    });
			}
		}
				
		
		// When the user clicks on the button, scroll to the top of the document
		function topFunction() {
			$("#houseList_container").scrollTop(0);
		}
		</script>

	<script src="${root}/js/util.js"></script>	
	<script>

		var LIST_ROW_COUNT = 10;	//limit
		var OFFSET = 0;
		var PAGE_LINK_COUNT = 10;	// pagination link 갯수
		var TOTAL_LIST_ITEM_COUNT = 0;
		var CURRENT_PAGE_INDEX = 1;

		$(document).ready(function() {
			//검색 버튼 클릭
			$("#search").click(function(){
				OFFSET=0;
				CURRENT_PAGE_INDEX = 1;
				
				if(divNum==3){
					houseList();
				}else if(divNum==4){
					storeList();
				}
			});
		});
		
		$(document).on("click", "#houseListDiv", function(){
			$("#1").prop("checked", true);
			divNum=3;
			$('#div12').css('display', 'none');
			$('#div34').css('display', '');
			$('#searchText').val('');
			$('.checkDiv').css('display', 'inline-grid');
			$("#li1").attr('class','');
			$("#li2").attr('class','');
			$("#li3").attr('class','active');
			$("#li4").attr('class','');
			$("#trHouseList").html("");
			$("#trHouseList").append("<th style='width:10%;'>번호</th><th style='width:10%'>동</th><th style='width:35%'>아파트이름</th><th style='width:25%'>거래금액</th><th style='width:20%'>거래종류</th>");
			$('#searchField').val("ALL");
			
			// 초기화
			OFFSET=0;
			LIST_ROW_COUNT = 10;	//limit
			TOTAL_LIST_ITEM_COUNT = 0;
			CURRENT_PAGE_INDEX = 1;
			
			// houseList 불러오기
			houseList();
		});
		
		$(document).on("click", "#storeListDiv", function(){
			divNum=4;
			$('#div12').css('display', 'none');
			$('#div34').css('display', '');
			$('#searchText').val('');
			$('.checkDiv').css('display', 'none');
			$("#li1").attr('class','');
			$("#li2").attr('class','');
			$("#li3").attr('class','');
			$("#li4").attr('class','active');
			$("#trHouseList").html("");
			$("#trHouseList").append("<th style='width:25%'>상호</th><th style='width:10%'>동</th><th style='width:15%'>대분류</th><th style='width:15%'>중분류</th><th style='width:35%'>주소</th>");
			$('#searchField').val("ALL");
			
			// 초기화
			OFFSET=0;
			LIST_ROW_COUNT = 10;	//limit
			TOTAL_LIST_ITEM_COUNT = 0;
			CURRENT_PAGE_INDEX = 1;
			
			// storeList 불러오기
			storeList();
		});
		
		function houseList() {
			var formdata = $("#housedealForm").serialize();
			$.ajax({
				url:"${root}/house/search/"+OFFSET,
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				type:"POST",
				data:formdata,
				dataType : 'json', 
				error:function(request,status,error){
	            	alert("실패");
	            	alert(request.status);
	                console.log(error); 
	            },
	            success:function(data){
	            	console.log(data);
	                makeListHtml(data);
				}
	    	});
		}
		function makeListHtml(list){
			$("#houseDealList").html("");
			
			for( var i=0; i<list.length; i++){
				
				var no = list[i].no;
				var dong = list[i].dong;
				var aptName = list[i].aptName;
				var dealAmount = list[i].dealAmount;
				var type = list[i].type;
				
				var listHtml =
					'<tr style="cursor:pointer" data-boardNo =' + no +' data-boardAptName ='+ aptName + ' data-boardDong =' + dong + '><td>' + no + '</td><td>' + dong + '</td><td>' + aptName + '</td><td>' + dealAmount + '</td><td>' +  typeToText(type) + '</td></tr>';
	
				$("#houseDealList").append(listHtml);
				
		}
			makeHouseListHtmlEventHandler();
			houseListTotalCnt();
		}
		
		// totalCount 받아오기
		function houseListTotalCnt() {
			var formdata = $("#housedealForm").serialize();
			$.ajax({
				url:"${root}/house/total",
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				type:"POST",
				data:formdata,
				dataType : 'json', 
		        success : function(data, status, xhr) {
		        	console.log(data);
		        	TOTAL_LIST_ITEM_COUNT = data;
		        	addPagination();
		        }, 
		        error: function(jqXHR, textStatus, errorThrown) 
		        { 
		        	console.log("totalcnt 이상");
		        }
		    });
		}
		
		function addPagination(){
			makePaginationHtml(LIST_ROW_COUNT, PAGE_LINK_COUNT, CURRENT_PAGE_INDEX, TOTAL_LIST_ITEM_COUNT, "paginationWrapper" );
		}
		
		
		function movePage(pageIndex){
			OFFSET = (pageIndex - 1) * LIST_ROW_COUNT;
			CURRENT_PAGE_INDEX = pageIndex;
			
			if(divNum==3){
				houseList();
			}else if(divNum==4){
				storeList();
			}
		}
		
		// --- 상권 리스트 페이징 시작 ----
		function storeList() {
			var formdata = $("#housedealForm").serialize();
			$.ajax({
				url:"${root}/store/search/"+OFFSET,
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				type:"POST",
				data:formdata,
				dataType : 'json', 
				error:function(request,status,error){
	            	alert("실패");
	            	alert(request.status);
	                console.log(error); 
	            },
	            success:function(data){
	            	console.log(data);
	                makeStoreListHtml(data);
				}
	    	});
		}
		
		function makeStoreListHtml(list){
			$("#houseDealList").html("");
			
			for( var i=0; i<list.length; i++){
				
				var no = list[i].no;
				var dong = list[i].dong;
				var shopname = list[i].shopname;
				var codename1 = list[i].codename1;
				var codename2 = list[i].codename2;
				var address = list[i].address;
				
				var listHtml =
					'<tr style="cursor:pointer" data-boardNo =' + no +' data-boardShopName ='+ shopname + ' data-boardDong =' + dong + '><td>' + shopname + '</td><td>' + dong + '</td><td>' + codename1 + '</td><td>' + codename2 + '</td><td>' +  address + '</td></tr>';
	
				$("#houseDealList").append(listHtml);
				
		}
// 			makeStoreListHtmlEventHandler();
			storeListTotalCnt();
		}
		
		// totalCount 받아오기
		function storeListTotalCnt() {
			var formdata = $("#housedealForm").serialize();
			$.ajax({
				url:"${root}/store/total",
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				type:"POST",
				data:formdata,
				dataType : 'json', 
		        success : function(data, status, xhr) {
		        	console.log(data);
		        	TOTAL_LIST_ITEM_COUNT = data;
		        	addPagination();
		        }, 
		        error: function(jqXHR, textStatus, errorThrown) 
		        { 
		        	console.log("totalcnt 이상");
		        }
		    });
		}
		// --- 상권 리스트 페이징 끝 ----
		
		 // 아파트 모달 설정 및 리스트 세부 설정해주기
		 function typeToText(type){
			 switch(type){
			 case '1' : return '아파트 매매';
			 case '2' : return '연립 다세대 매매';
			 case '3' : return '아파트 전월세';
			 case '4' : return '연립 다세대 전월세';
			 }
			 return type;
		 };
		
		function makeHouseListHtmlEventHandler(){
			$("#houseDealList tr").click(function(){
				var boardNo = $(this).attr("data-boardNo");
				var boardAptName = $(this).attr("data-boardAptName");
				var boardDong = $(this).attr("data-boardDong");
				var apt = {
						aptName: boardAptName,
						dong: boardDong
				};
				console.log(apt);
				
				console.log(boardNo);
				console.log(boardAptName);
				
				$("#houseDetailModal").show(function(){
					 $.ajax({
			             url:"${root}/house/view/" + boardNo ,
			             type:"POST",
			             dataType : 'json',
			             data : JSON.stringify( apt ),
			             contentType : 'application/json',
			             error:function(request,status,error){
			                 alert("실패");
			                 alert(request.status);
			                 console.log(error); 
			             },
			             success:function(data){
			                 console.log(data);
			                 showDetailHouseInfo(data);
			             }
			         }); 
				});
			});
		}
		
		function showDetailHouseInfo(data){
			$("#houseDetilaModalBody").html('');
			var innerhtml= '<tr><th>주택명</th><td>'+data.aptName+'</td></tr><tr><th>거래금액</th> <td>'+data.dealAmount+'</td>'+
		         +'</tr><tr><th >건축연도</th><td>'+data.buildYear+'년</td></tr><tr><th >전용면적</th><td>'+data.area+'</td></tr>'+
		         '<tr><th >거래일</th><td>'+data.dealYear+'년 '+data.dealMonth+'월  '+data.dealDay+'일</td></tr><tr><th >법정동</th><td>'+data.dong+'</td>'+
		         '</tr><tr><th >지번</th><td>'+data.jibun+'</td></tr><tr><th >면적</th><td>'+data.perarea+'</td></tr><tr><th >1인당공원면적</th><td>'+data.perpark+'</td></tr>'
		         +'<tr><th >미세먼지농도</th><td>'+data.finedust+'</td></tr>';
		         
		  $("#houseDetilaModalBody").html(innerhtml);
		}
		
		function modalButtonClose(){
			$("#houseDetailModal").hide();
		}
		
		</script>
		
	
	</body>
</html>