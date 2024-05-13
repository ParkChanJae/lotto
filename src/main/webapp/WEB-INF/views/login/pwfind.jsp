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
</style>

<title>믿음로또</title>
</head>
	<!-- Navigation-->
	<jsp:include page="/WEB-INF/views/include/topnav.jsp" />
<body style="background-color: #ecf3f9;">
		<div class="container">
		<div class="mt-5 text-center">
		<p style="font-size: 35px; font-weight: bolder;">아이디/비밀번호 찾기</p>
		<p class="mt-2 mb-4">본인의 아이디와 이메일을 입력해 주시면, 가입하신 아이디와 비밀번호를 확인할 수 있습니다.</p>
		</div>
		
		<!-- 아이디 / 비번 -->
		<form action="reset" method="post">
		<div class= "mb-2 d-flex justify-content-center">
			<input style="height: 2.5rem;" class="chk col-lg-6 col-sm-6" name = "mb_id" id="mb_id" type="text" placeholder="아이디"/>
		</div>
			<div class="row">
		<div class= "mt-2 mb-2 d-flex justify-content-center">
			<input style="height: 2.5rem;" class="chk col-lg-6 col-sm-6" name = "email" id="email" type="text" placeholder="이메일을 입력해주세요" />
		</div>

		</div>
		<div class= "mb-5 d-flex justify-content-center row">
			<a class="password col-lg-6 col-sm-3 btn btn-primary" style="height: 3rem;">아이디/비밀번호 찾기</a>
		</div>
		</form>
		</div>
		<script>
		$('.password').click(function(){
			if( emptyCheck() ) $('form').submit();
		});
		</script>
</body>
	<div class="onlyPC" style="position: absolute; bottom:1%;">
	<!-- footer-->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</html>