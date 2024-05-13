<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/styles.css">
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="js/common.js"></script>
<style>
@media screen and (max-width: 768px) {
  .drwno1, .drwno2, .drwno3, .drwno4, .drwno5, .drwno6 {
    display: inline-block;
    width: 30%;
  }
}
.orange {
  border: 5px solid #c98960;
  color: #c98960;
  display: inline-block;
    width: 50px;
    height:50px;
    border-radius: 50%;
    font-weight: bolder;
    font-size: 25px;
}

.blue {
  border: 5px solid #173175;
    color: #173175;
    display: inline-block;
    width: 50px;
    height:50px;
    border-radius: 50%;
    font-weight: bolder;
    font-size: 25px;
}

.green {
border: 5px solid #2f8d46;
    color: #2f8d46;
  display: inline-block;
    width: 50px;
    height:50px;
    border-radius: 50%;
    font-weight: bolder;
    font-size: 25px;
}

.gray {
border: 5px solid #7a7684;
    color: #7a7684;
  display: inline-block;
    width: 50px;
    height:50px;
    border-radius: 50%;
    font-weight: bolder;
    font-size: 25px;
}

.purple {
border: 5px solid #7a3f81;
    color: #7a3f81;
  display: inline-block;
    width: 50px;
    height:50px;
    border-radius: 50%;
    font-weight: bolder;
    font-size: 25px;
}

@media screen and (max-width: 768px) {
	.onlyPC {
		display: none;
	}
}

.box {
	border-style: solid;
	height: 5rem;
	border-width: 3px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.non-click {
	background-color: white;
	border-color: #375ddb;
}

.click {
	background-color: #375ddb;
	color: white;
}

.box.active {
	background-color: #007bff;
	color: white;
}
</style>

<title>믿음로또</title>
<!-- Navigation-->
<jsp:include page="/WEB-INF/views/include/topnav.jsp" />
</head>
<body>
	<!-- 스마트 AI 소개 -->
	<div class="row w-100 m-0 p-4"
		style="background-image: url('img/lottobg.png'); background-size: cover; height: 40rem;">
		<div
			class="col-lg-12 col-sm-6 d-flex justify-content-center align-items-center">
			<span class="m-0" style="font-size: 35px; color: white;">로또분석
				용어 </span>
		</div>
	</div>
	<!-- 스마트 AI 소개 끝 -->

	<div class="container">
		<div class="row">
				<div class=" mt-5 d-flex justify-content-center">
				<c:if test="${empty loginInfo }">
					<span style="font-size: 20px; text-align: center;"><a style="color: red;" href="login.lo">
						로그인을 하시면 로또 번호를 확인하실 수 있습니다.<br> <span>Click 후 로그인</span></a></span>
				</c:if>
				</div>
				
				<c:if test="${not empty loginInfo}">
					<span class="text-center mb-4" style="font-size: 24px;">${loginInfo.mb_name}님 무료 로또번호</span>
					<table class="table">
						<thead class="text-center">
							<tr style="background-color: #b4c3d0; font-weight: bolder;">
								<th>추천번호 <span style="color : red;">* 무료 번호는 1회만 가능합니다.</span></th>
								<th>보너스번호</th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
  <c:when test="${empty vo}">
  <div class="d-flex">
    <p>무료번호가 없습니다.</p>
    <button name="lottoinsert" id="lottoinsert" class="btn btn-primary" style="width: 20%; height: 2rem;">클릭하면 무료 번호</button>
    </div>
  </c:when>
  <c:otherwise>
    <tr class="text-center drwno">
      <td>
        <span class="drwno text-center number">${vo.drwtNo1}</span>
        <span class="drwno text-center number">${vo.drwtNo2}</span>
        <span class="drwno text-center number">${vo.drwtNo3}</span>
        <span class="drwno text-center number">${vo.drwtNo4}</span>
        <span class="drwno text-center number">${vo.drwtNo5}</span>
        <span class="drwno text-center number">${vo.drwtNo6}</span>
      </td>
      <td>
        <img class="me-3" src="img/plus.png" alt="" />
        <span class="drwno3 text-center number">${vo.bonusNumber}</span>
      </td>
    </tr>
  </c:otherwise>
</c:choose>
						</tbody>
					</table>
				</c:if>
		</div>

	</div>


	<div class="row text-center mt-5 mb-4">
		<div class="col-lg-12" style="font-size: 26px; font-weight: bolder;">로또분석
			용어</div>
	</div>

	<div class="container mb-5">
		<div class="row justify-content-center">
			<div class="col-lg-3 box non-click"
				style="font-size: 21px; font-weight: bolder;"
				onclick="toggleDiv('dviCon1', this);">로또분석 용어</div>
			<div class="col-lg-3 me-1 ms-1 box non-click"
				style="font-size: 21px; font-weight: bolder;"
				onclick="toggleDiv('dviCon2', this);">확률과 조합 분석</div>
			<div class="col-lg-3 box non-click"
				style="font-size: 21px; font-weight: bolder;"
				onclick="toggleDiv('dviCon3', this);">로또 번호 추출</div>
		</div>
		<span id="dviCon1" class="mt-5"
			style="font-size: 16px; display: none;"> <jsp:include
				page="/WEB-INF/views/number/page1.jsp" />
		</span> <span id="dviCon2" class="mt-5"
			style="display: none; text-align: -webkit-center;"> <img
			src="img/num4.png" alt="" />
		</span> <span id="dviCon3" class="mt-5" style="display: none;"> <jsp:include
				page="/WEB-INF/views/number/page2.jsp" />
		</span>
	</div>

<script>
$(document).ready(function() {
	  $('#lottoinsert').click(function() {
	    $.ajax({
	      url: '/lotto/lottoinsert',
	      type: 'GET',
	      dataType: 'json',
	      success: function(data) {
	        console.log(data); // 서버에서 반환한 LottoSoloVO 객체 출력
	      },
	      error: function(xhr, status, error) {
	        console.error(error);
	      }
	    });
	  });
	});


const numbers = document.querySelectorAll('.number');

numbers.forEach((number) => {
  const value = parseInt(number.innerText);

  if (value >= 1 && value <= 10) {
    number.classList.add('orange');
  } else if (value >= 11 && value <= 20) {
    number.classList.add('blue');
  } else if (value >= 21 && value <= 30) {
    number.classList.add('green');
  } else if (value >= 31 && value <= 40) {
    number.classList.add('gray');
  } else if (value >= 41 && value <= 45) {
    number.classList.add('purple');
  }
});

function toggleDiv(divId, clickedDiv) {
	// 모든 div 요소를 숨김
	const allDivs = document.querySelectorAll('span[id^="dviCon"]');
	for (let i = 0; i < allDivs.length; i++) {
		allDivs[i].style.display = "none";
	}

	// 모든 div 요소에서 active 클래스 제거
	const allBoxes = document.querySelectorAll('.box');
	for (let i = 0; i < allBoxes.length; i++) {
		allBoxes[i].classList.remove('active');
	}

	// 클릭된 div 요소에 active 클래스 추가
	clickedDiv.classList.add('active');

	// 해당 div 요소를 보여줌
	const div = document.getElementById(divId);
	div.style.display = "block";
}
</script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
</body>
<!-- footer-->
<div class="onlyPC">
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</div>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</html>