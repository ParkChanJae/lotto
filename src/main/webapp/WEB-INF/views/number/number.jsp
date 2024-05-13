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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/styles.css">
     <script src="https://code.jquery.com/jquery-3.6.3.min.js" ></script> 
    <script src="js/common.js"></script>
<style>
@media screen and (max-width: 768px) {
   .onlyPC {
      display: none;
   }
} 
div.num {
border-style:solid ;
color: #0e3877;
height: 8rem;
border-width: 7px;
}
/* 로또 1등 당첨 시스템 */
@media screen and (max-width: 768px) {
   .mfont40 {
   	font-size: 3rem; !important;
   }
} 

	.mfont40 {
	font-size: 4rem;
	}


/* 고객센터 */
@media screen and (max-width: 768px) {
   .atime {
   	margin: 0;
   }
   .freelogin {
   margin-left: 1.2rem;
   }
   .freelobutton {
   margin-left: 1.2rem;
   }
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
				<span class="m-0" style="font-size: 35px; color: white;">믿음로또의 분석번호 받기<br>	</span>
			</div>
			<div class="col-lg-12 col-sm-6 d-flex justify-content-center align-items-start mt-4">
				<span class="m-0" style="font-size: 23px; color: white;">과학적 통계로 완벽히 분석한 과학적인 자료를 바탕으로<br>
				핵심적인 최대 당첨 비율을 높일 수 있는 믿음로또만의<br>
				최상위 조합을 완성하여 로또 1등 예측번호를 추출하는 시스템입니다.</span>
			</div>
		</div><!-- 스마트 AI 소개 끝 -->
		<div class="row mt-1" style="background-image: url('img/numberbg.png'); height: 40rem; background-size: cover;">
			<div class="col-lg-12 d-flex justify-content-center align-items-center"
			 style="font-size: 30px; font-weight: bolder; color:white;">믿음로또 1등 당첨 시스템</div>
			 
			 <!-- 1등 -->
			 <div class="row">
			 	<div class="col-lg-2 d-flex align-items-start justify-content-end mfont40" 
			 	style="font-weight: bolder; color:#5bc3d9;">1등</div>
			 	<div class="col me-2 num d-flex justify-content-center align-items-center mfont40">
			 		<span style="font-weight: bolder; color:white;">0</span>
			 	</div>
			 	<div class="col me-2 num d-flex justify-content-center align-items-center mfont40">
			 		<span style="font-weight: bolder; color:white;">1</span>
			 	</div>
			 	<div class="col me-2 num d-flex justify-content-center align-items-center mfont40">
			 		<span style="font-weight: bolder; color:white;">2</span>
			 	</div>
			 	
			 	<div class="col-lg-1 d-flex align-items-start justify-content-center p-0 mfont40" 
			 	style="font-weight: bolder; color:#5bc3d9;">회차</div>
			 	
			 	<div class="col me-2 num d-flex justify-content-center align-items-center mfont40">
			 		<span style="font-weight: bolder; color:white;">0</span>
			 	</div>
			 	<div class="col me-2 num d-flex justify-content-center align-items-center mfont40">
			 		<span style="font-weight: bolder; color:white;">1</span>
			 	</div>
			 	<div class="col me-2 num d-flex justify-content-center align-items-center mfont40">
			 		<span style="font-weight: bolder; color:white;">2</span>
			 	</div>
			 	
			 	<div class="col-lg-2 d-flex align-items-start mfont40" 
			 	style="font-weight: bolder; color:#5bc3d9;">번째</div>
			 	</div>
			 	
			 	<!-- 2등 -->
			 <div class="row onlyPC" >
			 	<div class="col-lg-2 d-flex align-items-start justify-content-end" 
			 	style="font-size: 4.5rem; font-weight: bolder; color:#5bc3d9;">2등</div>
			 	<div class="col me-2 num d-flex justify-content-center align-items-center">
			 		<span style="font-size: 5rem; font-weight: bolder; color:white;">1</span>
			 	</div>
			 	<div class="col me-2 num d-flex justify-content-center align-items-center">
			 		<span style="font-size: 5rem; font-weight: bolder; color:white;">1</span>
			 	</div>
			 	<div class="col me-2 num d-flex justify-content-center align-items-center">
			 		<span style="font-size: 5rem; font-weight: bolder; color:white;">2</span>
			 	</div>
			 	
			 	<div class="col-lg-1 d-flex align-items-start justify-content-center p-0" 
			 	style="font-size: 4.5rem; font-weight: bolder; color:#5bc3d9;">회차</div>
			 	
			 	<div class="col me-2 num d-flex justify-content-center align-items-center">
			 		<span style="font-size: 5rem; font-weight: bolder; color:white;">1</span>
			 	</div>
			 	<div class="col me-2 num d-flex justify-content-center align-items-center">
			 		<span style="font-size: 5rem; font-weight: bolder; color:white;">1</span>
			 	</div>
			 	<div class="col me-2 num d-flex justify-content-center align-items-center">
			 		<span style="font-size: 5rem; font-weight: bolder; color:white;">2</span>
			 	</div>
			 	
			 	<div class="col-lg-2 d-flex align-items-start" 
			 	style="font-size: 4.5rem; font-weight: bolder; color:#5bc3d9;">번째</div>
			 	</div>
			 </div>
			 	<div class="conainer mt-4">
			 		<div class="text-center">
			 		<a style="height: 4rem; font-size: 25px;" href="term.nu" class="btn btn-primary w-50">분석 및 용어(Click)</a>
			 		</div>
			 	</div>
			 <!-- 무료회원 번호 -->
			 <div class="container mt-5 mb-5">
			 <div class="row text-center">
			 <div class="col-lg-12" style="font-size: 26px; font-weight: bolder;">무료회원 번호 받는 방법</div>
			 </div>
			 
			 <div class="row mt-4">
			 	<div class="col-lg-4 col-sm-4 ">
			 	<img class="w-100" src="img/num1.png" alt="" />
			 	<span class="mt-3 d-flex justify-content-center align-items-center" style="font-size: 23px; font-weight: bolder;">
			 	믿음로또 통계분석</span>
			 	</div>
			 	<div class="col-lg-4 col-sm-4">
			 	<img class="w-100" src="img/num2.png" alt="" />
			 	<span class="mt-3 d-flex justify-content-center align-items-center" style="font-size: 23px; font-weight: bolder;">
			 	단계별 인공지능<br> 압축 필터링</span>
			 	</div>
			 	<div class="col-lg-4 col-sm-4">
			 	<img class="w-100" src="img/num3.png" alt="" />
			 	<span class="mt-3 d-flex justify-content-center align-items-center" style="font-size: 23px; font-weight: bolder;">
			 	조건에 맞는조합<br>과학적인 필터링 시스템</span>
			 	</div>
			 </div>
			 </div>
			 
			 
			 <div class="mb-5 d-flex justify-content-center align-items-center" style="background-image: url('img/numbg.png'); background-size: cover; height: 29rem;">
			 	<div class="row">
			 		<div class="col-lg-12 d-flex justify-content-center align-items-center"
			 		 style="font-size: 36px; color: white; font-weight: bolder;">믿음로또는 개인별 맞춤 로또컨설팅을 통해 1:1 특별 관리됩니다.</div>
			 		<div class="col-lg-12 d-flex justify-content-center align-items-center"
			 		 style="font-size: 23px; color: white;">정회원 100% 활용법으로 1등을 위한 필수과정을 들여다 보십시오!</div>
			 		<div class="col-lg-12 d-flex justify-content-center align-items-center"
			 		 style="font-size: 23px; color: white;">믿음로또에서 정회원으로 로또1등의 꿈을 이루세요.</div>
			 	</div>
			 </div>
			 
			 
			 <div class="container mb-5 p-0">
			 	<div class="row">
			 		<!-- 상담요청 -->
			 		<div class="col-lg-6 col-sm-12 border g-2 d-flex justify-content-center align-items-center" style="height: 17rem;">
			 			<div class="row">
			 			<span class="col-12 freelogin" style="font-size: 18px;">1등 당첨 번호 받기</span>
			 			<span class="col-12 freelogin" style="color:red; font-size: 33px; font-weight: bolder;">무료상담요청</span>
			 			<div class="row">
			 			<div class="col-lg-8 col-sm-12 d-flex flex-column mt-4 freelogin">
			 				<input class="mb-1" style="border:none; border-radius: 10px; height:3rem; background-color:#c2d6f7;" type="text" name="mb_id" id="mb_id" placeholder="아이디" />
			 				<input class="mt-1" style="border:none; border-radius: 10px; height:3rem; background-color:#c2d6f7;" type="password" name="mb_pw" id="mb_pw" placeholder="비밀번호" />
			 			</div>	
			 			<div class="col-lg-4 col-sm-12 d-flex justify-content-center align-items-end freelobutton">
			 				<button style="height:75%; font-size: 28px;" class="d-flex justify-content-center align-items-center w-100 btn btn-primary">로그인</button>
			 			</div>
			 			</div>
			 			</div>
			 		</div>
			 		<!-- 전화번호 -->
			 		<div class="col-lg-6 col-sm-12 border g-2 d-flex align-items-center justify-content-center" style="height: 17rem;">
			 			<div class="row">
			 				<div class="text-center col-lg-3 col-sm-12">
				 			<img src="img/phone.png" alt="고객센터" />
				 			</div>
				 			<div class="col-lg-9 d-flex justify-content-end flex-column p-0">
				 			<span class="d-flex justify-content-center" style="font-size: 40px; font-weight: bolder; "><a style="color:red; " href="tel:1833-8392">1833-8392</a></span>
				 			<span class="d-flex justify-content-center ms-4" style="font-size: 20px; font-weight: bolder; ">11:00~18:00(토/일/공휴일 휴무)</span>
				 			<span class="d-flex justify-content-center" style="font-size: 20px; font-weight: bolder; ">점심시간 13:00 ~ 14:00</span>
				 			</div>
			 			</div>
			 		</div>
			 	</div>
			 </div>
			 
			 
</body>
	<div class="onlyPC">
	<!-- footer-->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</html>