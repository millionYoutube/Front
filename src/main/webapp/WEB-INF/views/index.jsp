<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Million Youtuber</title>
<%--  <link rel="shortcut icon" href="favicon.ico" type="image/" /> --%>

<link rel="stylesheet" href="resources/css/style.css" />
<link rel="stylesheet" type="text/css" href="resources/css/slick.css">
<link rel="stylesheet" type="text/css" href="resources/css/maincontent.css">

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://kit.fontawesome.com/326e1cf751.js"
	crossorigin="anonymous"></script>
<script src="js/common.js"></script>
<script type="text/javascript" src="resources/js/slick.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('.slick-track').slick({
                    arrows:false,
                    dots: false,
                    infinite: true,
                    autoplay: true, //자동플레이 유무( false시 자동플레이 안됨 )
                    autoplaySpeed: 3000, // 자동플레이 스피드
                    speed: 500,
                    fade: true,
                    cssEase: 'linear'
                });
                
                $('ul.tab li ul li').click(function() {
                    var activeTab = $(this).attr('data-tab');
                    $('ul.tab li ul li').removeClass('current');
                      $('.tabcontent').removeClass('current');
                      $(this).addClass('current');
                      $('#' + activeTab).addClass('current');
                 });
         		
         		$(".next_button").click(function(){
         			
         		});

/*                 
                function show(){
                    $('#table_all').show();
                }
                function hide(){
                    $('#table_all').hide();
                } */
               
            });
        </script>


