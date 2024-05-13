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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/styles.css">
     <script src="https://code.jquery.com/jquery-3.6.3.min.js" ></script> 
    <script src="js/common.js"></script>
<style>
@media screen and (max-width: 768px) {
   .onlyPC {
      display: none;
   }
} 
</style>
<style>
 a {
	text-decoration: none !important;
}

@media screen and (max-width: 768px) {
  .mfont40 {
    font-size: 30px !important;
  }
    
    .mfont30 {
    font-size: 20px !important;
  }
  
  .mfont20 {
    font-size: 15px !important;
  }
  
  .mfont12 {
    font-size: 15px !important;
  }
  
  .mhe2 {
  height: 20rem !important;
  }
  
  .mhe3 {
  height: 20rem !important;
  margin-bottom: -6rem; 
  }

}
  .mfont40 {
  font-size: 46px;
}  


  .mfont30 {
  font-size: 30px;
}

  
  .mfont20 {
  font-size: 20px;
}
  
  .mfont12 {
  font-size: 16px;
}
 
.mhe2 {
  height: 30rem; 
  }
  
  .mhe3 {
  height: 30rem; 
  }
 </style>  

<title>믿음로또</title>
	<!-- Navigation-->
	<jsp:include page="/WEB-INF/views/include/topnav.jsp" />
</head>
	<body>
			<!-- 공지사항 목록 -->
	<div class="row w-100 m-0 p-4" style="background-image: url('img/noticebg.png'); background-size:cover; height: 40rem;">
			<div class="col-lg-12 col-sm-6 d-flex justify-content-center align-items-center">
				<span class="m-0" style="font-size: 40px; color: white; font-weight: bolder;">고객센터</span>
			</div>
		</div><!-- 공지사항 목록 -->
			
			<h3 class="text-center mt-5 mb-5" style="font-size:30px; font-weight: bolder;">공지사항</h3>
			<div class="container">
			<div class="row">
				<div class="col-lg-12 border p-2 d-flex justify-content-center" style="background-color: #b4c3d0;">
					<div class="btn-group" style="background-color: white;">
					  <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					    작성자
					  </button>
					  <div class="dropdown-menu">
					    <a class="dropdown-item" href="#">작성자</a>
					    <a class="dropdown-item" href="#">내용</a>
					  </div>
					</div>
					<div class="ms-2">
					<input style="height: 2.5rem;" type="text" name="search" id="search" placeholder="내용" />
					</div>
					
					<div class="ms-2">
						<button class="" style="background-color: #365180; height:2.5rem; color: white;">검색하기</button>
					</div>
				</div>
			</div>
		</div>	
			<!-- 공지 내용 -->
			<div class="container mt-5">
				<div class="row">
				<div class="col-lg-12 border p-2 d-flex justify-content-center" style="background-color: #b4c3d0;">
					<span class="p-0 col-lg-2" style="font-size: 18px; font-weight: bolder;">NO.</span>
					<span class="col-lg-6 d-flex justify-content-center" style="font-size: 18px; font-weight: bolder;">제목</span>
					<span class="col-lg-2" style="font-size: 18px; font-weight: bolder;">작성자</span>
					<span class="col-lg-2" style="font-size: 18px; font-weight: bolder;">작성일</span>
				</div>
				</div>
				<!-- 공지 내용 -->
				<div class="row mt-2">
					<span class="col-lg-2 col mfont20" style="">1</span>
					<span class="col-lg-6 col d-flex justify-content-center mfont12" style="">
					<a href="#" style="color:#000;">공지사항입니다.</a></span>
					<span class="col-lg-2 col mfont12" style="">관리자</span>
					<span class="col-lg-2 col mfont12" style="">2023.02.02</span>
				</div>
				
					<hr class="mt-2" style="background-color: #b4c3d0; "/>
					
					<!-- 공지 내용 -->
					<div class="row mt-2">
					<span class="col-lg-2 col mfont20" style="">2</span>
					<span class="col-lg-6 col d-flex justify-content-center mfont12" style="">
					<a href="#" style="color:#000;">22년도 공지사항입니다</a></span>
					<span class="col-lg-2 col mfont12" style="">관리자</span>
					<span class="col-lg-2 col mfont12" style="">2023.02.02</span>
				</div>
				
					<hr class="mt-2" style="background-color: #b4c3d0; "/>
			</div>
			
			
			
</body>
	<div class="onlyPC">
	<!-- footer-->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</html>