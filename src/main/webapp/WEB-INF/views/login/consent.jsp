<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>믿음로또</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">
	<script src="https://code.jquery.com/jquery-3.6.3.min.js" ></script> 
    <script src="js/common.js"></script>
</head>
<style>
.scrollable {
  overflow-y: scroll; /* enables vertical scrolling */
  max-height: 300px; /* sets the maximum height of the div */
}
</style>
		
	<jsp:include page="/WEB-INF/views/include/topnav.jsp" />
<body style="background-color: #ecf3f9; ">
		<form action="login/insert">
		<div class="container">
			<h2 style="text-align: center; font-weight: bolder;" class="mt-4 mb-3">가입약관 동의</h2>
		  <div class="row checkbox_group">
			<div class="row justify-content-center">
		  <div class="border d-flex align-items-center col-lg-8" style="height:3.5rem; background-color: #375ddb; color:white; font-size: 16px;">
		  <input type="checkbox" id="check_all" >
		  <label for="check_all" style="margin-left: .5rem;">전체 동의(선택항목 포함)</label>
		</div>
		  </div>
		  	<div>
		  		<p class="text-center mt-4" style="font-size: 18px; font-weight:bolder;">이용약관, 개인정보 수집/이용동의</p>
		  	</div>
		  
		  	<div class="row d-flex justify-content-center">
		  	<div class="border col-8 scrollable" style="background-color: white;">
		  	<div class="d-flex justify-content-between mb-3 mt-2">
		  		<span style="font-size: 23px;">이용약관 동의(필수) [보기]</span>
		  		<div>
		  		<input type="checkbox" id="chk1" class="normal">
 		 		 <label for="check_3" class="text-end" style="font-size: 18px;">동의</label>
 		 		 </div>
 		 		 </div>
 		 		 <jsp:include page="/WEB-INF/views/login/ptag.jsp" />
		  	</div>
		  </div>
		  <div>
		  <p class="text-center mt-4" style="font-size: 18px; font-weight:bolder;">SNS 수신동의</p>
		  </div>
		  <div class="d-flex justify-content-center">
		  <div class="border d-flex align-items-center col-lg-8 mt-3 justify-content-between" style="height:3.5rem; background-color: white;">
		  <label for="check_1">개인정보 처리방침 동의(필수) <a href="javascript:GetShow2()">[보기]</a></label>
		 <div class="d-flex"><input type="checkbox" id="chk2" class="normal d-flex"><span>동의</span></div>
		  </div>
		  </div>
		  <div class="row justify-content-center">
		 	<span id="dviCon2" style="display: none; background-color: white; margin-left: 1.9rem; "
		 	 class="border text-center col-lg-8 mt-1">
		 	 <jsp:include page="/WEB-INF/views/login/ptag2.jsp" /></span>
		 	</div>
		 	
		  <div class="d-flex justify-content-center">
		  <div class="border d-flex align-items-center col-lg-8 mt-3 justify-content-between" style="height:3.5rem; background-color: white;">
		  <label for="check_2">SNS 수신동의(필수) <a href="javascript:GetShow()">[보기]</a></label>
		  <div class="d-flex"><input type="checkbox" id="chk3" class="normal d-flex"><span>동의</span></div>
		  </div>
		  </div>
		  <div class="row justify-content-center">
		 	<span id="dviCon" style="display: none; background-color: white; margin-left: 1.9rem;"
		 	 class="border text-center col-lg-8 mt-1">
		 	 <jsp:include page="/WEB-INF/views/login/ptag3.jsp" /></span>
		 	</div>
		</div><!-- 체크박스 끝 -->
		
			<div class="row d-flex justify-content-center mt-4 mb-5">
			<a href="#" class="col-3 btn me-2" style="background-color: white; color: blue; height: 3rem;">취소</a>
			<button type="button" id="next"  name="checkButton" class="col-3 btn ms-2 btn-primary" style="height: 3rem;">다음</button>
			</div>
		</div>
		</form>
		

		
</body>
	<div class="onlyPC mt-5">
	<!-- footer-->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>

<script>
// 다음 버튼 클릭
$("#next").click(function(){
    
    // 첫번째 체크박스가 체크되어 있는경우
    if($("#chk1").is(":checked")){
        
    } else { // 첫번째 체크박스가 체크 되어있지 않은 있는경우
        alert("이용약관 동의가 체크되지 않았습니다.")
        return false;
    }
    
    // 두번째 체크박스가 체크되어 있는경우
    if($("#chk2").is(":checked")){
    } else { // 두번째 체크박스가 체크 되어있지 않은 있는경우
        alert("개인정보 처리방침 동의가 체크되지 않았습니다.");
        return false;
    }
    
 // 두번째 체크박스가 체크되어 있는경우
    if($("#chk3").is(":checked")){
    } else { // 두번째 체크박스가 체크 되어있지 않은 있는경우
        alert("SNS 수신동의가 체크되지않았습니다.");
        return false;
    }
    
    location.href="insert";
});

  </script>	

<script>


	// SNS 수신동의 보기
	 function GetShow(){
		
		var con = document.getElementById("dviCon");
		
		if(con.style.display == "none") {
				con.style.display = "block";
		}else {
			con.style.display = "none";
		}
		
	}
	
	// 개인정보 처리방침 동의 보기
	 function GetShow2(){
		
		var con2 = document.getElementById("dviCon2");
		
		if(con2.style.display == "none") {
				con2.style.display = "block";
		}else {
			con2.style.display = "none";
		}
		
	}
</script>

<script>
	// 체크박스 전체 선택
$(".checkbox_group").on("click", "#check_all", function () {
    $(this).parents(".checkbox_group").find('input').prop("checked", $(this).is(":checked"));
});

// 체크박스 개별 선택
$(".checkbox_group").on("click", ".normal", function() {
    var is_checked = true;

    $(".checkbox_group .normal").each(function(){
        is_checked = is_checked && $(this).is(":checked");
    });

    $("#check_all").prop("checked", is_checked);
});

</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</html>