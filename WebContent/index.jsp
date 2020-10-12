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
<link rel="shortcut icon" href="favicon.ico" type="image/" />

<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/slick.css">
<link rel="stylesheet" type="text/css" href="css/maincontent.css">

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://kit.fontawesome.com/326e1cf751.js"
	crossorigin="anonymous"></script>
<script src="js/common.js"></script>
<script type="text/javascript" src="js/slick.min.js"></script>
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
                
         		$('ul.tab li').click(function() {
           			var activeTab = $(this).attr('data-tab');
            		$('ul.tab li').removeClass('current');
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
			<img src="img/P_Logo.png" id="logo" alt="main_logo"> <input
				id="login" type="button" value="Login"
				onClick="location.href='pages/users/login.jsp'">
		</div>
		<div id="header-contents">
			<div id="header-search">
				<input type="text" name="SearchVal"
					placeholder="채널 키워드 또는 영상 내용을 검색해주세요"> <a href="#"><img
					src="img/search_icon.png"> 검색</a>
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
									target="_blank"><img src="img/testimg2.png"
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
									target="_blank"><img src="img/testimg3.png"
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
									target="_blank"><img src="img/testimg1.png"
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
				<div class="contentsTitle">
					<img src="img/ranking.png" width=70 height=50>랭킹순위
				</div>
				<div class="sub_catergory1" align="center">
					<input class=prev_button" type="button" value="이전">
					<ul class="tab">
                    <li class="big_list1">
                        <ul>
                            <li class="button_category current" data-tab="tab1"> <a class="">전체</a> </li>
                            <li class="button_category" data-tab="tab2"> <a class="">음악</a> </li>
                            <li class="button_category" data-tab="tab3"> <a class="">게임</a> </li>
                        </ul>
                    </li>

                    <li class="big_list2">
                        <ul>
                            <li class="button_category" data-tab="tab1"> <a class="">영화</a> </li>
                            <li class="button_category" data-tab="tab2"> <a class="">학습</a> </li>
                            <li class="button_category" data-tab="tab3"> <a class="">스포츠</a> </li>
                        </ul>
                    </li>
                </ul>
					<input class="next_button" type="button" value="다음">
					<!-- <a class="button_category" href="#" id="cate_all">전체(디폴트)</a>
               <a class="button_category" href="#" id="cate_music">음악</a>
               <a class="button_category" href="#" id="cate_game">게임</a> -->
					<!-- 여기는 옆으로 넘기기 클릭하면? 추가돼서 보일 수 있는 구조로..ㅠㅠ -->
					<!--                <a class="button_category" href="#" id="cate_movie">영화</a> 
                      <a class="button_category" href="#" id="cate_edu">학습</a> -->
				</div>


				<table id="table_all">
					<!--  style ="visibility:hidden;" -->
					<thead>
					</thead>
					<tbody>
						<tr>
							<th scope="row"><img src="img/no1.png" width=50 height=40></th>
							<td class="profile"><img src="img/1위프로필.jpg" width=90
								height=90></td>
							<td>
								<div>
									<div class="channel_name">BLACKPINK</div>
									<div class="channel_subscribers">5010만</div>
								</div>
							</td>
							<td class="main_video"><a
								href="https://www.youtube.com/channel/UCOmHUn--16B90oW2L6FRR3A"
								target="_blank"><img src="img/1위프로필.jpg" width=140 height=90></td>
						</tr>
						<tr>
							<th scope="row"><img src="img/no2.png" width=50 height=40></th>
							<td class="profile"><img src="img/2위프로필.jpg" width=90
								height=90></td>
							<td>
								<div>
									<div class="channel_name">Big Hit Labels</div>
									<div class="channel_subscribers">4490만</div>
								</div>
							</td>
							<td class="main_video"><a
								href="https://www.youtube.com/channel/UCOmHUn--16B90oW2L6FRR3A"
								target="_blank"><img src="img/2위프로필.jpg" width=140 height=90></td>
						</tr>
						<tr>
							<th scope="row"><img src="img/no3.png" width=50 height=40></th>
							<td class="profile"><img src="img/3위프로필.jpg" width=90
								height=90>
							<td>
								<div>
									<div class="channel_name">BANGTANTV</div>
									<div class="channel_subscribers">3790만</div>
								</div>
							</td>
							<td class="main_video"><a
								href="https://www.youtube.com/channel/UCOmHUn--16B90oW2L6FRR3A"
								target="_blank"><img src="img/3위프로필.jpg" width=140 height=90>
						</tr>
						<tr>
							<th scope="row">4</th>
							<td class="profile"><img src="img/4위프로필.jpg" width=90
								height=90>
							<td>
								<div>
									<div class="channel_name">Boram Tube Vlog</div>
									<div class="channel_subscribers">2650만</div>
								</div>
							</td>
							<td class="main_video"><a
								href="https://www.youtube.com/channel/UCOmHUn--16B90oW2L6FRR3A"
								target="_blank"><img src="img/4위프로필.jpg" width=140 height=90>
						</tr>
						<tr>
							<th scope="row">5</th>
							<td class="profile"><img src="img/5위프로필.jpg" width=90
								height=90>
							<td>
								<div>
									<div class="channel_name">SMTOWN</div>
									<div class="channel_subscribers">2420만</div>
								</div>
							</td>
							<td class="main_video"><a
								href="https://www.youtube.com/channel/UCOmHUn--16B90oW2L6FRR3A"
								target="_blank"><img src="img/5위프로필.jpg" width=140 height=90>
						</tr>
					</tbody>
				</table>
				<!-- <img src="img/전체카테고리테이블.JPG"> -->


			</div>
			<div class="right">
				<div class="contentsTitle">새로운 컨텐츠</div>
				<div>로그인 전에는 페이지 소개? - 로그인 후 개인맞춤형 서비스를 이용해보세요! 등의 문구</div>
				<div>로그인 후에는 "내 구독자 인기 현황" 이라던지, 구독자들끼리의 채팅방?(기존에 없는 서비스이긴하지만
					어려울 것 + 지저분할 우려가 있을 것 같음) 게시판도 괜찬을듯!</div>
			</div>
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
			<img src="img/P_Logo.png" alt="footer_logo">
		</div>
	</footer>
	<a href="#" class="btn_gotop"> <img src="img/arrow.png">
	</a>
</body>
</html>