</head>
<body>
	<div class="headerbg"></div>
	<header>
		<div id="header-top">
			<img src="resources/img/P_Logo.png" id="logo" alt="main_logo"> <input
				id="login" type="button" value="Login"
				onClick="location.href='pages/users/login.jsp'">
		</div>
		<div id="header-contents">
			<div id="header-search">
				<input type="text" name="SearchVal"
					placeholder="채널 키워드 또는 영상 내용을 검색해주세요"> <a href="#"><img
					src="resources/img/search_icon.png"> 검색</a>
			</div>
			<div id="header-video" class="slick-slider">
				<div id="sstitle">오늘의 인기 동영상</div>
				<div class="slick-list">
					<div class="slick-track" style="opacity: 1;">
						<div>
							<div class="videotext">
								<div class="videoTitle">
									<a href="https://www.youtube.com/watch?v=Sd61rG4_-Sc&t=6s"
										target="_blank">밸런스게임</a>
								</div>
								<div class="channelName">
									<a href="https://www.youtube.com/user/NewSundaySBS"
										target="_blank">런닝맨 - 스브스 공식 채널</a>
								</div>
							</div>
							<div class="youtubevideo">
								<a href="https://www.youtube.com/watch?v=Sd61rG4_-Sc&t=6s"
									target="_blank"><img src="resources/img/testimg2.png"
									class="Thumbnail"></a>
							</div>
						</div>
						<div>
							<div class="videotext">
								<div class="videoTitle">
									<a href="https://www.youtube.com/watch?v=LPwxjynAwLI"
										target="_blank">[IU TV] 아이유의 유스케 정복기</a>
								</div>
								<div class="channelName">
									<a
										href="https://www.youtube.com/channel/UC3SyT4_WLHzN7JmHQwKQZww"
										target="_blank">이지금 [IU Official]</a>
								</div>
							</div>
							<div class="youtubevideo">
								<a href="https://www.youtube.com/watch?v=LPwxjynAwLI"
									target="_blank"><img src="resources/img/testimg3.png"
									class="Thumbnail"></a>
							</div>
						</div>
						<div>
							<div class="videotext">
								<div class="videoTitle">
									<a href="https://www.youtube.com/watch?v=zhvO6w-pwWE"
										target="_blank">[#하이라이트#]e스포츠의 전설 '페이커' 유퀴즈 등판!</a>
								</div>
								<div class="channelName">
									<a
										href="https://www.youtube.com/channel/UC920m3pMPH45qztdhppZhwA"
										target="_blank">유 퀴즈 온 더 튜브</a>
								</div>
							</div>
							<div class="youtubevideo">
								<a href="https://www.youtube.com/watch?v=zhvO6w-pwWE"
									target="_blank"><img src="resources/img/testimg1.png"
									class="Thumbnail"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="contents">
		<div id="hr"></div>
		<div>
			<div class="left">
			<script> <%-- 리스트 불러오기 --%>
				function viewSelectList(idx){
					if(idx==1){ //이전 버튼 클릭
						$(".big_list1").css("display","");
						$(".big_list2").css("display","none");
					}else if(idx==2){ //다음 버튼 클릭
						$(".big_list1").css("display","none");
						$(".big_list2").css("display","");
					}
				}
				
				function viewSelectTable(idx){
					if(idx==1){
						$("#table_all").css("visibility","visible");
						$("#table_game").css("visibility","hidden");
					}else if(idx==3){
						$("#table_all").css("visibility","hidden");
						$("#table_game").css("visibility","hidden");
					}
				}
				
                function getJson(urlName){
                    
                    $.ajax({
                       url : urlName,
                       type:"GET",
                       dataType : "json",
                       mimeType: "application/json",
                       success : function(result){
                          makeTable(result, ".table_content");
                       }
                    });
                    var tableData="";
                 function makeTable(result, id){
                       var list = $(id).empty();
                      $(result).each(function(index, value) {
                      	if(index<3){
                         		tableData = tableData + "<tr><td scope='row'><img src='/src/main/webapp/resources/"+value.RankImg+"' width=50 height=40></td>";
                      	}
                      	else if(index>=3){
                      		tableData = tableData + "<tr><td scope='row'>"+(index+1)+"</td>";
                      	}
                          tableData = tableData + "<td class='profile'><img src='resources/img"+value.Profile+"' width=90 height=90> </td>";
                          tableData = tableData + "<td><div><div class='channel_name'>"+value.Name+"</div><div class='channel_subscribers'>"+value.Subscribers+"</div></div></td>";
                          tableData = tableData +   "<td class='main_video'><a href='"+value.MainVideo+"' target='_blank'><img src='resources/img/" +value.Profile+"' width=140 height=90></td></tr>";
                      });
                   $(".table_content").append(tableData);
                    }
                 }
			</script>
				<div class="contentsTitle">
					<img src="resources/img/ranking.png" width=70 height=50>랭킹순위
				</div>
				<div class="sub_catergory1" align="center">
					<input class="prev_button" type="button" value="이전" onclick="viewSelectList(1);" />
					<ul class="tab">
                    <li class="big_list1">
                        <ul>
                            <li class="button_category current" data-tab="tab1"> <a class="" onclick="viewSelectTable(1);">전체</a> </li>
                            <li class="button_category" data-tab="tab2"> <a class="" onclick="viewSelectTable(2);">음악</a> </li>
                            <li class="button_category" data-tab="tab3"> <a class="" onclick="getJson('resources/json/tableGame.json'); viewSelectTable(3);">게임</a> </li>
                        </ul>
                    </li>

                    <li class="big_list2" style="display:none;">
                        <ul>
                            <li class="button_category" data-tab="tab1"> <a class="" onclick=" viewSelectTable(4);">영화</a> </li>
                            <li class="button_category" data-tab="tab2"> <a class="" onclick="viewSelectTable(5);">학습</a> </li>
                            <li class="button_category" data-tab="tab3"> <a class="" onclick="viewSelectTable(6);">스포츠</a> </li>
                        </ul>
                    </li>
                	</ul>
					<input class="next_button" type="button" value="다음" onclick="viewSelectList(2);" />
				<script>
                $(function(){
                  
                  $.ajax({
                     url : ".resources/json/tableAll.json",
                     type:"GET",
                     dataType : "json",
                     mimeType: "application/json",
                     success : function(result){
                        makeTable(result, ".table_content");
                     }
                  });
                  var tableData="";
               function makeTable(result, id){
                     var list = $(id).empty();
                    $(result).each(function(index, value) {
                    	if(index<3){
                       		tableData = tableData + "<tr><td scope='row'><img src='"+value.RankImg+"' width=50 height=40></td>";
                    	}
                    	else if(index>=3){
                    		tableData = tableData + "<tr><td scope='row'>"+(index+1)+"</td>";
                    	}
                        tableData = tableData + "<td class='profile'><img src='"+value.Profile+"' width=90 height=90> </td>";
                        tableData = tableData + "<td class='genre' >"+value.Genre+"</td>";
                        tableData = tableData + "<td><div><div class='channel_name'>"+value.Name+"</div><div class='channel_subscribers'>"+value.Subscribers+"</div></div></td>";
                        tableData = tableData +   "<td class='main_video'><a href='"+value.MainVideo+"' target='_blank'><img src='" +value.Profile+"' width=140 height=90></td></tr>";
                    });
                 $(".table_content").append(tableData);
                  }
               }); 
            	</script>

				</div>


				<table id="table_all">
					<!--  style ="visibility:hidden;" -->
					<thead></thead>
					<tbody class="table_content"></tbody>
				</table>


			</div>
			<div class="right">
				<div class="contentsTitle">새로운 컨텐츠</div>
				<div>로그인 전에는 페이지 소개? - 로그인 후 개인맞춤형 서비스를 이용해보세요! 등의 문구</div>
				<div>로그인 후에는 "내 구독자 인기 현황" 이라던지, 구독자들끼리의 채팅방?(기존에 없는 서비스이긴하지만
					어려울 것 + 지저분할 우려가 있을 것 같음) 게시판도 괜찬을듯!</div>
			</div>
		</div>
	</div>

	<footer>
		<div id="hr"></div>
		<div class="footertext">
			<div class="atag">
				<a href="#">이용 안내</a> | <a href="#">개발 팀 소개</a> | <a href="#">사용
					API 안내</a> | <a href="#">개인정보처리방침</a> | <a href="#">SiteMap</a>
			</div>
			<div class="copyright">Copyright &copy; 100 Millionaire, 2020.
				All Rights Reserved.</div>
		</div>
		<div class="footerlogo">
			<img src="resources/img/P_Logo.png" alt="footer_logo">
		</div>
	</footer>
	<a href="#" class="btn_gotop"> <img src="resources/img/arrow.png">
	</a>
</body>
</html>

