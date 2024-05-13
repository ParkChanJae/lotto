<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/styles.css">
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
	  
<title>회원가입</title>
</head>
	<jsp:include page="/WEB-INF/views/include/topnav.jsp" />
<body>

<div class="container">
		<div class="row mt-3">
			<h1 class="bg-dark py-5" style="color: white;">회원 가입</h1>
		</div>
		<div class="row">
			<form class="form-horizontal" action="/show/insert" method="post">
				<div class="form-group">
					<label for="inputId" class="col-sm-2 control-label">아이디</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputId" placeholder="ID" name="userid" autocomplete="off">
						<button class="btn btn-primary btn-sm mt-2" id='btn-userid'>ID 중복체크</button>
						<span></span>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword" placeholder="Password" name="userpw" autocomplete="off">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword2" class="col-sm-2 control-label">비밀번호 재확인</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword2" placeholder="Password" autocomplete="off">
					</div>
				</div>				
				<div class="form-group">
					<label for="inputName" class="col-sm-2 control-label"  autofocus>이름</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputName" placeholder="이름" name="username" autocomplete="off">
					</div>
				</div>				
				<div class="form-group">
					<!-- <label for="inputAdd" class="col-sm-2 control-label">주소</label>  -->
				<div class="col-sm-10">
				<div>주소</div>
				 <input type="text" name="zipcode" id="zipcode" size="7" readonly>
                <input type="button" value="우편번호찾기" onclick="kakaopost()">
                <div class="mt-2"><input type="text" name="useraddress" id="address" size="90" autocomplete="off"></div>
						<!-- <input class="form-control" id="layer" placeholder="주소" name="useraddress" autocomplete="off"> -->
					</div>
				</div>				
				<div class="form-group">
					<label for="inputEmail" class="col-sm-2 control-label">Email</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email" autocomplete="off">
					</div>
				</div>
				<div class="form-group">
					<label for="inputTel" class="col-sm-2 control-label">전화번호</label>
					<div class="col-sm-10">
						<input type="tel" class="form-control" id="inputEmail" placeholder="Tel" name="tel" autocomplete="off" maxlength='11'>
					</div>
				</div>
				<div class="form-group">
					<div class="bottom col-sm-offset-2 col-sm-10" style="margin-top: 15px;margin-bottom: 15px;text-align: center;">
						<button type="submit" class="btn_click btn btn-primary mt-2 mb-2">회원 가입</button>
						<a href="/main"><button type="submit" class="btn btn-danger mt-2 mb-2">취소</button></a>
					</div>
				</div>
			</form>
		</div><!-- class=row -->
	</div><!-- class=container -->



</body>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script>
	
	function kakaopost() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	           document.querySelector("#zipcode").value = data.zonecode;
	           document.querySelector("#address").value =  data.address
	        }
	    }).open();
	}
	</script>
	
	
	
</html>