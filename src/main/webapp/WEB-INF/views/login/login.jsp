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
.sociallogin {
display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
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
		<div class="row justify-content-center">
		<div class="col-lg-12">
		<div class= " mb-2 d-flex justify-content-center">
			<input style="height: 2.5rem;" class="w-30" name = "mb_id" id="mb_id" type="text" placeholder="아이디 입력"/>
		</div>
		<div class= "mt-2 mb-2 d-flex justify-content-center">
			<input style="height: 2.5rem;" class="w-30" name = "mb_pw" id="mb_pw" type="password" placeholder="비밀번호 입력" />
		</div>
		</div>
		</div>
		<div class= " mb-2 d-flex justify-content-center">
			<a class="login col-lg-4 col-sm-12 submit btn btn-primary" style="height: 3rem;">로그인</a>
		</div>
			<div class="row ">
		<div class= "d-flex justify-content-center mb-3">
			<a class="col-lg-2 col-sm-12 mt-2 mb-2 btn btn-outline-dark" href="pwfind.lo" style="background-color:white; color:#007fff;">아이디/비밀번호찾기</a>
			<a class="col-lg-2 col-sm-12 mt-2 mb-2 btn btn-outline-dark" href="consent.lo" style="background-color:white; color:#007fff;">회원가입</a>
		</div>
			</div>
			<div class="sociallogin">
				<button class="social btn btn-outline-light" id="kakako"><img src="img/kakaologin.png" alt="카카오" /></button>
				<button class="social btn btn-outline-light" id="naver"><img src="img/naverlogin.png" alt="네이버" /></button>
			</div>
		
<script>
$('.social').click(function(){
	location = $(this).attr('id') + 'Login';
});

	$('#mb_pw').keydown(function(e){
		if(e.keyCode == 13) {
		login();
		}
	}) ;
	 
	 $('.login').click(function(){
			login();
		});
	 function login(){
		
		if( emptyCheck() ){
			
			$.ajax({
				url: 'loginok',
				data: { mb_id:$('#mb_id').val(), mb_pw:$('#mb_pw').val() },
				dataType : "json", 
				success: function( response ){
					
					if( response ){
						location = '<c:url value="/"/>';
					}else{
						alert('아이디나 비밀번호가 일치하지 않습니다');
					}
				},error: function(req,text){
					alert(text+':'+req.status);
				}
			});
		}
	}


</script>		
		
</body>
	<div class="onlyPC">
	<!-- footer-->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</html>