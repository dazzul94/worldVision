<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
		
		function logout(id){
			alert(id+"님이 로그아웃 하셨습니다.");
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
    			<c:when test="${loginId == null || loginId == '' }">
    				<a href="login">로그인</a>
    			</c:when>
    			<c:otherwise>
    				<a href="#" onclick="logout('${loginId}')" return false; >로그아웃</a>
    			</c:otherwise>
    		</c:choose>
            	
            </div>
    		<p><a href="http://www.worldvision.or.kr" target="_blank"><img src="${contextPath}/images/index/logo_button_world.gif" alt=""/></a></p>
        </div>
    </header>
    <!-- //header -->
    <section  class="man_mainvisual">
 <div class="barame_slider" > <!-- Fullwidth Slider -->
			<ul class="bxslider">
                                <li class="slider_img2"><a href="/index/about_02.php" class="barame_hidden">2</a></li>
								<li class="slider_img3"><a href="/index/about_02.php" class="barame_hidden">3</a></li>	
                                <li class="slider_img4"><a href="/index/online/online_01.php?type=1" class="barame_hidden">4</a></li>	
                                <li class="slider_img5"><a href="http://wvchoir.or.kr/BlueAD/board.php?bbs_id=wv_gallery03&mode=view&bbs_no=1328&page=2&key=&keyword" class="barame_hidden">5</a></li>	
			</ul>
		</div>
		<!-- //Fullwidth slider -->
    </section>
    <section id="container">
   	  <article class="noticeWrap">
        		<div class="noticeBox">
                	<h3><img src="${contextPath}/images/main/title4.png" alt=""/></h3>
                    <ul>
                    	<li class="ellipsis"><a href="#">일정안내</a></li>
                    </ul>
                    
                    <a href="#" class="btn_up"><img src="${contextPath}/images/index/main/up.png"  alt=""/></a>
                    <a href="#" class="btn_down"><img src="${contextPath}/images/index/main/down.png"  alt=""/></a>
              </div>
              
              <div class="noticeBox">
                	<h3><img src="${contextPath}/images/index/main/title5.png" alt=""/></h3>
                    <ul>
                    	<li class="ellipsis"><a href="#">일정안내일정안내일정안내일정안내일정안내일정안내일정안내일정안내일정안내</a></li>
                    </ul>
                    
                    <a href="#" class="btn_up"><img src="${contextPath}/images/index/main/up.png"  alt=""/></a>
                    <a href="#" class="btn_down"><img src="${contextPath}/images/index/main/down.png"  alt=""/></a>
              </div>
      </article>
      <article class="mainWrap">
      	<!--좌측 -->
      	<div class="content_l">
        	<h3><img src="${contextPath}/images/index/main/title1.png" alt=""/></h3>
            <ul>
            	<li><a href="#"><img src="${contextPath}/images/index/main/main_btn1.png" alt=""/></a></li>
                <li><a href="#"><img src="${contextPath}/images/index/main/main_btn2.png" alt=""/></a></li>
                <li><a href="#"><img src="${contextPath}/images/index/main/main_btn3.png" alt=""/></a></li>
                <li><a href="#"><img src="${contextPath}/images/index/main/main_btn4.png" alt=""/></a></li>
                <li><a href="http://www.facebook.com/wvkcc" target="_blank"><img src="${contextPath}/images/index/main/main_btn5.png" alt=""/></a></li>
                <li><a href="http://www.youtube.com/user/wvchoir" target="_blank"><img src="${contextPath}/images/index/main/main_btn6.png" alt=""/></a></li>
            </ul>
        </div>
        <!--// 좌측 -->
        <!--중앙 -->
        <div class="content_c">
        	<div class="main_banner">
            	<h3><img src="${contextPath}/images/index/main/title2.png" alt=""/></h3>
                                    <ul class="slide_v2">
										<li><img src="${contextPath}/images/index/main/banner.png"  alt=""/></li>
										<li><img src="${contextPath}/images/index/main/banner.png"  alt=""/></li>
										<li><img src="${contextPath}/images/index/main/banner.png"  alt=""/></li>
									</ul>
                                    <div class="btn_pager">
                        				<a data-slide-index="0" href="#">01</a>
                        				<a data-slide-index="1" href="#">02</a>
                        				<a data-slide-index="2" href="#">03</a>
  									</div>
                                </div>
                                <script type="text/javascript">
                                            $('.slide_v2').bxSlider({
                                            mode: 'horizontal', //horizontal 가로방향, vertical 세로방향 , fade 흐려지는 효과 
                                    		auto: true, 
											controls: false,
											autoHover: true,   // 마우스 호버시 정지 여부
                                    		speed: 500, //슬라이드 넘어가는 속도, 기본값 500
                                    		pause: 4000, //슬라이드 멈춰있는 속도, 기본값 4000 
											pager: 'short',
											pagerCustom: '.btn_pager' ,
											
                                            });
								</script>
                                <!-- 갤러리게시판 -->
       	  <h3 class="mt30"><img src="${contextPath}/images/index/main/title3.png" alt=""/></h3>
            <ul>
            	<li><a href="#"><img src="${contextPath}/images/index/1.png" width="103" height="70" alt=""/><p>2018.04.33...</p></a></li>
                <li><a href="#"><img src="${contextPath}/images/index/1.png" width="103" height="70" alt=""/><p>2018.04.33...</p></a></li>
                <li><a href="#"><img src="${contextPath}/images/index/1.png" width="103" height="70" alt=""/><p>2018.04.33...</p></a></li>
            </ul>
            <!-- //갤러리게시판 -->
        </div>
        <!--// 중앙 -->
        <!-- 우측 -->
        <div class="content_r">
        	<p><a href="#"><img src="${contextPath}/images/index/main/main_btn7.png" alt=""/></a></p>
            <p><a href="#"><img src="${contextPath}/images/index/main/main_btn9.png" alt=""/></a></p>
            <ul>
            	<li><a href="#"><img src="${contextPath}/images/index/main/main_btn10.png" alt=""/></a></li>
                <li><a href="#"><img src="${contextPath}/images/index/main/main_btn11.png" alt=""/></a></li>
                <li><a href="#"><img src="${contextPath}/images/index/main/main_btn12.png" alt=""/></a></li>
                <li><a href="#"><img src="${contextPath}/images/index/main/main_btn13.png" alt=""/></a></li>
            </ul>
        </div>
        <!-- 우측 -->
      </article>
    </section>
    
    <!-- footer -->
	<footer id="footer">
    	<div class="inner">
        	<h1><img src="${contextPath}/images/index/foot_logo.gif" alt=""/></h1>
            <div class="info">
            	<p>기관:월드비전 음악원 │ 주소:(우 07638) 서울특별시 강서구 강서로 47마길 85(내발산동 711-11) 월드비전 음악원<br/>
                대표자:한상호 │ 사업자등록번호:109-82-09997 │ 대표전화:02-2662-1803 │ 팩스:02-2661-2568</p>
                <p>COPYRIGHT 2010 WVCHOIR ALL RIGHTS RESERVED.</p>
            </div>
    	</div>
	</footer>
    <!-- //footer -->
    
    
    <!-- quick menu 
    <script language="JavaScript" src="js/jquery-1.9.1.min.js"></script>
    <div id="SP_toggleMenu_ver2">
		<div class="quick_menu">
     		<ul class="quick_menu">
     			<li><a href="#" target="_self">입단신청</a></li>
     			<li><a href="#" target="_self">음악감상실</a></li>
     			<li><a href="#" target="_self">영상갤러리</a></li>
     			<li><a href="#" target="_self">사진갤러리</a></li>
     			<li><a href="#" target="_self">월비통신</a></li>
			</ul>
		</div>
    	<div class="left_sp">
			<button id="toggle_btn_left" class="off">토글버튼</button>
		</div>
	</div>

    <script language="JavaScript" src="js/rightquick.js"></script>
    //quick menu -->
</body>
</html>
