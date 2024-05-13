<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<title>믿음로또</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <!-- Bootstrap CSS -->
      <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/styles.css">
     <script src="https://code.jquery.com/jquery-3.6.3.min.js" ></script> 
    <script src="js/common.js"></script>
    <link rel="stylesheet" href="css/common.css">
</head>

<style>
body {
	width: 1800px;
	
}

.dis {
	display: flex;
	justify-content: center;
	align-items: center;
}

.dis2 {
	display: flex;
	justify-content: start;
}

.dis3 {
	display: flex;
	justify-content: space-evenly;
	align-items: center;
}
</style>
	
	<!-- Navigation-->
	<jsp:include page="/WEB-INF/views/include/topnav.jsp" />
<body>
			<!-- 홈 -->
			<div style="background-image: url('img/mainbg.png');
			 height: 36rem; width: 1920px; display: flex; align-items: center;">
				<div>
				<p style="font-size: 2.8rem; font-weight: bolder; color: white; margin-left: 2.5rem;">
					스마트 AI 인공지능 믿음분석시스템<br>
					정교한 알고리즘 패턴 분석
				</p>
				<p style="font-size: 2rem; color: white; font-weight: 100; margin-left: 2.5rem;">
				독보적인AI인공지능 분석시스템으로<br>
				로또당첨에 크게 다가서다
				</p>
				</div>
			</div><!-- 홈 끝 -->
			
			<!-- 이번 당첨번호 -->
				<div class="win" style="display: grid; width: 1920px;">
			<div class="row" style="display: flex; align-items: center; justify-content: center;">
				<div class="col-2" style="margin: 1.5rem; padding: 0; text-align: end;">
				<c:forEach items="${page.list }" var="vo" begin="0" end ="0">
					<p style="margin-bottom: 5px; margin-left: 1rem; font-size: 25px; color: white;">${vo.drwNo} 당첨번호</p>
					<p style="margin-left: 1rem; font-size: 21px; color: white;">추첨일 : ${vo.drawDate}</p>
				</c:forEach>
				</div>
				<div class="text-center col-3 dis2">
				<c:forEach items="${page.list }" var="vo" begin="1" end ="1">
					<span class="winNo1">${vo.drwtNo1 }</span>
					<span class="winNo2">${vo.drwtNo2 }</span>
					<span class="winNo3">${vo.drwtNo3 }</span>
					<span class="winNo4">${vo.drwtNo4 }</span>
					<span class="winNo4">${vo.drwtNo5 }</span>
					<span class="winNo5">${vo.drwtNo6 }</span>
				</c:forEach>
				</div>
				
				<div class="text-center col-1">
				<c:forEach items="${page.list }" var="vo" begin="0" end ="0">
					<img src="img/plus2.png" alt="" />
					<span class="winNo4">${vo.bnusNo }</span>
				</c:forEach>
				</div>
				
				<div class="col-4" style="margin-left: 3rem;">
					<div class="dis" style="border: solid 1px #1141b6; background-color: #1141b6; margin-bottom:.5rem; height: 85px; width: 265px; border-radius: 10px; ">
						<c:forEach items="${page.list }" var="vo" begin="0" end ="0">
							<span style="font-size: 18px; color: white;">1등 당첨자: ${vo.firstwinner}명</span>
						</c:forEach>
					</div>
					
					<div class="dis" style="border: solid 1px #1141b6; background-color: #1141b6; margin-top:.5rem; height: 85px; width: 265px; border-radius: 10px;">
					<c:forEach items="${page.list }" var="vo" begin="0" end ="0">
						<span style="font-size: 18px; color: white;">1등 당첨금:<br>
						${vo.firstWinamnt}</span>
						</c:forEach>
					</div>
				</div>
			
			</div>
		</div>	<!-- 이번 당첨번호 끝 -->
		<div class="row mb-4 ">
			<div class="col-lg-7 col-sm-12" style="margin-left: 1.5rem;">
				<table class="table table-bordered mt-4 ms-3 text-center" >
  <thead style="background-color: #fafafa;">
    <tr>
      <th scope="col">순위</th>
      <th scope="col">총당첨금</th>
      <th scope="col">당첨자</th>
      <th scope="col">1인당 당첨금</th>
    </tr>
  </thead>
  <tbody >
    <tr>
      <th style="display: flex; justify-content: center;" scope="row" ><p class="king1">1등</p></th>
      <td style="color: red; font-weight: bold;">25,754,482,130원</td>
      <td>13명</td>
      <td>1,981,114,010원</td>
    </tr>
    
     <tr>
      <th style="display: flex; justify-content: center;" scope="row" ><p class="king2">2등</p></th>
      <td style="color: red; font-weight: bold;">4,292,413,738원</td>
      <td>82명</td>
      <td>52,346,509원</td>
    </tr>
    
     <tr>
      <th style="display: flex; justify-content: center;" scope="row"><p class="king3">3등</p></th>
      <td style="color: red; font-weight: bold;">4,292,414,386원</td>
      <td>2,728명</td>
      <td>1,511,436원</td>
    </tr>
    
     <tr>
      <th style="display: flex; justify-content: center;" scope="row"><p class="king4">4등</p></th>
      <td style="color: red; font-weight: bold;">6,976,5000,000원</td>
      <td>139,530명</td>
      <td>50,000원</td>
    </tr>
    
     <tr>
      <th style="display: flex; justify-content: center;" scope="row"><p class="king5">5등</p></th>
      <td style="color: red; font-weight: bold;">11,567,015,000원</td>
      <td>2,313,403명</td>
      <td>5000원</td>
    </tr>
  </tbody>
