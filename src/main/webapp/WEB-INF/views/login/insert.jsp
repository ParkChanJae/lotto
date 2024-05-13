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
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>회원가입</title>
<style>
  .match {
    color: green;
    font-weight: bold;
    margin-left: 1rem;
  }
  
  .unmatch {
    color: red;
    font-weight: bold;
    margin-left: 1rem;
  }
</style>

</head>
	<jsp:include page="/WEB-INF/views/include/topnav.jsp" />
<body>

 	<div class="container">
		<div class="row mt-3">
			<h1 class="bg-dark py-5" style="color: white;">회원 가입</h1>
		</div>
			<div class="mb-3 mt-3" style="font-size: 18px;"><span style="color:red; font-size: 22px;">*</span> 필수항목 입니다</div>
		<div class="row">
			<form class="form-horizontal" id="frm" action="/lotto/insert" method="post" onsubmit="return validateForm()">
				<div class="form-group">
					<label for="inputId" class="col-sm-2 control-label">* 아이디</label>
					<div class="col-sm-10">
						<input class="form-control" id="id" placeholder="ID" name="mb_id" autocomplete="off">
						<a class="btn btn-primary btn-sm mt-2" id='btn-userid' onclick="checkId()">ID 중복체크</a>
						<span id="id_check_result"></span>
					</div>
					
				</div>
				<div class="form-group">
				  <label for="inputPassword" class="col-sm-2 control-label">* 비밀번호</label>
				  <div class="col-sm-10">
				    <input type="password" class="form-control" id="Password1" placeholder="Password" name="mb_pw" autocomplete="off" onchange="checkPassword()">
				  </div>
				</div>
				<div class="form-group">
				  <label for="inputPassword2" class="col-sm-2 control-label">* 비밀번호 재확인</label>
				  <div class="col-sm-10">
				    <input type="password" class="form-control" id="Password2" placeholder="Password" autocomplete="off" onchange="checkPassword()">
				  </div>
				</div>
				<span id="passwordResult"></span>				
				<div class="form-group mt-3">
					<label for="inputName" class="col-sm-2 control-label"  autofocus>* 이름</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputName" placeholder="이름" name="mb_name" autocomplete="off">
					</div>
				</div>				
				<div class="form-group">
					<label for="inputAdd" class="col-sm-2 control-label">* 주소</label> 
				<div class="col-sm-10">
				 <input type="text" name="zipcode" id="zipcode" size="7" readonly>
                <input type="button" value="우편번호찾기" onclick="kakaopost()">
                <div class="mt-2"><input type="text" name="address" id="address" size="90" autocomplete="off"></div>
						<input class="form-control" id="layer" placeholder="주소" name="address" autocomplete="off">
					</div>
				</div>				
				<div class="form-group">
					<label for="inputEmail" class="col-sm-2 control-label">* Email</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email" autocomplete="off">
					</div>
				</div>
				<div class="form-group">
					<label for="inputTel" class="col-sm-2 control-label">* 전화번호</label>
					<div class="col-sm-10">
						<input type="tel" class="form-control" id="inputEmail" placeholder="Tel" name="phone" autocomplete="off" maxlength='11'>
					</div>
				</div>
				<div class="form-group">
					<div class="bottom col-sm-offset-2 col-sm-10" style="margin-top: 15px;margin-bottom: 15px;text-align: center;">
					</div>
				</div>
					<div class="d-flex justify-content-center">
						<button type="submit" class="btn_click btn btn-primary mt-2 mb-2">회원 가입</button>
						<a class="btn btn-danger mt-2 mb-2" href='<c:url value="/"/>'>취소</a>
					</div>
			</form>
		</div>
	</div>				
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

//입력창 입력
function validateForm() {
  const idField = document.getElementById("id");
  const pwField1 = document.getElementById("Password1");
  const pwField2 = document.getElementById("Password2");
  const nameField = document.getElementById("inputName");
  const addressField = document.getElementById("address");
  const emailField = document.getElementById("inputEmail");
  const phoneField = document.getElementById("inputTel");
  
  if (!idField.value.trim()) {
    alert("ID를 입력하세요");
    idField.focus();
    return false;
  }
  
  if (!pwField1.value) {
    alert("패스워드를 입력하세요");
    pwField1.focus();
    return false;
  }
  
  if (pwField2.value !== pwField1.value) {
    alert("패스워드가 일치하지 않습니다.");
    pwField2.focus();
    return false;
  }
  
  if (!nameField.value.trim()) {
    alert("이름을 입력하세요");
    nameField.focus();
    return false;
  }
  
  if (!addressField.value.trim()) {
    alert("주소를 입력하세요");
    addressField.focus();
    return false;
  }
  
  if (!emailField.value.trim()) {
    alert("이메일을 입력하세요");
    emailField.focus();
    return false;
  }
  
  if (!phoneField.value.trim()) {
    alert("휴대폰을 입력하세요");
    phoneField.focus();
    return false;
  }
  
  return true;
}


//비밀번호 일치
 function checkPassword() {
    var pw1 = document.getElementById("Password1").value;
    var pw2 = document.getElementById("Password2").value;
    if (pw1 !== "" && pw2 !== "") {
      if (pw1 === pw2) {
        document.getElementById("passwordResult").innerHTML = "비밀번호가 일치합니다.";
        document.getElementById("passwordResult").className = "match";
      } else {
        document.getElementById("passwordResult").innerHTML = "비밀번호가 일치하지 않습니다.";
        document.getElementById("passwordResult").className = "unmatch";
      }
    }
  }

// 아이디 중복확인
  function checkId() {
    var id = $("#id").val();
    if (!id) {
        $("#id_check_result").text("아이디를 입력해주세요.");
        document.getElementById("id_check_result").className = "unmatch";
        return;
      }
    
    $.ajax({
      url: "idCheck.id",
      type: "get",
      data: {id: id},
      success: function(data) {
        if (data) {
          // 중복된 아이디가 존재하는 경우
          $("#id_check_result").text("이미 사용 중인 아이디입니다.");
          document.getElementById("id_check_result").className = "unmatch";
        } else {
          // 중복되지 않은 경우
          $("#id_check_result").text("사용 가능한 아이디입니다.");
          document.getElementById("id_check_result").className = "match";
        }
      }
    });
  }
</script>

</body>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	
	
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