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

        <link rel="stylesheet" href="../../css/style.css"/>
        <link rel="stylesheet" href="../../css/login.css"/>
        
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="https://kit.fontawesome.com/326e1cf751.js" crossorigin="anonymous"></script>
        <script src="../../js/common.js"></script>
    </head>
    <body>
        <div class="headerbg"></div>
        <header>
            <div id="header-top">
                <a href="../../index.jsp"><img src="../../img/P_Logo.png" id="logo" alt="main_logo"></a>
            </div>
        </header>
        <div class="login_body">
            <div class="login_bg">
                <div class="login_text">
                    <h1>로그인</h1>
                    <input type="text" placeholder="아이디를 입력하세요.">
                    <input type="password" placeholder="비밀번호를 입력하세요.">
                    <input type="button" value="로그인">
                    <div class="inline">
                        <div class="rem">
                            <input type="checkbox" name="rememberMe" id="bxid_rememberMe_true" value="true" tabindex="0" data-uia="rememberMe" checked="false">
                            <label for="bxid_rememberMe_true" data-uia="label+rememberMe"><span class="inline-text">로그인 정보 저장</span></label>
                        </div>
                        <div class="findpw">
                            <a class="inline-text afindpw" href="#">비밀번호 찾기</a>
                        </div>
                    </div>
                    <a href="#"><img class="loginimg googlelogin" src="../../img/login/googlelogin.png"/></a>
                    <a href="#"><img class="loginimg naverlogin" src="../../img/login/naverlogin.png"/></a>
                    <a href="#"><img class="loginimg kakaologin" src="../../img/login/kakaologin.png"/></a>
                    <div class="signup">회원이 아닌가요?
                         <a class="signuphref" href="#"> 지금 가입하세요.</a>
                    </div>
                </div>
            </div>
        </div>
        
        <footer>
            <div id="hr"></div>
            <div class="footertext">
                <div class="atag">
                    <a href="#">이용 안내</a>
                     | 
                    <a href="#">개발 팀 소개</a>
                     | 
                    <a href="#">사용 API 안내</a>
                     | 
                    <a href="#">개인정보처리방침</a>
                     | 
                    <a href="#">SiteMap</a>
                </div>
                <div class="copyright">
                    Copyright &copy; 100 Millionaire, 2020. All Rights Reserved.
                </div>
            </div>
            <div class="footerlogo">
                <img src="../../img/P_Logo.png" alt="footer_logo">
            </div>
        </footer>
    </body>
</html>