</table>
			</div>
			
			<!-- 영상 -->
			 <div class="col-lg-4 col-sm-12" style="display: flex; justify-content: center; align-items: center;">
			 <iframe width="350" height="250" src="https://www.youtube.com/embed/oLDw1rhYf1A" 
			 title="YouTube video player" 
			 frameborder="0"
			 allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
			 allowfullscreen></iframe>
			</div>
		</div>			
		<!-- 영상 끝 -->
		
		<!-- 문의사항 -->
		<div class="row mb-4" style="width:1920px; height: 20rem; padding: .5rem; margin-left: 0;">
			<div class="m-0 mainbor1 col-3 border dis3" style="position:relative;">
					<div class="">
					<p class="" style="margin-top:-3rem; font-size: 1.2rem; color:white; font-weight: bolder;">1등당첨 번호 받기</p>
					<p class="m-0" style="font-size: 2rem; color:white; font-weight: bolder;">무료상담요청</p>
					</div>
						<img style="margin-top: -3rem;" src="img/mainimg1.png" alt="" />
					<div style="position: absolute; bottom: 7%; left: 22%;">
					<button class="btn-111">상담신청</button>
					</div>
			</div>
			<div class="m-0 mainbor2 col-3 border dis3">
				<div class="">
					<p class="m-0" style="margin-top:-3rem; color:white; font-weight: bolder;">당첨정보</p>
					<p class="m-0" style="font-size: 1.5rem; color:white; font-weight: bolder;">지금까지의</p>
					<p class="m-0" style="font-size: 1.5rem; color:white; font-weight: bolder;">당첨정보</p>
					</div>
				<img src="img/mainimg2.png" alt="" />
			</div>
			<div class="m-0 mainbor3 col-3 border dis3">
				<div class="">
					<p class="m-0" style="margin-top:-3rem; font-size: 1rem; color:white; font-weight: bolder;">분석</p>
					<p class="m-0" style="font-size: 2rem; color:white; font-weight: bolder;">로또 분석실</p>
					<p class="mt-3" style="font-size: 1rem; color:white; font-weight: bolder;">다양한 방식의 패턴 분석과</p>
					<p class="" style="font-size: 1rem; color:white; font-weight: bolder;">과학적 통계자료</p>
					</div>	
				<img src="img/mainimg3.png" alt="" />	
			</div>
			<div class="m-0 mainbor4 col-3 border dis3">
				<div class="">
					<p class="m-0" style="margin-top:-3rem; font-size: 1rem; color:white; font-weight: bolder;">조합</p>
					<p class="m-0" style="font-size: 2rem; color:white; font-weight: bolder;">로또 조합기</p>
					<p class="mt-3" style="font-size: 1rem; color:white; font-weight: bolder;">로또 알고리즘을 파악하여</p>
					<p class="" style="font-size: 1rem; color:white; font-weight: bolder;">당첨번호를 직접 조합</p>
					</div>	
			
				<img src="img/mainimg4.png" alt="" />
			</div>
		</div> <!-- 문의사항 끝 -->
		
		<!-- 믿음로또 신청하러가기 -->
		<div class="mb-4" style="background-image: url('img/mainai.png'); height: 24rem; width: 1920px; background-size: cover; position: relative;">
			<div style="color:white; position: absolute; top: 15%; left: 3%;">
				<p style="font-size: 45px; font-weight: bold;">믿음로또 타워시스템</p>
				<p style="font-size: 32px; font-weight: 100;">로또 당첨자는 그냥 만들어 지지 않습니다</p>
				<p style="font-size: 32px; font-weight: 100;">분석시스템으로 1등의 주인공이 되세요</p>
			</div>
					<div style="position: absolute; right: 5%; bottom: 10%;">
					<button class="btn-1111">신청하러가기</button>
					</div>
			</div> 
			<!-- 믿음로또 신청하기 끝 -->
			<div class="container mb-4">
			<div class="row justify-content-center">
				<div class="col-5 me-1 mem" style="display: flex; justify-content: center; align-items: center;">
					<div>
						<img src="img/phone2.png" alt="" />
					</div>
						<div class="ms-4">
							<a href="tel:1833-8392" style="font-size: 28px; color: red;">1234-5678<br></a>
							<span>11:00~18:00 (토/일/공휴일 휴무) <br>
							점심시간 13:00 ~ 14:00 
							</span>
						</div>
				</div>	
							
				<div class="col-5 ms-1 mem" style="display: flex; justify-content: center; align-items: center;">
					<div>
					<img src="img/money.png" alt="" />
					</div>
						<div class="ms-4">
							<p style="font-size: 32px; font-weight:bold; color: red;">무통장입금<br></p>
							<span style="font-size: 18px; font-weight: bold;">예금주 : 박00 <br>
							 카카 : 321-1490-7530-52
							</span>
						</div>
				</div>				
			</div>
		</div>
