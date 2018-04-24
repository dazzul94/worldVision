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
        	<h2>CONCERT</h2>
            <ul>
            	<li><a href="concert">연주일정</a></li>
                <li><a href="concert2">초청연주</a></li>
                <li><a href="concert3">기획연주</a></li>
                <li><a href="concert4">미션연주</a></li>
                <li><a href="concert5">해외연주</a></li>
                
            </ul>
            <p><a href="#"><img src="${contextPath }/images/index/sub_banner1.gif" alt=""/></a></p>
        </article>
        <article id="contentWrap">
        	<p class="page_nav">HOME &gt; CONCERT &gt; <strong>연주일정</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/index/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>연주일정<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
            
           	<div class="contentWrap">
            
            		<!-- 달력 -->
                    <p class="calendar_year">
                    	<a href="#"><img src="${contextPath }/images/index/data_prev.gif" alt=""/></a>
                        2018년 4월
                        <a href="#"><img src="${contextPath }/images/index/data_next.gif" alt=""/></a>
                    </p>
                    
                    <table class="calendar_table">
        <thead>
		<tr>
          <th align="center" width="102"><font color="#ff2400">일요일</font></th>
          <th align="center" width="103">월요일</th>
          <th align="center" width="103">화요일</th>
          <th align="center" width="103">수요일</th>
          <th align="center" width="103">목요일</th>
          <th align="center" width="103">금요일</th>
          <th align="center" width="103"><font color="#3a6ebc">토요일</font></th>
        </tr>
        </thead>
        <tbody>
		<tr>
	<td valign="top">
	  <div><font color="#ff2400">1</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">2</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">3</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">4</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">5</font>
	  
	    <p title="부활절 음악예배" onclick="location.href='/index/data_01.php?no=480&amp;year=2018&amp;month=4';" onmouseover="Overit('480');" onmouseout="Outit();" style="cursor:pointer"><a href="concert01_view.html"><img src="${contextPath }/images/index/data_icon01.gif"> <font color="#000000">부활절 음악예배</font></a></p>
        </div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">6</font></div>
	</td>
	<td valign="top">
	  <div><font color="#3a6ebc">7</font></div>
	</td>
</tr><tr>	<td valign="top">
	  <div><font color="#ff2400">8</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">9</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">10</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">11</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">12</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">13</font></div>
	</td>
	<td valign="top">
	  <div><font color="#3a6ebc">14</font></div>
	</td>
</tr><tr>	<td valign="top">
	  <div><font color="#ff2400">15</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">16</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">17</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">18</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">19</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">20</font></div>
	</td>
	<td valign="top">
	  <div><font color="#3a6ebc">21</font></div>
	</td>
</tr><tr>	<td valign="top">
	  <div><font color="#ff2400">22</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">23</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">24</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">25</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">26</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">27</font></div>
	</td>
	<td valign="top">
	  <div><font color="#3a6ebc">28</font></div>
	</td>
    </tr><tr>	<td valign="top">
	  <div><font color="#ff2400">29</font></div>
	</td>
	<td valign="top">
	  <div><font color="#6c6c6c">30</font></div>
	</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
		</tr>
        </tbody></table>
                    <!-- 달력 -->
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
