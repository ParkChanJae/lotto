<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/styles.css">
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<style>
@media screen and (max-width: 768px) {
   .onlyPC {
      display: none;
   }
} 
</style>

<title>로그인</title>
</head>
	<!-- Navigation-->
	<jsp:include page="/WEB-INF/views/include/topnav.jsp" />
<body style="background-color: #ecf3f9;">
		<div class="mt-5 d-flex justify-content-center">
		<p style="font-size: 35px; font-weight: bolder;">로그인</p>
		</div>
		
		<!-- 아이디 / 비번 -->
		<div class= "mb-2 d-flex justify-content-center">
			<input style="height: 2.5rem;" class="w-30" type="text" placeholder="아이디 입력"/>
		</div>
		<div class= "mt-2 mb-2 d-flex justify-content-center">
			<input style="height: 2.5rem;" class="w-30" type="password" placeholder="비밀번호 입력" />
		</div>
		
		<div class= "mb-2 d-flex justify-content-center">
			<button class="w-30 btn btn-primary" style="height: 3rem;">로그인</button>
		</div>
		
		<div class= "d-flex justify-content-center mb-3">
			<a class="w-15 mt-2 mb-2 btn btn-outline-dark" href="#" style="background-color:white; color:#007fff;">아이디/비밀번호찾기</a>
			<a class="w-15 mt-2 mb-2 btn btn-outline-dark" href="insert.lo" style="background-color:white; color:#007fff;">회원가입</a>
		</div>
		
			<div class="row mb-5 d-flex justify-content-center">
			<a class="col-12 d-flex justify-content-center mb-2" href="#"><img src="img/kakaologin.png" alt="" /></a>
			<a class="col-12 d-flex justify-content-center" href="#"><img src="img/naverlogin.png" alt="" /></a>
			</div>
		
		
		
		
		
		
		
		
		
		
		
</body>
	<div class="onlyPC">
	<!-- footer-->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</html>