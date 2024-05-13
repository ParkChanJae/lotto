<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

      <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/styles.css">
     <script src="https://code.jquery.com/jquery-3.6.3.min.js" ></script> 
    <script src="js/common.js"></script>
<style>
a {
	text-decoration: none !important;
	color : #000;
	font-weight: bolder;
}
</style>
	<header style="background-color: white;">
	 <nav class="navbar navbar-expand-lg text-uppercase" id="mainNav">
            <div class="container">
	<div class="mt-3" style="display: flex; justify-content: center; ">
	<a href="<c:url value='/'/>"><img alt="" src="img/logo.png"></a>
	</div>
                <button class="navbar-toggler text-uppercase font-weight-bold bg-secondary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				    Menu
				    <span class="navbar-toggler-icon"></span>
				</button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav mx-auto">
                        <li class=" mx-0 mx-lg-4"><a style="font-size: 18px;" class="nav-link py-3 px-0 px-lg-3 rounded" href="company.co">믿음로또</a></li>
                         <li class=" mx-0 mx-lg-4"><a style="font-size: 18px;" class="nav-link py-3 px-0 px-lg-3 rounded" href="list.pr">상품안내</a></li>
                          <li class=" mx-0 mx-lg-4"><a style="font-size: 18px;" class="nav-link py-3 px-0 px-lg-3 rounded" href="stats.st">로또통계</a></li>
                        <li class=" mx-0 mx-lg-4"><a style="font-size: 18px;" class="nav-link py-3 px-0 px-lg-3 rounded" href="number.no">분석번호받기</a></li>
                        <li class=" mx-0 mx-lg-4"><a style="font-size: 18px;" class="nav-link py-3 px-0 px-lg-3 rounded" href="list.no">고객센터</a></li>
                    </ul>
                </div>
               		  <!-- 로그인하지 않은 경우 -->
                    <c:if test="${empty loginInfo}">
                	<div>
                		<a type="button" href="login.lo" class="btn btn-primary">로그인</a>
                		<a type="button" href="consent.lo" class="btn btn-primary">회원가입</a>
                	</div>
                	 </c:if>
                	 <!-- 로그인한 경우 -->
                	 <c:if test="${not empty loginInfo}">
                	<div>
                		<a type="button" href="changePW.lo" class="btn btn-primary"><strong>${loginInfo.mb_name} 님</strong></a>
	                    <a type="button" class="btn btn-primary" href="logout">로그아웃</a>
                	</div>
                	 </c:if>
            </div>
        </nav>
        <!-- 햄버거 메뉴 -->
        
	</header>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</html>