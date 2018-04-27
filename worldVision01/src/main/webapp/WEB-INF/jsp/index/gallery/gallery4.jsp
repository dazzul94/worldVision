<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />	
<title>::: 월드비전 합창단 :::</title>
<link href="${contextPath }/css/index/common.css" rel="stylesheet" type="text/css">
<link href="${contextPath }/css/index/style.css" rel="stylesheet" type="text/css">
<link href="${contextPath }/css/index/animate.css" rel="stylesheet" type="text/css">
<link href="${contextPath }/css/index/fonts.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="${contextPath }/js/index/common.js"></script>
<script language="JavaScript" src="${contextPath }/js/index/html5.js"></script>
<script language="javascript" src="${contextPath }/js/index/jquery-1.12.3.js"></script>

<!--[if lt IE 8]>
		<script type="text/javascript">
			document.createElement('header');
			document.createElement('section');
			document.createElement('article');
			document.createElement('footer');
		</script>
		<![endif]-->
</head>
<body id="wrap">
	<!-- header -->
	<header id="header">
    	<div class="inner">
        	<h1><a href="."><img src="${contextPath }/images/index/logo.png" alt="월드비전 합창단"/></a></h1>
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
            	<a href="#">로그인</a>
            </div>
    		<p><a href="http://www.worldvision.or.kr" target="_blank"><img src="${contextPath }/images/index/logo_button_world.gif" alt=""/></a></p>
        </div>
    </header>
    <!-- //header -->
        <section id="container">
    	<article id="lnbWrap">
        	<h2>GALLERY</h2>
            <ul>
            	<li><a href="gallery">사진</a></li>
                <li><a href="gallery2">영상</a></li>
                <li><a href="gallery3">포스터</a></li>
                <li><a href="gallery4">음반</a></li>
            </ul>
            <p><a href="#"><img src="${contextPath }/images/index/sub_banner1.gif" alt=""/></a></p>
        </article>
        <article id="contentWrap">
        	<p class="page_nav">HOME &gt; GALLERY &gt; <strong>음반갤러리</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/index/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>음반갤러리<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
            
           	<div class="contentWrap">
            	<div class="album_wrap">
                	<ul>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap1_on.gif" style="cursor:pointer" id="contents_img1" onclick="tab_menu(1,'산유화')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap2_off.gif" style="cursor:pointer" id="contents_img2" onclick="tab_menu(2,'고향의봄')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap3_off.gif" style="cursor:pointer" id="contents_img3" onclick="tab_menu(3,'Count Your Blessing')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap4_off.gif" style="cursor:pointer" id="contents_img4" onclick="tab_menu(4,'시편')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap5_off.gif" style="cursor:pointer" id="contents_img5" onclick="tab_menu(5,'50주년 사랑과감사의축제')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap6_off.gif" style="cursor:pointer" id="contents_img6" onclick="tab_menu(6,'A Voice')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap8_off.gif" style="cursor:pointer" id="contents_img8" onclick="tab_menu(8,'Europe Concert')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap9_off.gif" style="cursor:pointer" id="contents_img9" onclick="tab_menu(9,'즐거운 아침')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap10_off.gif" style="cursor:pointer" id="contents_img10" onclick="tab_menu(10,'World Folk Song Fest')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap11_off.gif" style="cursor:pointer" id="contents_img11" onclick="tab_menu(11,'2000세계어린이합창제')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap12_off.gif" style="cursor:pointer" id="contents_img12" onclick="tab_menu(12,'2004세계어린이합창제')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap15_off.gif" style="cursor:pointer" id="contents_img15" onclick="tab_menu(15,'블레싱악보')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap14_off.gif" style="cursor:pointer" id="contents_img14" onclick="tab_menu(14,'나 주를 찬양하리라')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap16_off.gif" style="cursor:pointer" id="contents_img16" onclick="tab_menu(16,'크리스마스캐롤및성가곡집')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap17_off.gif" style="cursor:pointer" id="contents_img17" onclick="tab_menu(17,'Together')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap18_off.gif" style="cursor:pointer" id="contents_img18" onclick="tab_menu(18,'Together 악보')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap19_off.gif" style="cursor:pointer" id="contents_img19" onclick="tab_menu(19,'2013 세계어린이합창단')"></li>
                    	<li><img src="${contextPath }/images/index/gallery/gallery01_tap20_off.gif" style="cursor:pointer" id="contents_img20" onclick="tab_menu(20,'소원 (2015)')"></li>
        			</ul>
                  </div>
            		<div id="album_etc">
						<img src="${contextPath }/images/index/gallery/gallery_title20.gif">
					</div>
                 <!-- S: board -->
                    <div class="listLayout">
                    
				<table>
					<tr>
                    	<th><input type="checkbox"></th>
						<th>번호</th>
						<th>음반</th>
                        <th>곡명</th>
                        <th>작곡가</th>
                        <th>출시일</th>
                        <th>듣기</th>
					</tr>
					<tr>
                    	<td><input type="checkbox"></td>
						<td>1</td>
                        <td>찬송가</td>
						<td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>미상</td>
                        <td>2010-05-08</td>
                        <td><a href="#"><img src="${contextPath }/images/index/board/icon_audio_no.gif" alt=""/></a></td>
					</tr>
					<tr>
                    	<td><input type="checkbox"></td>
						<td>1</td>
                        <td>찬송가</td>
						<td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>미상</td>
                        <td>2010-05-08</td>
                        <td><a href="#"><img src="${contextPath }/images/index/board/icon_audio_no.gif" alt=""/></a></td>
					</tr>
					<tr>
                    	<td><input type="checkbox"></td>
						<td>1</td>
                        <td>찬송가</td>
						<td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>미상</td>
                        <td>2010-05-08</td>
                        <td><a href="#"><img src="${contextPath }/images/index/board/icon_audio_no.gif" alt=""/></a></td>
					</tr>
                    <tr>
                    	<td><input type="checkbox"></td>
						<td>1</td>
                        <td>찬송가</td>
						<td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>미상</td>
                        <td>2010-05-08</td>
                        <td><a href="#"><img src="${contextPath }/images/index/board/icon_audio_no.gif" alt=""/></a></td>
					</tr>
                    <tr>
                    	<td><input type="checkbox"></td>
						<td>1</td>
                        <td>찬송가</td>
						<td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>미상</td>
                        <td>2010-05-08</td>
                        <td><a href="#"><img src="${contextPath }/images/index/board/icon_audio_no.gif" alt=""/></a></td>
					</tr>
                    <tr>
                    	<td><input type="checkbox"></td>
						<td>1</td>
                        <td>찬송가</td>
						<td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>미상</td>
                        <td>2010-05-08</td>
                        <td><a href="#"><img src="${contextPath }/images/index/board/icon_audio_no.gif" alt=""/></a></td>
					</tr>
                    <tr>
                    	<td><input type="checkbox"></td>
						<td>1</td>
                        <td>찬송가</td>
						<td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>미상</td>
                        <td>2010-05-08</td>
                        <td><a href="#"><img src="${contextPath }/images/index/board/icon_audio_no.gif" alt=""/></a></td>
					</tr>
                    <tr>
                    	<td><input type="checkbox"></td>
						<td>1</td>
                        <td>찬송가</td>
						<td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>미상</td>
                        <td>2010-05-08</td>
                        <td><a href="#"><img src="${contextPath }/images/index/board/icon_audio_no.gif" alt=""/></a></td>
					</tr>
                    <tr>
                    	<td><input type="checkbox"></td>
						<td>1</td>
                        <td>찬송가</td>
						<td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>미상</td>
                        <td>2010-05-08</td>
                        <td><a href="#"><img src="${contextPath }/images/index/board/icon_audio_no.gif" alt=""/></a></td>
					</tr>
                    <tr>
                    	<td><input type="checkbox"></td>
						<td>1</td>
                        <td>찬송가</td>
						<td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>미상</td>
                        <td>2010-05-08</td>
                        <td><a href="#"><img src=".${contextPath }/images/index/board/icon_audio_no.gif" alt=""/></a></td>
					</tr>
                    <tr>
                    	<td><input type="checkbox"></td>
						<td>1</td>
                        <td>찬송가</td>
						<td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>미상</td>
                        <td>2010-05-08</td>
                        <td><a href="#"><img src="${contextPath }/images/index/board/icon_audio_no.gif" alt=""/></a></td>
					</tr>
                    <tr>
                    	<td><input type="checkbox"></td>
						<td>1</td>
                        <td>찬송가</td>
						<td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>미상</td>
                        <td>2010-05-08</td>
                        <td><a href="#"><img src="${contextPath }/images/index/board/icon_audio_no.gif" alt=""/></a></td>
					</tr>
                    <tr>
                    	<td><input type="checkbox"></td>
						<td>1</td>
                        <td>찬송가</td>
						<td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>미상</td>
                        <td>2010-05-08</td>
                        <td><a href="#"><img src="${contextPath }/images/index/board/icon_audio_no.gif" alt=""/></a></td>
					</tr>
                    <tr>
                    	<td><input type="checkbox"></td>
						<td>1</td>
                        <td>찬송가</td>
						<td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>미상</td>
                        <td>2010-05-08</td>
                        <td><a href="#"><img src="${contextPath }/images/index/board/icon_audio_no.gif" alt=""/></a></td>
					</tr>
                    <tr>
                    	<td><input type="checkbox"></td>
						<td>1</td>
                        <td>찬송가</td>
						<td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>미상</td>
                        <td>2010-05-08</td>
                        <td><a href="#"><img src="${contextPath }/images/index/board/icon_audio_no.gif" alt=""/></a></td>
					</tr>
				</table>
                
                <div class="boardbtn text_left">
                	<a href="#" class="btn_sm gray">선택듣기</a>
                </div>
                	<div class="pagerWrap">
                
						<a href="#!"><img src="${contextPath }/images/index/board/frontArr.png" alt="맨앞으로" /></a>
						<a href="#!"><img src="${contextPath }/images/index/board/prevArr.png" alt="앞으로" /></a>
						<a href="#!" class="on">1</a>
						<a href="#!">2</a>
						<a href="#!">3</a>
						<a href="#!">4</a>
						<a href="#!">5</a>
						<a href="#!">6</a>
						<a href="#!">7</a>
						<a href="#!">8</a>
						<a href="#!">9</a>
						<a href="#!">10</a>
						<a href="#!"><img src="${contextPath }/images/index/board/nextArr.png" alt="뒤로" /></a>
						<a href="#!"><img src="${contextPath }/images/index/board/backArr.png" alt="맨뒤로" /></a>
			
            		</div>
                
			</div>
            <!-- E: board -->
            </div><!--contentwrap-->
                	
            </div>
            <!-- 서브내용 끝 -->
        </article>
    </section>
    
    <!-- footer -->
	<footer id="footer">
    	<div class="inner">
        	<h1><img src="${contextPath }/images/index/foot_logo.gif" alt=""/></h1>
            <div class="info">
            	<p>기관:월드비전 음악원 │ 주소:(우 07638) 서울특별시 강서구 강서로 47마길 85(내발산동 711-11) 월드비전 음악원<br/>
                대표자:한상호 │ 사업자등록번호:109-82-09997 │ 대표전화:02-2662-1803 │ 팩스:02-2661-2568</p>
                <p>COPYRIGHT 2010 WVCHOIR ALL RIGHTS RESERVED.</p>
            </div>
    	</div>
	</footer>
    <!-- //footer -->
    
    
    <!-- quick menu 
    <script language="JavaScript" src="../js/jquery-1.9.1.min.js"></script>
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

    <script language="JavaScript" src="../js/rightquick.js"></script>
     //quick menu -->
</body>
</html>
