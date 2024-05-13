<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/styles.css">
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<meta charset="UTF-8">
<title>믿음로또</title>
</head>
<style>
@media screen and (max-width: 768px) {
   .onlyPC {
      display: none;
   }
} 
</style>
	<!-- Navigation-->
	<jsp:include page="/WEB-INF/views/include/topnav.jsp" />
<body>
	
	<!-- 스마트 AI 소개 -->
	<div class="row w-100 m-0 p-4" style="background-image: url('img/aibg.png'); background-size:cover; height: 40rem;">
			<div class="col-lg-12 col-sm-6 d-flex align-items-end">
				<span class="m-0" style="font-size: 38px; color: white;">스마트 AI 인공지능 믿음로또시스템<br>
				정교한 알고리즘 패턴 분석</span>
			</div>
			<div class="col-lg-12 col-sm-6 d-flex align-items-start mt-4">
				<span class="m-0" style="font-size: 30px; color: white;">독보적인AI인공지능 분석시스템으로<br>
				로또당첨에 크게 다가서다</span>
			</div>
			
			
	</div><!-- 스마트 AI 소개 끝 -->

	<!-- 믿음로또 시스템 -->
		<div class="container">
			<div class="row mt-5 mb-5 text-center">
				<p class="col-12" style="font-size: 25px; font-weight: bolder;">믿음로또시스템</p>
				<p class="col-12 m-0" style="font-size: 20px;">로또는 8,145,060분의 1의 확률입니다. 통계학적으로 접근하여</p>
				<p class="col-12 m-0" style="font-size: 20px;">"안된다"가 아닌 불가능에 가까운 확률을 과학적 알고리즘을 통하여, </p>
				<p class="col-12 m-0" style="font-size: 20px;">매번 업데이트 되는 당첨 번호들과 매 회차에 나타나지 않은 번호까지</p>
				<p class="col-12 m-0" style="font-size: 20px;">시스템화하여, 도합 15필터링 기법에 스스로 성장하는</p>
				<p class="col-12 m-0" style="font-size: 20px;">블랙타워시스템이 탄생하였습니다.</p>
			</div>
		</div>
		
		<div class="container">
			<div class="row d-flex justify-content-center">
			<img class="col-lg-7" src="img/data1.png" alt="" />
			</div>
			<div class= "d-flex justify-content-center">
			<img class="col-lg-7" src="img/data2.png" alt="" />
			</div>
		</div>
		<div class="row justify-content-center mt-5">
			<div onclick="location.href='#';" class="col-lg-3 border d-flex justify-content-center"
					 style="height:4rem; background-color: #004078;">
				<a class="d-flex justify-content-center align-items-center"
				 href="#" style="font-size: 20px; color: white;">서비스신청</a>
			</div>
		</div>	




</body>
	<!-- footer-->
	<div class="mt-5">
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</html>