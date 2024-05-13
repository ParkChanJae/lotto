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
     <script src="https://code.jquery.com/jquery-3.6.3.min.js" ></script> 
    <script src="js/common.js"></script>
<title>Insert title here</title>
</head>
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


	<!-- Navigation-->
	<jsp:include page="/WEB-INF/views/include/topnav.jsp" />
<body>
	<div class="container">
	<div class="d-flex flex-column justify-content-center">
	<p class="mt-5 mb-5 d-flex justify-content-center" style="font-size: 20px; font-weight: bolder;"> ${loginInfo.mb_name }님 결제완료되었습니다! </p>
	<p class="d-flex justify-content-center mb-5"><img class="w-30" src="img/check.png" alt="결제완료" /></p>
	<p class="d-flex justify-content-center mb-5" style="font-size: 20px;">결제가 정상적으로 처리되었습니다.</p>
	<div class="d-flex justify-content-center mb-5">
	<button id="smssend" name="smssend" class="btn btn-primary " style="width: 30%; height: 3rem;">클릭하면 문자로 전송됩니다.</button>
	</div>
	
	<hr style="background-color: #00c0d2;">
	<div class="mt-4 mb-5">
		<p>1. 결제 취소는 가맹점에서 취소 요청을 해야합니다.</p>
		<p>2. 현금영수증은 입력한 정보로 자동 발행되며, 현금영수증 관리에서 변경 가능합니다.</p>
	</div>
	</div>
	</div>
	
	<!-- footer-->
	<div class="onlyPC mt-5">
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>
	
<script>
$(document).ready(function() {
	  $('#smssend').click(function() {
	    $.ajax({
	      url: '/lotto/smssend',
	      type: 'GET',
	      dataType: 'json',
	      success: function(data) {
	        console.log(data); // 서버에서 반환한 LottoSoloVO 객체 출력
	        location.href = '/lotto'; // 홈으로 이동
	      },
	      error: function(xhr, status, error) {
	        console.error(error);
	      }
	    });
	  });
	});
</script>	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>