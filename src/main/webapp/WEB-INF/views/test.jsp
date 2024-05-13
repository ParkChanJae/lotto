<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*, org.apache.poi.ss.usermodel.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://js.tosspayments.com/v1/payment-widget"></script>
</head>
<h1>테스트 결제 구현</h1>
<body>

<button id ="payment-button">신용카드결제하기</button>
<button id ="payment2-button">무통장결제하기</button>

<script>
const button = document.querySelector('#payment-button'); // 결제하기 버튼
const button2 = document.querySelector('#payment2-button'); // 결제하기 버튼
const clientKey = 'test_ck_D5GePWvyJnrK0W0k6q8gLzN97Eoq'
const secretKey = 'test_sk_zXLkKEypNArWmo50nX3lmeaxYG5R'
const paymentWidget = PaymentWidget(clientKey, PaymentWidget.ANONYMOUS);
var clientKey2 = 'test_ck_7DLJOpm5QrlDNya1YPArPNdxbWnY'
var tossPayments = TossPayments(clientKey2) // 클라이언트 키로 초기화하기
/* 무통장입금 */
 
button2.addEventListener('click', function () { 
	tossPayments.requestPayment('가상계좌', { // 결제수단 파라미터
		  // 결제 정보 파라미터
		  amount: 15000,
		  orderId: 't6HgiwCnWgtGpTkDv19kf',
		  orderName: '토스 티셔츠 외 2건',
		  customerName: '박토스',
		  successUrl: 'http://localhost:8080/lotto/payend.pr',
		  customerMobilePhone : '01034844308',
		  failUrl: 'http://localhost:8080/lotto',
		  validHours: 24,
		  cashReceipt: {
		    type: '소득공제',
		  },
		})
		.catch(function (error) {
		  if (error.code === 'USER_CANCEL') {
		    // 결제 고객이 결제창을 닫았을 때 에러 처리
		  } else if (error.code === 'INVALID_CARD_COMPANY') {
		    // 유효하지 않은 카드 코드에 대한 에러 처리
		  }
		})
});
/* 신용카드 결제 */
/* const paymentWidget = PaymentWidget(clientKey, customerKey); // 회원 결제 */

button.addEventListener('click', function () {
  paymentWidget.renderPaymentMethods('#payment-button', 300);

  paymentWidget.requestPayment({
    orderId: '0Lx-AFquBOJu7Sv3oWOoS',
    orderName: '믿음로또 시스템 베이직',
    successUrl: 'http://localhost:8080/lotto/payend.pr',
    failUrl: 'http://localhost:8080/fail',
    customerEmail: '${loginInfo.email}', 
    customerName: '${loginInfo.mb_name}'
  });
});

	
</script>
<!-- jQuery 라이브러리 로드 -->
<script src="https://code.jquery.com/jquery-3.6.0.slim.js"></script>
</body>
</html>