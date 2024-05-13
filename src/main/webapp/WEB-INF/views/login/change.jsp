<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>믿음로또</title>
<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/styles.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="js/common.js"></script>
</head>
<style>
html {
position: relative;
min-height: 100%;
}
@media screen and (max-width: 768px) {
   .onlyPC {
      display: none;
   }
} 
</style>
<!-- Navigation-->
	<jsp:include page="/WEB-INF/views/include/topnav.jsp" />
<body>
			<div class='container'>
			<div class="text-center mb-4 mt-5" style="font-size: 32px;">비밀번호 변경</div>
			<form method='post' action='changePassword'>
			<ul>
				<li class="text-center"><input type='password' name='mb_pw' class='chk w-30' style="height: 2.5rem;" placeholder="새비밀번호">
					<div class='valid'>비밀번호를 입력하세요</div>
				</li>	
				<li class="text-center mt-4"><input type='password' name='mb_pw_ck' class='chk w-30' style="height: 2.5rem;" placeholder="새비밀번호 확인">
					<div class='valid'>비밀번호를 한번 더 입력하세요</div>
				</li>
				<li class="text-center mt-4 mb-5">
			    <div class="button-group">
			      <button type='reset' class="btn btn-primary">다시입력</button>
			      <button class='password btn btn-primary'>비밀번호 변경</button>
			    </div>
			  </li>  
			</ul>
			</form>
			</div>
<script src='js/member.js?<%=new java.util.Date()%>'></script>
<script>
$(document).ready(function() {
    $('input[name="mb_pw"], input[name="mb_pw_ck"]').on('keyup', function() {
        if ($('input[name="mb_pw"]').val() == $('input[name="mb_pw_ck"]').val()) {
            $('input[name="mb_pw_ck"]').next('.valid').text('비밀번호가 일치합니다.').css('color', 'green');
        } else {
            $('input[name="mb_pw_ck"]').next('.valid').text('비밀번호가 일치하지 않습니다.').css('color', 'red');
        }
    });
});

$(function(){
    $('.password').on('click', function(){
        var password = $('input[name="mb_pw"]').val(); // 새 비밀번호
        var passwordCheck = $('input[name="mb_pw_ck"]').val(); // 새 비밀번호 확인

        if(password === passwordCheck){ // 입력한 두 개의 비밀번호가 일치할 경우
            $.ajax({
                url: 'changePassword',
                type: 'post',
                data: {
                    'mb_pw': password
                },
                success: function(){
                    alert('비밀번호가 변경되었습니다.');
                    location.href = 'login.lo';
                },
                error: function(){
                    alert('비밀번호 변경에 실패했습니다.');
                }
            });
        }else{ // 입력한 두 개의 비밀번호가 일치하지 않을 경우
            alert('새 비밀번호와 새 비밀번호 확인이 일치하지 않습니다.');
            return false;
        }
    });
});
</script>
<div class="onlyPC" style="position: absolute; bottom: 0%">
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>