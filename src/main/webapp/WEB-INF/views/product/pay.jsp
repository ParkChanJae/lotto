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
    <!-- toss결제 -->
    <script src="https://js.tosspayments.com/v1/payment"></script>
<style>
@media screen and (max-width: 768px) {
   .onlyPC {
      display: none !important;
   }
} 

.paybo {
	color:#bfbfbf;
	border-style: solid;
	border-width: 0 1px 1px 1px;
	height: 26rem;
}

.client {
color:#bfbfbf;
	border-style: solid;
	border-width: 1px;
	height: 13rem;
	width: 40%;
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
			
			<h3 class="text-center mt-5 mb-5" style="font-weight: bolder;">정회원 가입하기</h3>
			
			<div class="container">
				<div class="row">
					<div class="border col-lg-12 mb-3 mt-5 d-flex justify-content-center align-items-center"
					 style="background-color: #375ddb; height: 3.5rem; border-radius: 10px;" >
					 	<div class="" style="font-size: 18px; color: white;">결제하기</div>
					</div>
				</div>
				
			</div> <!-- 컨테이너 끝 -->
			
				<!-- 상문내역 -->
				<div class="container mb-3">
				<div class="row mt-2">
					<div class="col-lg-2 col-sm-2 border text-center d-flex justify-content-center align-items-center"
					 style="background-color: #375ddb; height: 3.5rem; border-radius: 10px; color: white;">
						이용기간
					 </div>
					 <div class="col-lg-10 col-sm-10 border border-ligh text-center d-flex justify-content-center align-items-center"
					 		style="border-radius: 10px; font-weight: bolder; font-size: 18px;">
						베이직
					 </div>
				</div>
				
				<div class="row mt-1">
					<div class="col-lg-2 col-sm-2 border text-center d-flex justify-content-center align-items-center"
					 style="background-color: #375ddb; height: 3.5rem; border-radius: 10px; color: white;">
						정상가
					 </div>
					 <div class="col-lg-10 col-sm109 border border-ligh text-center d-flex justify-content-center align-items-center"
					 		style="border-radius: 10px; font-weight: bolder; font-size: 18px;">
						149,000원
					 </div>
				</div>
				
				<div class="row mt-1">
					<div class="col-lg-2 col-sm-2 border text-center d-flex justify-content-center align-items-center"
					 style="background-color: #375ddb; height: 3.5rem; border-radius: 10px; color: white;">
						할인가
					 </div>
					 <div class="col-lg-10 col-sm-10 border border-ligh text-center d-flex justify-content-center align-items-center"
					 		style="color:red; border-radius: 10px; font-weight: bolder; font-size: 18px;">
						149,000원(VAT포함)
					 </div>
				</div>
				</div><!-- 상품내역 끝 -->
				
				
				<!-- 결제방법 -->
				<div class="container mb-3">
				<div class="row">
					<div class="border col-lg-12 mt-1 d-flex justify-content-center align-items-center"
					 style="background-color: #375ddb; height: 3.5rem; border-radius: 10px;" >
					 	<div class="" style="font-size: 16px; color: white;">선택버튼을 눌러주세요. 로또 1등 당첨을 위한 첫 걸음이 시작됩니다.</div>
					</div>
				</div>
				
				<div class="row" >
					<div class="col-12 paybo d-flex justify-content-center align-items-center ">
							<div class="row ms-4">
						  <div class="col-lg-6 col-sm-5 d-flex justify-content-center">
						  		<div class="w-75 d-flex justify-content-center align-items-center flex-column">
						 	<img class="onlyPC col-lg-12 col" src="img/pay.png" alt="" />
						 		<button class="btn btn-primary mt-4 w-75" style="height: 2.5rem;">무통장입금</button>
						 		</div>
						 </div>
						  
						  
						  <div class="col-lg-6 col d-flex justify-content-center">
						  		<div class="w-75 d-flex justify-content-center align-items-center flex-column">
						 	<img class="onlyPC col-lg-12 col-sm-12" src="img/pay2.png" alt="" />
						 		<button id="payment-button" class="btn btn-primary mt-4 w-75" style="height: 2.5rem;">신용카드결제</button>
						 		</div>
						 </div>
						</div>
						</div>
						
					</div>
			</div> <!-- 결제방법 끝 -->
			
			<!-- 입금자 -->
			<div class="container mb-3">
				<div class="row mt-2">
					<div class="col-lg-2 col-sm-2 border text-center d-flex justify-content-center align-items-center"
					 style="background-color: #375ddb; height: 3.5rem; border-radius: 10px; color: white;">
						입금자
					 </div>
					 <div class="col-lg-10 col-sm-10 border border-ligh text-center d-flex align-items-center"
					 		style="border-radius: 10px; font-weight: bolder; font-size: 18px;">
						<input type="text" placeholder="입금자명">
					 </div>
				</div>
				</div>
				
				<div class="container mb-5">
				<div class="row">
					<div class="border col-lg-12 mb-3 d-flex justify-content-center align-items-center"
					 style="background-color: #375ddb; height: 3.5rem; border-radius: 10px;" >
					 	<div class="" style="font-size: 18px; color: white;"><a style="color: white;" href="#">신청하기</a></div>
					</div>
				</div>
				
			</div> <!-- 입금자 끝 -->
			
			<div class=" container d-flex justify-content-center">
				<div class=" client mb-5 d-flex justify-content-center align-items-center">
					<div class="row ">
						<img class="col-sm-4 onlyPC" src="img/phone.png" alt="" />
						<div class="col-sm-8">
						<p class="m-0" style="font-size: 2.5rem; font-weight: bolder;">
								<a style=" color:red;" href="tel:1833-8392">1833-8392</a></p>
						<span style=" color: #000;">11:00~18:00(토/일/공휴일 휴무)<br> 점심시간 13:00 ~ 14:00</span>
						</div>
					</div>
				</div>
			</div>
 <script>
/* 무통장입금 */
  
 
 
/* 신용카드 결제 */ 
var clientKey = 'test_ck_D5GePWvyJnrK0W0k6q8gLzN97Eoq'
var tossPayments = TossPayments(clientKey)

var button = document.getElementById('payment-button') // 결제하기 버튼

button.addEventListener('click', function () {
  tossPayments.requestPayment('카드', {
    amount: 300,
    orderId: 'sIEb9Ww9EfG8wL1qO_IZ-',
    orderName: '믿음로또 시스템 베이직',
    customerName: '${loginInfo.mb_name}',
    successUrl: 'http://localhost:8080/lotto/payend.pr',
    failUrl: 'http://localhost:8080/fail',
  })
})
</script>			
</body>
	<div class="onlyPC">
	<!-- footer-->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</html>