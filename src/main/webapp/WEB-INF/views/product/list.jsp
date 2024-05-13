<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/styles.css">
     <script src="https://code.jquery.com/jquery-3.6.3.min.js" ></script> 
    <script src="js/common.js"></script>
<style>
@media screen and (max-width: 768px) {
   .onlyPC {
      display: none;
   }
} 

@media screen and (max-width: 768px) {
   .mar {
   margin-left: 1rem;
   margin-right: 0 !important;
   }
} 

.mar {
	margin-right: 1.5rem;
}
</style>

<title>믿음로또</title>
	<!-- Navigation-->
	<jsp:include page="/WEB-INF/views/include/topnav.jsp" />
</head>
	<body>
		<!-- 스마트 AI 소개 -->
	<div class="row w-100 m-0 p-4" style="background-image: url('img/lottobg.png'); background-size:cover; height: 40rem;">
			<div class="col-lg-12 col-sm-6 d-flex justify-content-center align-items-end">
				<span class="m-0" style="font-size: 35px; color: white;">믿음로또 등급안내 가이드<br>	</span>
			</div>
			<div class="col-lg-12 col-sm-6 d-flex justify-content-center align-items-start mt-4">
				<span class="m-0" style="font-size: 26px; color: white;">믿음로또만의 특별한 서비스! 지금까지 없었던<br>
				분석시스템으로 당첨을 경험해 보세요.</span>
			</div>
		</div><!-- 스마트 AI 소개 끝 -->
			
			<h3 class="text-center mt-5 mb-5" style="font-weight: bolder;">믿음로또 등급안내 가이드</h3>
				
				<!-- 상품판매 1 -->
			<div class="container mb-5">
				<div class="row justify-content-center">
					<div class="col-lg-4 mar">
					<img style="width: 100%;" src="img/basic.png" alt="" />
					</div>
					<div class="col-lg-3 ms-4">
					<div class="row ">
						<div class="p-0 col-lg-8 border d-flex justify-content-center align-items-center rounded g-1"
						 style="height:3rem; background-color: #1141b6; color: white; font-size: 18px;">
						 <span>10조합 1년</span></div>
						 <div class="p-0 col-lg-12" style="font-size: 26px; font-weight: bolder;">믿음로또 시스템</div>
						 <div class="p-0 col-lg-12 mt-2" style="color:#0064a2; font-size: 24px; font-weight: bolder;">베이직</div>
						 <div class="p-0 col-lg-12" style="">믿음로또의 강력한 분석번호</div>
						 <div class="p-0 col-lg-12" style="color:red; font-size: 35px; font-weight: bolder;">149,000원</div>
						<div class="p-0"> <button onclick="location.href='pay.pr'" class="col-lg-8 btn btn-primary mb-3" style="color: white;">가입하기</button></div>
					</div>
					</div>
				</div>
				<hr style="background-color: blue;" class="m-0"/>
			</div>
			
			<!-- 상품판매 2 -->
			<div class="container mb-5">
				<div class="row justify-content-center">
					<div class="col-lg-4 mar">
					<img style="width: 100%;" src="img/basic.png" alt="" />
					</div>
					<div class="col-lg-3  ms-4">
					<div class="row ">
						<div class="p-0 col-lg-8 border d-flex justify-content-center align-items-center rounded g-1"
						 style="height:3rem; background-color: #1141b6; color: white; font-size: 18px;">
						 <span>20조합 2년</span></div>
						 <div class="p-0 col-lg-12" style="font-size: 26px; font-weight: bolder;">믿음로또 시스템</div>
						 <div class="p-0 col-lg-12 mt-2" style="color:#0064a2; font-size: 24px; font-weight: bolder;">베이직골드</div>
						 <div class="p-0 col-lg-12" style="">믿음로또의 강력한 분석번호</div>
						 <div class="p-0 col-lg-12" style="color:red; font-size: 35px; font-weight: bolder;">379,000원</div>
						<div class="p-0"> <button onclick="location.href='pay2.pr'" class="col-lg-8 btn btn-primary mb-3" style="color: white;">가입하기</button></div>
					</div>
					</div>
				</div>
				<hr style="background-color: blue;" class="m-0"/>
			</div>
			
			<!-- 상품판매 3 -->
			<div class="container mb-5">
				<div class="row justify-content-center">
					<div class="col-lg-4 mar">
					<img style="width: 100%;" src="img/soldout.png" alt="" />
					</div>
					<div class="col-lg-3  ms-4">
					<div class="row ">
						<div class="p-0 col-lg-8 border d-flex justify-content-center align-items-center rounded g-1"
						 style="height:3rem; background-color: #1141b6; color: white; font-size: 18px;">
						 <span>30조합 3년</span></div>
						 <div class="p-0 col-lg-12" style="font-size: 26px; font-weight: bolder;">믿음로또 시스템</div>
						 <div class="p-0 col-lg-12 mt-2" style="color:#0064a2; font-size: 24px; font-weight: bolder;">프리미엄</div>
						 <div class="p-0 col-lg-12" style="">믿음로또의 강력한 분석번호</div>
						 <div class="p-0 col-lg-12" style="color:red; font-size: 35px; font-weight: bolder;">상담문의</div>
						<div class="p-0"> <button onclick="alert('상품준비중 입니다')" class=" col-lg-8 btn btn-primary mb-3" style="color: white;">가입하기</button></div>
					</div>
					</div>
				</div>
				<hr style="background-color: blue;" class="m-0"/>
			</div>
			
			<!-- 상품판매 4 -->
			<div class="container mb-5">
				<div class="row justify-content-center">
					<div class="col-lg-4 mar">
					<img style="width: 100%; " src="img/soldout.png" alt="" />
					</div>
					<div class="col-lg-3  ms-4">
					<div class="row ">
						<div class="p-0 col-lg-8 border d-flex justify-content-center align-items-center rounded g-1"
						 style="height:3rem; background-color: #1141b6; color: white; font-size: 18px;">
						 <span>40조합 4년</span></div>
						 <div class="p-0 col-lg-12" style="font-size: 26px; font-weight: bolder;">믿음로또 시스템</div>
						 <div class="p-0 col-lg-12 mt-2" style="color:#0064a2; font-size: 24px; font-weight: bolder;">Z솔루션</div>
						 <div class="p-0 col-lg-12" style="">믿음로또의 강력한 분석번호</div>
						 <div class="p-0 col-lg-12" style="color:red; font-size: 35px; font-weight: bolder;">상담문의</div>
						<div class="p-0"> <button onclick="alert('상품준비중 입니다')" class=" col-lg-8 btn btn-primary mb-3" style="color: white;">가입하기</button></div>
					</div>
					</div>
				</div>
				<hr style="background-color: blue;" class="m-0"/>
			</div>
		
</body>
	<div class="onlyPC">
	<!-- footer-->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</html>