<script>
  function enableEdit() {
    // "수정" 버튼 클릭 시 실행되는 함수
    let editBtn = document.querySelector(".edit-btn");
    let submitBtn = document.querySelector(".submit-btn");
    let editFields = document.querySelectorAll(".edit");
    let values = document.querySelectorAll(".value");

    editBtn.style.display = "none";
    submitBtn.style.display = "block";

    editFields.forEach(function (field, index) {
      field.style.display = "inline";
      field.value = values[index].textContent;
    });
  }

  function disableEdit() {
    // "완료" 버튼 클릭 시 실행되는 함수
    let editBtn = document.querySelector(".edit-btn");
    let submitBtn = document.querySelector(".submit-btn");
    let editFields = document.querySelectorAll(".edit");
    let values = document.querySelectorAll(".value");

    editBtn.style.display = "block";
    submitBtn.style.display = "none";

    editFields.forEach(function (field, index) {
      field.style.display = "none";
      values[index].textContent = field.value;
    });

    // 변경된 값을 서버에 보냅니다.
    sendDataToServer();
  }

  function sendDataToServer() {
    // AJAX 요청을 보내는 함수
    let total = document.querySelector("#no1_total .value").textContent;
    let winner = document.querySelector("#no1_winner .value").textContent;
    let money = document.querySelector("#no1_money .value").textContent;

    $.ajax({
      url: "/lotto/homelotto",
      type: "POST",
      data: {
        total: total,
        winner: winner,
        money: money,
      },
      success: function (response) {
        console.log("서버 응답 성공");
      },
      error: function (xhr, status, error) {
        console.log("에러 발생:", error);
      },
    });
  }
</script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

	<!-- footer-->
	<div style="width: 1920px;">
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>
</html>
