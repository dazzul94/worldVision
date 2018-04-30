<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />	
<title>::: 월드비전 합창단 :::</title>
<link href="${contextPath }/css/index/common.css" rel="stylesheet" type="text/css">
<link href="${contextPath }/css/index/style.css" rel="stylesheet" type="text/css">
<link href="${contextPath }/css/index/animate.css" rel="stylesheet" type="text/css">
<link href="${contextPath }/css/index/css/fonts.css" rel="stylesheet" type="text/css">
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
		
		function doJoin(){
			var form = document.getElementById("jForm");
			form.action = "doJoin";
			form.submit();
		}
		
	</script>
    		<div class="tnb">
            	<a href="#">아이디/비번찾기</a>
            </div>
    		<p><a href="http://www.worldvision.or.kr" target="_blank"><img src="${contextPath }/images/index/logo_button_world.gif" alt=""/></a></p>
        </div>
    </header>
    <!-- //header -->
    
    <section id="container">
    	<article id="lnbWrap">
        	<h2>MEMBER</h2>
           
            <p><a href="#"><img src="${contextPath }/images/index/sub_banner1.gif" alt=""/></a></p>
        </article>
        <article id="contentWrap">
        	<p class="page_nav">HOME &gt; MEMBER &gt; <strong>회원가입</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/index/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>회원가입<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
            
           	<div class="contentWrap">
            	<!-- join -->
           	  <h3 class="wonh3">기본정보 입력</h3>
              
                <div class="writeLayout">
                <form id="jForm">
					<table>
					<tbody>
                    <tr>
						<th><strong class="orange_f">*</strong> 이름</th>
						<td>김민선<input type="hidden" value="김민선" name="member_name" /></td>
					</tr>
                    <tr>
						<th><strong class="orange_f">*</strong> 아이디</th>
						<td><input type="text" name="member_id"> <a href="#" class="sbtn">중복확인</a></td>
					</tr>
					<tr>
						<th><strong class="orange_f">*</strong> 닉네임</th>
						<td><input type="text" name="member_nick"> <a href="#" class="sbtn">중복확인</a></td>
					</tr>
                     <tr>
						<th><strong class="orange_f">*</strong> 비밀번호</th>
						<td><input type="text" name="member_pass"><span class="help_t">영문,숫자조합의 4~10자리(공백입력불가)</span></td>
					</tr>
                    <tr>
						<th><strong class="orange_f">*</strong> 비밀번호 확인</th>
						<td><input type="text"></td>
					</tr>
					 <tr>
						<th><strong class="orange_f">*</strong> 주민등록번호</th>
						<td><input type="text" name="member_reg_no1"> - <input type="password" name="member_reg_no2"></td>
					</tr>
                    <tr>
						<th><strong class="orange_f">*</strong> 생년월일</th>
						<td><input type="text" name="member_birth1"> <input type="radio" name="member_birth2" value="양력">양력 <input type="radio" class="ml5" name="member_birth2" value="음력"> 음력</td>
					</tr>
                    <tr>
						<th><strong class="orange_f">*</strong> 이메일</th>
						<td><input type="text" name="member_email"></td>
					</tr>
                    <tr>
						<th>주소</th>
						<td><input type="text" class="zip" name="member_zip1"> - <input type="text" class="zip" name="member_zip2"> <a href="#" class="sbtn">우편번호</a><br>
                        <input type="text" class="wid100 mt3" name="member_address1"><br>
                        <input type="text" class="wid100 mt3" name="member_address2"></td>
					</tr>
                    <tr>
						<th>일반전화</th>
						<td><input type="text"  class="tel" name="member_htel1"> - <input type="text" class="tel" name="member_htel2"> - <input type="text"  class="tel" name="member_htel3"></td>
					</tr>
                    <tr>
						<th>휴대전화</th>
						<td><input type="text" class="tel" name="member_tel1"> - <input type="text" class="tel" name="member_tel2"> - <input type="text"  class="tel" name="member_tel3"></td>
					</tr>
                    <tr>
						<th>합창단과의 관계</th>
						<td><input type="radio">후원자 <input type="radio" class="ml5"> 합창단 교사/직원 <input type="radio" class="ml5">단원/자모 <input type="radio" class="ml5"> 동문 <input type="radio" class="ml5"> 기타</td>
					</tr>
					
				</tbody></table>
                
              </form>
            
            
			</div>
                
                <div class="clear boardbtn mt50 text_center">
            		<a href="#" onclick="doJoin()" return false;>가입하기</a>
                    <a href="login" class="gray">취소</a>
            	</div>
                <!-- join -->
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