<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
	<!-- viewport=화면상의 표시영역, content=모바일 장치들에 맞게 크기조정, initial=초기화면 배율 설정 -->
	
<link rel="stylesheet" href="css/bootstrap.css">
	<!-- 스타일시트로 css폴더의 bootstrap.css파일 사용 -->
	
<title>게시판</title>
</head>
<body style= "background-color : white;">

	<%
		String userID = null;
		if(session.getAttribute("userID") != null)
		{
			userID = (String) session.getAttribute("userID");
		}
			//로그인이 된 회원은 로그인의 정보를 담을수 있도록 설정  
	%>



	<nav class="navbar navbar-default"> <!-- navbar-색상(inverse = 검은색, default 22222= 색x) -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
				<!-- class="navbar-toggle collapsed"=>네비게이션의 화면 출력유무 
				data-toggle="collapse" : 모바일 상태에서 클릭하면서 메뉴가 나오게 설정 -->
			
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
					<!-- 아이콘 이미지 -->
				
			</button>
			
			<a class="navbar-brand" href="main.jsp">JSP 게시판</a>
				<!-- Bootstrap navbar 기본 메뉴바 -->
		</div>
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav"> <!-- navbar-nav => 네비게이션 바의 메뉴 -->
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
				<!-- 메뉴, 게시판의 main.jsp와 bbs.jsp의 파일로 각각 이동 -->
			</ul>
			<%
				if(userID == null) //로그인이 되어있지 않았을때, 
				{
					
				
			%>
			
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
						<a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">접속하기<span class="caret"></span></a>
							<!-- 임시의 주소링크 "#"을 기재한다. -->
							<!-- caret = creates a caret arrow icon (▼) -->
					
						<ul class="dropdown-menu">
							<!-- dropdown-menu : 버튼을 눌렀을때, 생성되는 메뉴(접속하기를 눌렀을때 로그인, 회원가입 메뉴 -->
					
							<li><a href="login.jsp">로그인</a></li>
							<li><a href="join.jsp">회원가입</a></li>
						</ul>
					</li>	
			</ul>
			<%
				}else	//로그인이 되었을때
				{
			%>	
							<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
						<a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">회원관리<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<!-- dropdown-menu : 버튼을 눌렀을때, 생성되는 메뉴(접속하기를 눌렀을때 로그인, 회원가입 메뉴 -->
							<li><a href="logoutAction.jsp">로그아웃</a></li>
						</ul>
					</li>	
			</ul>	
			<% 
				}
			%>
			
			
		</div>
	</nav>
	<!-- 메인 페이지 영역 시작 -->
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>웹 사이트 소개</h1>
				<p> JSP 게시판 웹 사이트 입니다 디자인은 부트스트랩을 이용하여 제작하였습니다.
					</p>
				
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
</body>
</html>