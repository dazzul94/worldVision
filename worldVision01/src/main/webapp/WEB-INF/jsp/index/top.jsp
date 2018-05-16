<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />	
<title>::: 월드비전 합창단 :::${contextPath}</title>
<link href="${contextPath}/css/index/common.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/css/index/style.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/css/index/animate.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/css/index/fonts.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/css/index/jquery.bxslider.css" rel="stylesheet">
<script language="JavaScript" src="${contextPath}/js/index/common.js"></script>
<script language="JavaScript" src="${contextPath}/js/index/html5.js"></script>
<script language="javascript" src="${contextPath}/js/index/jquery-1.12.3.js"></script>
<script src="js/index/jquery.bxslider.js"></script>

<script src="${contextPath}/js/index/jquery.bxslider.min.js" language="JavaScript"></script>
<link href="${contextPath}/css/index/jquery.bxslider.css" rel="stylesheet" type="text/css">
<script type="text/javascript">


		jQuery(document).ready(function(){
			// BX 이미지 슬라이더 
			jQuery('.bxslider').bxSlider({
				mode: 'fade',
				autoControls: true,
				autoDelay: 0,
				auto: true,
				speed: 1500,
				pause: 4000,
				controls: false
			});
		});
		
		function msg(msg){
			if(msg != null && msg != ""){
				alert(msg);	
			}
		}
		
		function logout(name){
			alert(name+"님이 로그아웃 하셨습니다.");
			location.href = "logout";
		}

</script>
<!--[if lt IE 8]>
		<script type="text/javascript">
			document.createElement('header');
			document.createElement('section');
			document.createElement('article');
			document.createElement('footer');
		</script>
		<![endif]-->
</head>

	<body id="wrap" onload="msg('${msg}')">
	<!-- header -->
	<header id="header">
    	<div class="inner">
        	<h1><a href="."><img src="${contextPath}/images/index/logo.png" alt="월드비전 합창단"/></a></h1>
            <nav class="menu">
				<ul>
					<li class="menu01">
						<a href="about">음악원</a>
							<div class="menu-sub">
								<ul>
									<li><a href="about">조직도</a></li>
									<li><a href="about2">기관소개</a></li>
									<li><a href="about3">오시는 길</a></li>
								</ul>
							</div>
					</li>
					<li class="menu02">
						<a href="choir">합창단</a>
							<div class="menu-sub">
								<ul>
									<li><a href="choir">소개</a></li>
									<li><a href="choir2">연혁</a></li>
									<li><a href="choir3">연주반</a></li>
									<li><a href="choir4">지역반</a></li>
								</ul>
							</div>
					</li>
					<li class="menu03">
						<a href="concert">연주회</a>
							<div class="menu-sub">
								<ul>
									<li><a href="concert">연주일정</a></li>
									<li><a href="concert2">초청연주</a></li>
									<li><a href="concert3">기획연주</a></li>
									<li><a href="concert4">미션연주</a></li>
									<li><a href="concert5">해외연주</a></li>
								</ul>
							</div>
					</li>
					<li class="menu04">
						<a href="gallery">갤러리</a>
							<div class="menu-sub">
								<ul>
									<li><a href="gallery">사진</a></li>
									<li><a href="gallery2">영상</a></li>
									<li><a href="gallery3">포스터</a></li>
									<li><a href="gallery4">음반</a></li>
								</ul>
							</div>
					</li>
					<li class="menu05">
						<a href="request">신청란</a>
							<div class="menu-sub">
								<ul>
									<li><a href="request">입단신청</a></li>
									<li><a href="request2">합창단 후원신청</a></li>
									<li><a href="request3">음반·악보 구입신청</a></li>
									<li><a href="request4">각종증명서 신청</a></li>
								</ul>
							</div>
					</li>
                    <li class="menu05">
						<a href="board">게시판</a>
							<div class="menu-sub">
								<ul>
									<li><a href="board">공지사항</a></li>
									<li><a href="board2">보도자료</a></li>
									<li><a href="board3">월비통신</a></li>
								</ul>
							</div>
					</li>
				</ul>
			</nav>

	<script type="text/javascript">
		$(".menu>ul>li>a").mouseover(function(){
			if($("nav.menu>ul>li>div").is(":hidden")){
				$("nav.menu>ul>li").removeClass("on");
				$(this).parents().addClass("on");
				$("nav.menu>ul>li>div").fadeOut(100);
				$("+div",this).fadeIn(200);
			}
		});
		$(".menu").mouseleave(function(){
			$("nav.menu>ul>li").removeClass("on");
			$("nav.menu>ul>li>div").fadeOut(100);
		});
	</script>
    		<div class="tnb">
    		<c:choose>
    			<c:when test="${member == null || empty member }">
    				<a href="login">로그인</a>
    			</c:when>
    			<c:otherwise>
    				<a href="#" onclick="logout('${member.member_name}')" return false; >로그아웃</a>
    			</c:otherwise>
    		</c:choose>
            	
            </div>
    		<p><a href="http://www.worldvision.or.kr" target="_blank"><img src="${contextPath}/images/index/logo_button_world.gif" alt=""/></a></p>
        </div>
    </header>
    <!-- //header -->