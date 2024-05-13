<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.Duration" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <!-- Bootstrap CSS -->
     <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/common.css">
    
     <script src="https://code.jquery.com/jquery-3.6.3.min.js" ></script> 
    <script src="js/common.js"></script>
    <script src="js/common.js"></script>
<style>
@media screen and (max-width: 768px) {
   .onlyPC {
      display: none;
   }
} 
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
</style>

<title>믿음로또</title>
	<!-- Navigation-->
	<jsp:include page="/WEB-INF/views/include/topnav.jsp" />
</head>
	<body>
		<!-- 스마트 AI 소개 -->
	<div class="row w-100 m-0 p-4" style="background-image: url('img/lottobg.png'); background-size:cover; height: 40rem;">
			<div class="col-lg-12 col-sm-6 d-flex justify-content-center align-items-end">
				<span class="m-0" style="font-size: 35px; color: white;">믿음로또의 통계 비법</span>
			</div>
			<div class="col-lg-12 col-sm-6 d-flex justify-content-center align-items-start mt-4">
				<span class="m-0" style="font-size: 26px; color: white;">최근 20회차의 동행복권 회차별 통계분석.</span>
			</div>
		</div><!-- 스마트 AI 소개 끝 -->
			
			<h3 class="text-center mt-5 mb-5" style="font-weight: bolder;">당첨번호안내</h3>
				
			<div class="container">
				<div class="row">
					<div class="border w-100 mb-5 d-flex align-items-center"  style="height: 3rem; background-color: #b4c3d0;">
						<select class="w-15" style="height: 2.5rem; font-size: 18px;" id="drwNo-select">
							<c:forEach items="${page.list }" var="vo"> 
								<option>${vo.drwNo } ~ ${vo.drwNo}</option>
							</c:forEach>
						</select>
					</div>
				</div>
			</div>	
			<!-- 번호 -->
			 <div class="container ">
			 <div class="mb-3" style="display: flex; justify-content: space-between;">
			<span style="font-size: 18px; font-weight: bolder;">회차별 당첨번호</span>
			</div>
			<table class="table">
			  <thead class="text-center">
			    <tr style="background-color: #b4c3d0; font-weight: bolder;">
			      <th>회차</th>
			      <th>당첨번호</th>
			      <th>보너스번호</th>
			      <th>추첨일</th>
			      <th>1등당첨금</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<c:forEach items="${page.list }" var="vo">
			      <tr class="text-center drwno"> 
			        <th scope="row">${vo.drwNo}</th>
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
					  <span class="drwno3 text-center number">${vo.bnusNo}</span>
					</td>
			        <td>${vo.drawDate}</td>
 			        <td>${vo.firstWinamnt}</td>
			      </tr>
			       </c:forEach>
			  </tbody>
			  
			 </table>
			</div>
			<div id="countdown">
				
			</div>
			
</body>
	<div class="onlyPC">
	<!-- footer-->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>
	
	
<script>
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

</script>	
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</html>