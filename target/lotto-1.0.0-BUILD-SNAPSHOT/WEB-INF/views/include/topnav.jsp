<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
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
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav mx-auto">
                        <li class=" mx-0 mx-lg-4"><a style="font-size: 18px;" class="nav-link py-3 px-0 px-lg-3 rounded" href="#">믿음로또</a></li>
                         <li class=" mx-0 mx-lg-4"><a style="font-size: 18px;" class="nav-link py-3 px-0 px-lg-3 rounded" href="#">상품안내</a></li>
                          <li class=" mx-0 mx-lg-4"><a style="font-size: 18px;" class="nav-link py-3 px-0 px-lg-3 rounded" href="#">로또통계</a></li>
                        <li class=" mx-0 mx-lg-4"><a style="font-size: 18px;" class="nav-link py-3 px-0 px-lg-3 rounded" href="#">분석번호받기</a></li>
                        <li class=" mx-0 mx-lg-4"><a style="font-size: 18px;" class="nav-link py-3 px-0 px-lg-3 rounded" href="#">고객센터</a></li>
                    </ul>
                </div>
                	<div>
                		<a type="button" href="login.lo" class="btn btn-primary">로그인</a>
                		<a type="button" href="insert.lo" class="btn btn-primary">회원가입</a>
                	</div>
            </div>
        </nav>
	</header>
</html>