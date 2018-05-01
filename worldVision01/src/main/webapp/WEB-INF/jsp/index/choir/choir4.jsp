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
            	<a href="login">로그인</a>
            </div>
    		<p><a href="http://www.worldvision.or.kr" target="_blank"><img src="${contextPath }/images/index/logo_button_world.gif" alt=""/></a></p>
        </div>
    </header>
    <!-- //header -->
    
    <section id="container">
    	<article id="lnbWrap">
        	<h2>CHOIR</h2>
            <ul>
            	<li><a href="choir">소개</a></li>
                <li><a href="choir2">연혁</a></li>
                <li><a href="choir3">연주반</a></li>
                <li><a href="choir4">지역반</a></li>
            </ul>
            <p><a href="#"><img src="${contextPath }/images/index/sub_banner1.gif" alt=""/></a></p>
        </article>
        <article id="contentWrap">
        	<p class="page_nav">HOME &gt; CHOIR &gt; <strong>지역반</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/index/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>지역반<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
             <script language="javascript">
function tab_menu(val, path){
	var img = new Array('','choir02_tap1_','choir02_tap2_','choir02_tap3_','choir02_tap4_','choir02_tap5_');
	for(i = 1; i <= 5; i++) { //탭메뉴 갯수
		if(i==val) {
			document.getElementById("contents"+i).style.display = "";
			document.getElementById("contents_img"+i).src = path + "/images/index/"+img[i]+"on.gif";
		}else {
			document.getElementById("contents"+i).style.display = "none";
			document.getElementById("contents_img"+i).src = path + "/images/index/"+img[i]+"off.gif";
		};
	};
};
</script>
           	<div class="contentWrap">
            
            		<!-- tab -->
                    <ul class="tabul">
                    	<li><img src="${contextPath }/images/index/choir02_tap1_on.gif" style="cursor:pointer" id="contents_img1" onclick="tab_menu(1, '${contextPath }')"></li>
                        <li><img src="${contextPath }/images/index/choir02_tap2_off.gif" style="cursor:pointer" id="contents_img2" onclick="tab_menu(2,' ${contextPath }')"></li>
                        <li><img src="${contextPath }/images/index/choir02_tap3_off.gif" style="cursor:pointer" id="contents_img3" onclick="tab_menu(3, '${contextPath }')"></li>
                        <li><img src="${contextPath }/images/index/choir02_tap4_off.gif" style="cursor:pointer" id="contents_img4" onclick="tab_menu(4, '${contextPath }')"></li>
                        <li><img src="${contextPath }/images/index/choir02_tap5_off.gif" style="cursor:pointer" id="contents_img5" onclick="tab_menu(5, '${contextPath }')"></li>
                    </ul>
                    <!-- tab -->
                    <!-- 강서반 -->
                    <div id="contents1">
                	<h3 class="wonh3">강서반</h3>  
                	
                    <div class="floatL" style="width:350px;"><img src="${contextPath }/images/index/t1_choir_3.jpg" alt=""/></div>
                    <div class="floatL" style="width:390px;">강서반은 1987년 합창단원의 교육과 음악적 성장을 위해 시작하였습니다. <strong>주로 강서인근지역의 초등학교 2학년 부터 중학교 1학년의 단원</strong>들로 구성되어 있으며 월드비전의 사역에 동참하여 음악을 통해 선교를 하고 음악 속에서 기쁨을 알아가는 단원이 되도록 교육하고 있습니다.<br/>

그리고 지역 연주활동을 비롯하여 매년 정기연주, 세계합창제 등을 통해 강서지역의 합창 활성화와 단원들의 음악적 소양을 갖추는데 힘쓰고 있습니다.

						<ul class="dot_green">
                        	<li>· 연습장소 : 월드비전 음악원 (우장산역) <img src="${contextPath }/images/index/y_btn.gif" align="absmiddle" style="cursor:pointer;" onclick="window.open('http://map.naver.com/?query=%BC%AD%BF%EF%BD%C3+%B0%AD%BC%AD%B1%B8+%B0%AD%BC%AD%B7%CE+47%B8%B6%B1%E6+85','_map','width=1000px,height=800px;');"></li>
                            <li>· 주     소 : 서울시 강서구 강서로 47마길 85</li>
                            <li>· 연습시간 : 월요일, 수요일 (4:30 ~ 7:00)</li>
                        </ul>
					</div>
       				
                    
                    <div class="clear mb30"></div>
                    <h3 class="wonh3">지도교사</h3>  
                    <div class="people_wrap">
                    <div class="floatL people_photo"><img src="${contextPath }/images/index/t1_teacher_22.jpg" alt=""/></div>
                    <div class="floatL people_info">
                    	<h4 class="wonh4">지휘 <strong class="black_f">황선희</strong></h4>  
                    	<p>지휘자 황선희는 중앙대학교 작곡과에서 합창지휘를 전공하였고, 동대학원 지휘전공을 졸업하고 월드비전 합창단 강서1반 지휘자로 활동한바 있다. </p>

                   	  <p class="mt20">대학 재학 당시 월드비전 선명회합창단 연습을 참관하며 어린이 합창의 매력을 알게 되었으며, 
서울 레이디스 싱어즈로 활동하며 많은 연주 경험과 단원의 입장이되어 이해하며, 배울 수 있었다. <br/>
월드비전 합창단 강남반, 강북반 지휘자를 거쳐, 2017년 8월부터 강서반 지휘자로 활동하고, 공항성산교회, 동산교회에서 성가대 지휘를 하고 있다. 또한 윤학원코랄, 서울코랄컴퍼니 단원으로 활동하고 있다.</p>

						<h4 class="wonh4 mt30">Conductor <strong class="black_f">Sun Hee Hwang</strong></h4>  
                    	<p>Conductor Sun Hee Hwang holds a Bachelor's degree in Composition 
and a Master's degree in Choral Conducting, both from Chung-Ang University. <br/>
She has previously worked as the conductor of World Vision Korea Children's Choir in Kangseo, 
Kangnam, Kangbuk region. She first discovered the beautiful essence of World Vision Korea 
Children's Choir after observing rehearsals while studying at the university, and has since been 
involved in numerous performances as a member of Seoul Ladies Singers. <br/>
Her experiences as both conductor and singer have allowed her to gain valuable insights 
into every aspects of the profession. She is currently the conductor of World Vision Korea 
Children's Choir in Kangseo region, as well as working with choirs at Gonghang Sung San Church 
and Dongsan Church. and Member of Yoon Hackwon Choral, Seoul Choral Company.</p>
                    </div>
                    </div>
                    
              <div class="clear dot_line"></div>
              
              		<div class="people_wrap">
                    <div class="floatL people_photo"><img src="${contextPath }/images/index/t1_teacher_15.jpg" alt=""/></div>
                    <div class="floatL people_info">
                    	<h4 class="wonh4">반주 <strong class="black_f">김민정</strong></h4>  
                    	<p>반주자 김민정은 장신대에서 오르간을 전공하였고 전체 실기 수석 졸업.졸업연주상을 수상했다. <br/>
한라대 반주 강사를 역임했고 월드비전 선명회합창단 상계반 반주, 드림싱어즈 반주.영암교회 오르가니스트, 아주여성합창단 반주를 역임했으며 현재 월드비전 합창단 강서반 반주. 양정고등학교 OB합창단, 동부순복음 교회 반주를 하고 있다.  </p>

						<h4 class="wonh4 mt30">Accompanist <strong class="black_f">Min Jeong Kim</strong></h4>  
                    	<p>Minjeong Kim studied organ and graduated as top honors in performance 
and the best performance award from Jangshin University. She taught students in Halla University 
and was the accompanist in World Vision Korea Children’s Choir in Sang-gye(now called Kangbuk) region,  and Yeongam Church, Dream Singers, Youngam Church, Ajoo Women's Choir.<br/>
Currently, she performs for World Vision Korea Children’s Choir in Kangseo region and OB Choir 
of Yangjeong High School.</p>
                    </div>
                    </div>
                    
              <div class="clear dot_line"></div>
              
              		<div class="people_wrap">
                    <div class="floatL people_photo"><img src="${contextPath }/images/index/t1_teacher_39.jpg" alt=""/></div>
                    <div class="floatL people_info">
                    	<h4 class="wonh4">성악교사 <strong class="black_f">이영은</strong></h4>  
                    	<p>성악교사 이영은은 초등학교 3학년부터 7여년간 월드비전 합창단 단원을 역임한 후 
수원대학교 성악과를 졸업하였다. 졸업 후 Seoul Ladies' Singers 단원으로 활동하면서
음악활동의 영역을 넓힐 수 있었다. <br/>
2004년부터 2010년까지 월드비전 합창단 강서반 성악지도를 역임하면서 
추계예술대학원 엔터테인먼트 비즈니스 마케팅학과에서 석사학위를 수료하였다.<br/>
현재 강서반 성악지도를 맡고있다.</p>

						<h4 class="wonh4 mt30">Voice Teacher <strong class="black_f">Young Eun Lee</strong></h4>  
                    	
                    </div>
                    </div>
                    
                    
                    <div class="clear mt50"></div>
                    <h3 class="wonh3">강서반 단원</h3>  
                    
                    <!-- 연주반 단원 -->
                    	<div class="child_people">
                        	<ul>
                            	<li>
                                	<img src="${contextPath }/images/index/people/t1_member_532.jpg" />
                                    <p>심은서</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_563.jpg" />
                                    <p>홍예솔</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_593.jpg" />
                                    <p>권지우</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_621.jpg" />
                                    <p>배윤서</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_623.jpg" />
                                    <p>정아연</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_641.jpg" />
                                    <p>우태영</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_643.jpg" />
                                    <p>구동하</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_644.jpg" />
                                    <p>신수아</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_645.jpg" />
                                    <p>이다움</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_646.jpg" />
                                    <p>노연영</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_647.jpg" />
                                    <p>이지윤</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_676.jpg" />
                                    <p>노규리</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_677.jpg" />
                                    <p>신현정</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_688.jpg" />
                                    <p>정해림</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_713.jpg" />
                                    <p>김예원</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_717.jpg" />
                                    <p>최호진</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_719.jpg" />
                                    <p>박여원</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_722.jpg" />
                                    <p>우경민</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_723.jpg" />
                                    <p>이루다</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_776.jpg" />
                                    <p>이태연</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_777.jpg" />
                                    <p>김현하</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_780.jpg" />
                                    <p>배수정</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_781.jpg" />
                                    <p>조민채</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>이하영</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>허윤진</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>허세민</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>양희나</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_797.jpg" />
                                    <p>양소은</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>김성현</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_824.jpg" />
                                    <p>박수빈</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>석예준</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>김나은</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>성아인</p>
                                </li>
                            </ul>
                        </div>
                    <!-- //연주반 단원 -->
                    </div>
                    <!-- 강서반 -->
                    
                    
                    <!-- 강남반 -->
                    <div id="contents2" style="display: none">
                	<h3 class="wonh3">강남반</h3>  
                	
                    <div class="floatL" style="width:350px;"><img src="${contextPath }/images/index/t1_choir_4.jpg" alt=""/></div>
                    <div class="floatL" style="width:390px;">강남반은 1987년 시작된 지역반으로 <strong>합창과 기본 음악 교육 및 합창활동을 통하여 공동체속에서 협동심과 집중력, 책임감을 중점으로 교육</strong>하고 있습니다.<br/>
또한 어린이들이 표현할 수 있는 변화를 추구하며 합창의 울림을 만들어 가고 있습니다. 성가곡, 우리가곡, 민요, 외국민요, 뮤지컬 음악 등 다양하고 특색있는 레퍼토리로 단원들이 음악을 하며 즐거움을 느끼게 하고 그들의 자아성장에 영향을 주며 다양한 연주를 통해 실력을 쌓아가고 있습니다.<br/>
하나님의 영광을 위하여, 하나님이 쓰시고자 하는 곳에 늘 찬양하며 귀하게 쓰임 받고 있습니다. 

						<ul class="dot_green">
                        	<li>· 연습장소 : 한빛교회 <img src="${contextPath }/images/index/y_btn.gif" align="absmiddle" style="cursor:pointer;" onclick="window.open('http://map.naver.com/?query=%BC%AD%BF%EF%BD%C3+%B0%AD%BC%AD%B1%B8+%B0%AD%BC%AD%B7%CE+47%B8%B6%B1%E6+85','_map','width=1000px,height=800px;');"></li>
                            <li>· 주     소 : 서울시 송파구 가락로 5길 28</li>
                            <li>· 연습시간 : 매주 화요일, 목요일 (오후 4:30-7:00)</li>
                        </ul>
					</div>
       				
                    
                    <div class="clear mb30"></div>
                    <h3 class="wonh3">지도교사</h3>  
                    <div class="people_wrap">
                    <div class="floatL people_photo"><img src="${contextPath }/images/index/t1_teacher_31.jpg" alt=""/></div>
                    <div class="floatL people_info">
                    	<h4 class="wonh4">지휘 <strong class="black_f">김은진</strong></h4>  
                    	<p>지휘자 김은진은 중앙대학교 작곡과 및 동대학원을 합창지휘로 졸업하고 97년에는 UCLA music extention에 참가하였으며 중앙대 매스터코랄 단원으로 활동했다. 사랑의교회 유년부 성가대를 지휘하고 월드비전 합창단 강서 믿음반을 거쳐 강서2반, 분당반, 강서반 지휘자로 활동하였다. 2017년 8월부터 월드비전 합창단 강남반 지휘자로 활동 중이다.</p>

						<h4 class="wonh4 mt30">Conductor <strong class="black_f">Eun Jin Kim</strong></h4>  
                    	<p>Eun-jin Kim obtained her bachelor’s degree and master's degree in Choral Conducting 
and Composition from Chung-Ang University. In 1997, she participated UCLA music extension. <br/>
Being a member of Chung-Ang University Master Chorale, she conducted Sarang Community 
Church Youth Choir. She also conducted World Vision Korea Children’s Choir in Kangseo region,
Bundang region, Kangseo region. She is now conducting World Vision Korea Children’s 
Choir in Kangnam region.</p>
                    </div>
                    </div>
                    
              <div class="clear dot_line"></div>
              
              		<div class="people_wrap">
                    <div class="floatL people_photo"><img src="${contextPath }/images/index/t1_teacher_24.jpg" alt=""/></div>
                    <div class="floatL people_info">
                    	<h4 class="wonh4">반주 <strong class="black_f">고민정</strong></h4>  
                    	<p>반주자 고민정은 숙명여자대학교에서 피아노과를 전공하였고, 동 대학원 기악과에서 피아노 전공으로 석사학위를 받았으며, San Francisco Conservatory Summer Intensive Music을 수료하였다. 서울 드림 싱어즈, 월드비전 합창단 일산반, 예비연주반, 연주 2반에서 반주를 한 바 있으며, 현재는 월드비전 합창단 강남반 반주, 서울 가정 법원 합창단 반주, 광릉내 교회 할렐루야 찬양대 반주를 하고 있으며, 서울 탄츠 스테이션과 국민대 출강을 하고 있다.  </p>

						<h4 class="wonh4 mt30">Accompanist <strong class="black_f">Min Jeong Ko</strong></h4>  
                    	<p>Accompanist Min-jeong Ko studied Piano at College of Music, Sook-Myung Women's University,
and received a Master's degree at the same University. She completed The San Francisco 
Conservatory Summer Intensive Music Program. Also, she was an accompanist of Seoul Dream 
Singers, World Vision Korea Children's Choir in Il-San region, Pre-Concert Choir and Concert 
Choir in World Vision Korea Children’s Choir. Currently, she is an accompanist of World Vision 
Korea Children's Choir in Kangnam  region.</p>
                    </div>
                    </div>
                    
              <div class="clear dot_line"></div>
              
              		<div class="people_wrap">
                    <div class="floatL people_photo"><img src="${contextPath }/images/index/t1_teacher_26.jpg" alt=""/></div>
                    <div class="floatL people_info">
                    	<h4 class="wonh4">성악교사 <strong class="black_f">천서영</strong></h4>  
                    	<p>음악은 나의 인생에 있어서 아주 큰 부분을 차지한다. 유년기의 월드비전 선명회합창단(현 월드비전 합창단)의 음악활동으로 시작하여 명지대학교 성악과를 2003년에 졸업하였다. 그리고 대학교 4학년때부터 5년동안 마니피캇 어린이 합창단에서 성악 지도를 맡아왔다. 또한 10년간의 서울 레이디스 싱어즈 활동을 함께 해왔다. 2007년부터 현재까지 월드비전 합창단에서 성악 지도를 맡아오고 있으며, 코리아 엔젤스 어린이합창단 성악지도를 맡고 있다.</p>

						<h4 class="wonh4 mt30">Voice Teacher <strong class="black_f">Seo Young Chun</strong></h4>  
                    	<p>Music is her life's great passion. Seoyoung Chun started down this path as a child performing
in the World Vision Korea Children's Choir. From there she studied vocals at Myungji University
and graduated in 2003. Seoyoung worked as a voice coach for the Magnificat Children's Choir 
from 2002 through 2007. She also performed with the Seoul Ladies' Singers from 1999 to 2009. <br/>
Currently, she is the voice coach with the World Vision Korea Children's Choir in Bucheon region, Korea 
Angels Children's Choir.</p>
                    </div>
                    </div>
                    
                    
                    <div class="clear mt50"></div>
                    <h3 class="wonh3">강남반 단원</h3>  
                    
                    <!-- 연주반 단원 -->
                    	<div class="child_people">
                        	<ul>
                            	<li>
                                	<img src="${contextPath }/images/index/people/t1_member_532.jpg" />
                                    <p>심은서</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_563.jpg" />
                                    <p>홍예솔</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_593.jpg" />
                                    <p>권지우</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_621.jpg" />
                                    <p>배윤서</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_623.jpg" />
                                    <p>정아연</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_641.jpg" />
                                    <p>우태영</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_643.jpg" />
                                    <p>구동하</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_644.jpg" />
                                    <p>신수아</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_645.jpg" />
                                    <p>이다움</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_646.jpg" />
                                    <p>노연영</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_647.jpg" />
                                    <p>이지윤</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_676.jpg" />
                                    <p>노규리</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_677.jpg" />
                                    <p>신현정</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_688.jpg" />
                                    <p>정해림</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_713.jpg" />
                                    <p>김예원</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_717.jpg" />
                                    <p>최호진</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_719.jpg" />
                                    <p>박여원</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_722.jpg" />
                                    <p>우경민</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_723.jpg" />
                                    <p>이루다</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_776.jpg" />
                                    <p>이태연</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_777.jpg" />
                                    <p>김현하</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_780.jpg" />
                                    <p>배수정</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_781.jpg" />
                                    <p>조민채</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>이하영</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>허윤진</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>허세민</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>양희나</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_797.jpg" />
                                    <p>양소은</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>김성현</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_824.jpg" />
                                    <p>박수빈</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>석예준</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>김나은</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>성아인</p>
                                </li>
                            </ul>
                        </div>
                    <!-- //연주반 단원 -->
                    </div>
                    <!-- 강남반 -->
                    
                    <!-- 강북반 -->
                    <div id="contents3" style="display: none">
                	<h3 class="wonh3">강북반</h3>  
                	
                    <div class="floatL" style="width:350px;"><img src="${contextPath }/images/index/t1_choir_5.jpg" alt=""/></div>
                    <div class="floatL" style="width:390px;">강북반은 1996년에 하나님을 찬양하기 원하는 어린이들이 함께 모여 마들어졌습니다.<br/>
<strong>주로 강북 지역의 어린이들로 구성되어 있으며 음악적인 경험과 찬양을 통해 꿈과 비전을 키워나가고 있습니다.</strong> 매년 정기연주회를 비롯하여 교회 연주, 지역시설과 병원 등의 연주를 통하여 음악적인 향상과 어린이 합창 활성화를 만들고 지역사회에 홍보하며 선교활동에 힘쓰고 있습니다.


						<ul class="dot_green">
                        	<li>· 연습장소 : 창동염광교회 <img src="${contextPath }/images/index/y_btn.gif" align="absmiddle" style="cursor:pointer;" onclick="window.open('http://map.naver.com/?query=%BC%AD%BF%EF%BD%C3+%B0%AD%BC%AD%B1%B8+%B0%AD%BC%AD%B7%CE+47%B8%B6%B1%E6+85','_map','width=1000px,height=800px;');"></li>
                            <li>· 주     소 : 서울시 도봉구 창동 662-59, 도봉로 120길 16</li>
                            <li>· 연습시간 : 월요일, 수요일 (4:20 ~ 6:50)</li>
                        </ul>
					</div>
       				
                    
                    <div class="clear mb30"></div>
                    <h3 class="wonh3">지도교사</h3>  
                    <div class="people_wrap">
                    <div class="floatL people_photo"><img src="${contextPath }/images/index/t1_teacher_25.jpg" alt=""/></div>
                    <div class="floatL people_info">
                    	<h4 class="wonh4">지휘 <strong class="black_f">홍서영</strong></h4>  
                    	<p>지휘자 홍서영은 중앙대학교 음악대학 작곡과에서 합창지휘를 전공하였으며 
중앙대학교 매스터 코랄 단원으로 활동, 미국 DEKALB 세계합창제에 참가 및 연수하였다.  <br/>
또한 중앙대학교 대학원에서 합창지휘를 전공하였다. 2000년부터 4년간 의정부 글로리아 
어린이 합창단을 지휘하였으며 1996년부터 2012년까지 월드비전 합창단 강북반 지휘자로 활동했다. <br/>
2013년부터 2017년 7월 월드비전 합창단 일산반 지휘자로 활동하고, 현재 월드비전 합창단 강북반 지휘자로 활동하고 있다.</p>

						<h4 class="wonh4 mt30">Conductor <strong class="black_f">Seo Young Hong</strong></h4>  
                    	<p>Seoyoung Hong has an undergraduate degree in Composition, emphasis in Choral Conducting from Chung-Ang University. Also, she was a member of the Chung-Ang University Master Choral. <br/>
In addition, she participated and completed the training course at the DEKALB World Choral Festival. <br/>
Seoyoung Hong has a master's degree in Choral Conducting from Chung-Ang University. <br/>
Mrs. Hong conducted Uijeongbu Gloria Children's Choir for several years. she was the conductor 
of World Vision Korea Children's Choir in Kangbuk region from 1996 to 2012. and she was the conductor of World Vision Korea Children's Choir in Ilsan region from 2013 to July. 2017<br/>
Now, she is conducting World Vision Korea Children's Choir in Kangbuk region.</p>
                    </div>
                    </div>
                    
              <div class="clear dot_line"></div>
              
              		<div class="people_wrap">
                    <div class="floatL people_photo"><img src="${contextPath }/images/index/t1_teacher_18.jpg" alt=""/></div>
                    <div class="floatL people_info">
                    	<h4 class="wonh4">반주 <strong class="black_f">최경화</strong></h4>  
                    	<p>반주자 최경화는 단국대와 단국대 대학원에서 피아노를 전공하였고 졸업 후, 서울 콘서트 합창단, 서울 마스터즈 콰이어에서 반주자로 활동하였다. <br/>
러시아 St. Petersburg Conservatory 에서 피아노과정과 반주과정을 이수하였으며, 무용음악에 관심과 열정을 가지고 한국무용음악협회에서 주체하는 무용음악반주전문가과정(BATP)을 수료하였다.<br/>
현재는 무용음악강사로 이화여대, 한성대를 거쳐 성균관대, 국민대에 출강하고 있으며 월드비전 합창단에서 반주자로 활동 하고 있다.  </p>

						<h4 class="wonh4 mt30">Accompanist <strong class="black_f">Kyung Hwa Choi</strong></h4>  
                    	<p>Kyung-hwa Choi studied piano at Dankook University and Dankook University Graduate School.<br/>
After finishing her degrees, she started her career as an accompanist in Seoul Concert Choir 
and Seoul Masters Choir. Kyung-hwa completed the piano and accompaniment courses in Russia 
St. Petersbrug Conservatory.<br/>
Also, because of her passion in Dance Music, she I have a passion and interest in Dance music 
and completed the Accompaniment Course in Dance Music (BATP).<br/>
Currently, Kyung-hwa Choi teaches at Sungkyunkwan University, Ewha Womans University, 
Hansung University, and Kookmin University. Also, she is the accompanist in World Vision Korea 
Children’s Choir in Kangnam region.</p>
                    </div>
                    </div>
                    
              <div class="clear dot_line"></div>
              
              		<div class="people_wrap">
                    <div class="floatL people_photo"><img src="${contextPath }/images/index/t1_teacher_20.jpg" alt=""/></div>
                    <div class="floatL people_info">
                    	<h4 class="wonh4">성악교사 <strong class="black_f">이은혜</strong></h4>  
                    	<p>성악교사 이은혜는 성신여자대학교 성악과를 졸업하고, 동 대학원에서 석사 학위를 마친 후 
한양대학교 교육대학원에서 음악교육을 전공하였다. Seoul Ladies’ Singers 단원으로 활동하였으며 
현재는 동안교회 새벽찬양대 지휘와 극동방송 윤학원 코랄 단원으로 활동 중이며 월드비전 합창단
강서반과 분당반를 거쳐 현재는 강북반 성악교사로 활동하고 있다.</p>

						<h4 class="wonh4 mt30">Voice Teacher <strong class="black_f">Eun Hye Lee</strong></h4>  
                    	<p>Eunhye Lee graduated Sungshin-Women’s University majoring voice in her undergraduate degree.
She also has a master’s degree in voice from the same University. Eun Hye Lee studied Music
Education as well and has a master’s degree in Hanyang University. <br/>
She is also a former member of Seoul Ladies’ Singers. Currently, Eun Hye is the conductor 
of Dong-an Presbyterian Church Daybreak Choir and a member of Yoon Hak Won Chorale. <br/>
Finally, she is the voice teacher of World Vision Korea Children’s Choir in Kangbuk region</p>
                    </div>
                    </div>
                    
                    
                    <div class="clear mt50"></div>
                    <h3 class="wonh3">강북반 단원</h3>  
                    
                    <!-- 연주반 단원 -->
                    	<div class="child_people">
                        	<ul>
                            	<li>
                                	<img src="${contextPath }/images/index/people/t1_member_532.jpg" />
                                    <p>심은서</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_563.jpg" />
                                    <p>홍예솔</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_593.jpg" />
                                    <p>권지우</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_621.jpg" />
                                    <p>배윤서</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_623.jpg" />
                                    <p>정아연</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_641.jpg" />
                                    <p>우태영</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_643.jpg" />
                                    <p>구동하</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_644.jpg" />
                                    <p>신수아</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_645.jpg" />
                                    <p>이다움</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_646.jpg" />
                                    <p>노연영</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_647.jpg" />
                                    <p>이지윤</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_676.jpg" />
                                    <p>노규리</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_677.jpg" />
                                    <p>신현정</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_688.jpg" />
                                    <p>정해림</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_713.jpg" />
                                    <p>김예원</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_717.jpg" />
                                    <p>최호진</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_719.jpg" />
                                    <p>박여원</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_722.jpg" />
                                    <p>우경민</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_723.jpg" />
                                    <p>이루다</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_776.jpg" />
                                    <p>이태연</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_777.jpg" />
                                    <p>김현하</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_780.jpg" />
                                    <p>배수정</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_781.jpg" />
                                    <p>조민채</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>이하영</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>허윤진</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>허세민</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>양희나</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_797.jpg" />
                                    <p>양소은</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>김성현</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_824.jpg" />
                                    <p>박수빈</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>석예준</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>김나은</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>성아인</p>

                                </li>
                            </ul>
                        </div>
                    <!-- //연주반 단원 -->
                    </div>
                    <!-- 강북반 -->
                    
                    
                    <!-- 일산반 -->
                    <div id="contents4" style="display: none">
                	<h3 class="wonh3">일산반</h3>  
                	
                    <div class="floatL" style="width:350px;"><img src="${contextPath }/images/index/t1_choir_6.jpg" alt=""/></div>
                    <div class="floatL" style="width:390px;">일산반은 아름다운 소리와 도전하는 용기를 가지고 아이들에게 다양한 노래를 통하여 꿈과 비전, 음악적 감성을 가지고 여러 장르를 표현하고 있는 합창단입니다.<br/>

고양 어울림 극장, 고양 아람누리 연주홀 등 지역사회에서 많은 활동과 연주를 통해 다양한 경헙과 단원들의 더욱 크고 활기찬 비전을 만들어 가고 있습니다.<br/>
또한, <strong>올바른 인성교육과 함께하는 모습을 통해 단원들의 아름다운 하모니를 선사하며, Organized, Harmonized, Syncronized를 통한 교육과 연주를 위해 꾸준히 활동하고 있는 합창단</strong> 입니다.


						<ul class="dot_green">
                        	<li>· 연습장소 : 일산 신광교회, 성가대실 <img src="${contextPath }/images/index/y_btn.gif" align="absmiddle" style="cursor:pointer;" onclick="window.open('http://map.naver.com/?query=%BC%AD%BF%EF%BD%C3+%B0%AD%BC%AD%B1%B8+%B0%AD%BC%AD%B7%CE+47%B8%B6%B1%E6+85','_map','width=1000px,height=800px;');"></li>
                            <li>· 주     소 : 경기도 고양시 일산동구 무궁화로75번길 2, 신광교회</li>
                            <li>· 연습시간 : 화요일, 목요일 (4:30~7:00)</li>
                        </ul>
					</div>
       				
                    
                    <div class="clear mb30"></div>
                    <h3 class="wonh3">지도교사</h3>  
                    <div class="people_wrap">
                    <div class="floatL people_photo"><img src="${contextPath }/images/index/t1_teacher_47.jpg" alt=""/></div>
                    <div class="floatL people_info">
                    	<h4 class="wonh4">지휘 <strong class="black_f">이소윤</strong></h4>  
                    	<p>지휘자 이소윤은 유년시절 월드비전 선명회어린이합창단 단원으로 활동을 하며 비전을 발견하였다. 총신대학교에서 성악과, 아동학과를 공부하였으며 총신대 교회음악대학원에서 지휘를 전공하며 음악적 역량을 넓혀 가고 있다. 
2014년 필리핀에서 어린이합창단을 창단하여 Karis choir 지휘자로 음악의 아름다움과 합창의 정신을 전하였으며 그 후 CTS 마포 소년소녀합창단 지휘자, 총신대학교 합창2 지휘자로 활동하였다. 현재 월드비전 합창단 일산반 지휘자, CTS 마포 소년소녀합창단 지휘자로 활동하며, 람파스 선교합창단의 단원으로 활동하고 있다. </p>

						
                    </div>
                    </div>
                    
              <div class="clear dot_line"></div>
              
              		<div class="people_wrap">
                    <div class="floatL people_photo"><img src="${contextPath }/images/index/t1_teacher_21.jpg" alt=""/></div>
                    <div class="floatL people_info">
                    	<h4 class="wonh4">반주 <strong class="black_f">박진영</strong></h4>  
                    	<p>반주자 박진영은 성결대학교 교회음악과 오르간전공하였다. <br/>
재학시 유럽연수 실기우수생연주 콘서트 콰이어단원으로 활동하였다. <br/>
졸업후 소망교회 파이프오르간 신인음악회출연, 우리가곡부르기반주, 문학어린이합창단반주, 
월드비전 합창단 강북반 반주를 역임하고, 현재 복지교회반주와 월드비전 합창단 
일산반 반주를 하고 있다. </p>

						<h4 class="wonh4 mt30">Accompanist <strong class="black_f">Jin Young Park</strong></h4>  
                    	<p>Jin-Young Park studied organ (church music) at Sungkyul University. While her studies 
in the university, she attended the European Organ Training Program as an academic achiever 
and a member of the Concert Choir. After her graduation, she performed at the Somang Church's 
Pipe Organ Concert for new players and was an accompanist for Munhak Children’s Choir.<br/>
She was the accompanist of the Korean Song Singing Choir and World Vision Korea Children’s 
Choir in Kangbook region.. Currently, she is a member of Seoul Choral Company 
and an accompanist World Vision Korea Children’s Choir in Il-San region.</p>
                    </div>
                    </div>
                    
              <div class="clear dot_line"></div>
              
              		<div class="people_wrap">
                    <div class="floatL people_photo"><img src="${contextPath }/images/index/t1_teacher_23.jpg" alt=""/></div>
                    <div class="floatL people_info">
                    	<h4 class="wonh4">성악교사 <strong class="black_f">박은혜</strong></h4>  
                    	<p>성악교사 박은혜는 서울예술고등학교와 한국예술종합학교에서 성악을 전공했으며 현재 이화여자대학교 교육대학원에서 석사과정을 밟고 있다. 시흥시소년소녀합창단, 인천서구립합창단, 수정구여성합창단, 광명여성합창단등에서 발성코치 및 솔리스트로 활동하였다. 또한 정동다문화학교, 디지텍고등학교, 동그라미학교, 화성금곡초등학교, 판교청소련수련관, 권선청소년수련관에서 음악강사로 활동하였다. <br/>
음악협회콩쿨, 세종음악콩쿨에서 2위와 3위로 입상을 하였으며 영락교회 베다니홀에서 모차르트 대관식미사의 독창자로 출연, LA남가주 샬롬교회의 입당기념음악회 '천지창조'에 독창자로 출연, '메시아'에 독창자로 출연, 경기팝스오케스트라와 협연 및 2014 획기적세미나에서 영락교회 베들레헴성가대 독창자로 연주를 하였다. <br/>
현재 월드비전 합창단 성악교사, 금천구립합창단 수석단원, 스칼라소년소녀합창단 발성코치, 운유초등학교 합창단 지휘, 영락교회 베들레헴찬양대 솔리스트로 활동중이다.</p>

						<h4 class="wonh4 mt30">Voice Teacher <strong class="black_f">Eun Hye Park</strong></h4>  
                    	<p>EunHye Park studied voice at Seoul Arts High School and Korea National University of Arts. <br/>
She had been a voice teacher of Si-Heung City Children's Choir and In-cheon Seo Gu Choir. <br/>
Also, she worked as a music teacher at Jeong-Dong Multicultural School which consists 
of students from various countries. she worked as a voice teacher for World Vision Korea 
Children’s Choir in Kangseo , Bucheon region. EunHye was a music teacher at Dongrami School 
and a soloist in Sujeong Gu Choir. She takes a very active part in her field as a professional 
vocalist and educator. She won the second place winner in Music Association Competition 
and the third place winner in Sejong Music Competition. She was the Soloist of the Mozart's 
coronation mass, the membership in a music concert ‘The creation’ in Sallem Church 
of the Southern California, and 2014 Climacteric of the seminar in Bethlehem choir of Youngnak Presbyterian Church.<br/>
Now, she works as a voice teacher for World Vision Korea Children’s Choir in Ilsan region, a soloist in Geumcheongu ladies choir, a vocal trainer in Scala Youth Choir, a conductor in Unyu school choir and a soloist in Bethlehem choir.</p>
                    </div>
                    </div>
                    
                    
                    <div class="clear mt50"></div>
                    <h3 class="wonh3">일산반 단원</h3>  
                    
                    <!-- 연주반 단원 -->
                    	<div class="child_people">
                        	<ul>
                            	<li>
                                	<img src="${contextPath }/images/index/people/t1_member_532.jpg" />
                                    <p>심은서</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_563.jpg" />
                                    <p>홍예솔</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_593.jpg" />
                                    <p>권지우</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_621.jpg" />
                                    <p>배윤서</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_623.jpg" />
                                    <p>정아연</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_641.jpg" />
                                    <p>우태영</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_643.jpg" />
                                    <p>구동하</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_644.jpg" />
                                    <p>신수아</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_645.jpg" />
                                    <p>이다움</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_646.jpg" />
                                    <p>노연영</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_647.jpg" />
                                    <p>이지윤</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_676.jpg" />
                                    <p>노규리</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_677.jpg" />
                                    <p>신현정</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_688.jpg" />
                                    <p>정해림</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_713.jpg" />
                                    <p>김예원</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_717.jpg" />
                                    <p>최호진</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_719.jpg" />
                                    <p>박여원</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_722.jpg" />
                                    <p>우경민</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_723.jpg" />
                                    <p>이루다</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_776.jpg" />
                                    <p>이태연</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_777.jpg" />
                                    <p>김현하</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_780.jpg" />
                                    <p>배수정</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_781.jpg" />
                                    <p>조민채</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>이하영</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>허윤진</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>허세민</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>양희나</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_797.jpg" />
                                    <p>양소은</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>김성현</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_824.jpg" />
                                    <p>박수빈</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>석예준</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>김나은</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>성아인</p>

                                </li>
                            </ul>
                        </div>
                    <!-- //연주반 단원 -->
                    </div>
                    <!-- 일산반 -->
                    
                    
                    
                    <!-- 분당반 -->
                    <div id="contents5" style="display: none">
                	<h3 class="wonh3">분당반</h3>  
                	
                    <div class="floatL" style="width:350px;"><img src="${contextPath }/images/index/t1_choir_8.jpg" alt=""/></div>
                    <div class="floatL" style="width:390px;"><strong>분당반은 1995년부터 분당지역의 어린이합창 활성화와 이웃돕기 및 선교를 위해 활동하고 있습니다. </strong>매년 정기연주회를 비롯하여 교회연주 및 초청연주를 하고 있으며, 2000, 2003, 2007  월드비전 세계어린이합창제 참가 및 한국어린이합창컨벤션 (4회 ~ 현재 )참가, 2001년 뉴질랜드 해외 공연, 2004년에는 월드비전 경기지부 후원의 밤 초청연주, 국방부 주최 공익광고 CF 출연, 독립영화 출품작 출연, 호주 우든벨리 합창단 초청연주 등 다양한 문화 활동에 힘쓰고 있습니다.


						<ul class="dot_green">
                        	<li>· 연습장소 : 지구촌교회 702호 <img src="${contextPath }/images/index/y_btn.gif" align="absmiddle" style="cursor:pointer;" onclick="window.open('http://map.naver.com/?query=%BC%AD%BF%EF%BD%C3+%B0%AD%BC%AD%B1%B8+%B0%AD%BC%AD%B7%CE+47%B8%B6%B1%E6+85','_map','width=1000px,height=800px;');"></li>
                            <li>· 주     소 : 경기도 성남시 분당구 미금일로 154번길 6</li>
                            <li>· 연습시간 : 화요일, 목요일 (4:30 ~ 7:00)</li>
                        </ul>
					</div>
       				
                    
                    <div class="clear mb30"></div>
                    <h3 class="wonh3">지도교사</h3>  
                    <div class="people_wrap">
                    <div class="floatL people_photo"><img src="${contextPath }/images/index/t1_teacher_28.jpg" alt=""/></div>
                    <div class="floatL people_info">
                    	<h4 class="wonh4">지휘 <strong class="black_f">문신혜</strong></h4>  
                    	<p>지휘자 문신혜는 중앙대학교 작곡과에서 합창지휘를 전공하였다.<br/>
2001년도부터 2004년도까지 서울레이디스싱어즈에서 단원으로 활동하며 
아시아 합창 심포지움, 세계여성합창제 등을 참가하며 합창에 대해 깊이 있는 공부를 하였으며, 
2002년도부터 2008년도까지 인천에 위치한 문학어린이합창단을 지휘하였다.<br/>
2009년도부터 2014년도까지 월드비전 합창단 부천반과 한국입양어린이합창단, 인천 진광교회에서 지휘자로 활동하였으며 2015년도부터 2017년 7월까지 월드비전 합창단 강서반 지휘자로 활동했으며
2017년 8월부터 월드비전 합창단 분당반 지휘자로 활동하고 있다.</p>

						<h4 class="wonh4 mt30">Conductor <strong class="black_f">Sin Hye Moon</strong></h4>  
                    	<p>Sinhye Moon studied Choral Conducting at Chung-Ang University.<br/>
She was a member of Seoul Ladies Singers from 2001 through 2004. She has participated 
in many global activities such as Asia Symposium on Choral Music, 
World Woman’s Choral Festival. She had conducted Moon-hak Children’s Choir 
in In-cheon from 2002 to 2008.<br/>
She conducted  World Vision Korea Children’s Choir in Bucheon, Kangseo regionand 
Jin-kwang Methodist Church in In-cheon Korea Adopted Children’s Choir from 2009 to 2014.<br/>
Now she is conducting World Vision Korea Children’s Choir in Bundang region.</p>
                    </div>
                    </div>
                    
              <div class="clear dot_line"></div>
              
              		<div class="people_wrap">
                    <div class="floatL people_photo"><img src="${contextPath }/images/index/t1_teacher_30.jpg" alt=""/></div>
                    <div class="floatL people_info">
                    	<h4 class="wonh4">반주 <strong class="black_f">문승희</strong></h4>  
                    	<p>반주자 문승희는 나사렛대학교에서 피아노를 전공하였고, 피아노 반주에 대해 전문적으로 공부하고자
단국대학교 대학원에서 피아노반주 전공 석사학위를 받았다. <br/>
현재 월드비전 합창단 분당반 반주자로 활동하고 있으며, 안산동산교회 예루살렘찬양대 반주자로도 활동 중이다.</p>

						<h4 class="wonh4 mt30">Accompanist <strong class="black_f">Seung Hee Moon</strong></h4>  
                    	<p>Seung-hee Moon studied piano from Korea Nazarene University.  For more knowledge
in the accompaniment field, she received a master’s degree in piano accompaniment 
from Dankook University. Currently, she is the accompanist in World Vision Korea Children’s 
Choir in Bundang region and Jerusalem Choir in Ansan Dongsan Church.</p>
                    </div>
                    </div>
                    
              <div class="clear dot_line"></div>
              
              		<div class="people_wrap">
                    <div class="floatL people_photo"><img src="${contextPath }/images/index/t1_teacher_29.jpg" alt=""/></div>
                    <div class="floatL people_info">
                    	<h4 class="wonh4">성악교사 <strong class="black_f">이혜진</strong></h4>  
                    	<p>성악교사 이혜진은 월드비전 선명회합창단(현 월드비전 합창단) 단원으로 활동했으며 서울예고를 졸업하고, 서울 신학대학교 교회음악과에서 성악을 전공했다. 졸업 후 안산 시립 합창단 상임단원,과천 시립 여성 합창단, 최훈차콰이어, 소망교회 솔리스트로 활동하였다.계원 예술대학교(Kaywon School of Art and Design)에 출강했으며, 월드비전 선명회 합창단 인천반, 분당반, 강남반 성악지도를 거쳐 연주반과 예비연주반 성악지도를 하였다. 현재 월드비전 합창단 분당반에서 성악지도하고 있으며 원천초등학교, 천천초등학교 합창지도, 분당우리교회 3부 성가대 솔리스트로 활동하고 있다.</p>

						<h4 class="wonh4 mt30">Voice Teacher <strong class="black_f">Hye Jin Lee</strong></h4>  
                    	<p>Hye Jin Lee was a member of World Vision Korea Children's Choir and graduated Seoul Arts 
High School. Mrs. Lee has a Bachelor's degree in Church Music (Voice) from Seoul 
Theological University. After finishing her degree, She sang as a standing member 
of Ansan City Choir. Also, she was a member of Gwacheon Civic Women's Choir, 
Choi Hoon Cha Choir, and a soloist in Somang Church Choir. Also, she taught students in Kaywon School of Art and Design. <br/>
In World Vision Korea Children's Choir, she taught in several regional (education) choirs. <br/>
Currently, Hye Jin Lee teaches World Vision Korea Children's Choirs in Bundang regions,  Woncheon Elementary School and Chonchon Elementary School.  and she is a Soloist in Bundang Woori Church.</p>
                    </div>
                    </div>
                    
                    
                    <div class="clear mt50"></div>
                    <h3 class="wonh3">분당반 단원</h3>  
                    
                    <!-- 연주반 단원 -->
                    	<div class="child_people">
                        	<ul>
                            	<li>
                                	<img src="${contextPath }/images/index/people/t1_member_532.jpg" />
                                    <p>심은서</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_563.jpg" />
                                    <p>홍예솔</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_593.jpg" />
                                    <p>권지우</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_621.jpg" />
                                    <p>배윤서</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_623.jpg" />
                                    <p>정아연</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_641.jpg" />
                                    <p>우태영</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_643.jpg" />
                                    <p>구동하</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_644.jpg" />
                                    <p>신수아</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_645.jpg" />
                                    <p>이다움</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_646.jpg" />
                                    <p>노연영</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_647.jpg" />
                                    <p>이지윤</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_676.jpg" />
                                    <p>노규리</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_677.jpg" />
                                    <p>신현정</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_688.jpg" />
                                    <p>정해림</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_713.jpg" />
                                    <p>김예원</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_717.jpg" />
                                    <p>최호진</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_719.jpg" />
                                    <p>박여원</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_722.jpg" />
                                    <p>우경민</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_723.jpg" />
                                    <p>이루다</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_776.jpg" />
                                    <p>이태연</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_777.jpg" />
                                    <p>김현하</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_780.jpg" />
                                    <p>배수정</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_781.jpg" />
                                    <p>조민채</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>이하영</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>허윤진</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>허세민</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>양희나</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_797.jpg" />
                                    <p>양소은</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>김성현</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_824.jpg" />
                                    <p>박수빈</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>석예준</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>김나은</p>
                                </li>
                                <li>
                                	<img src="${contextPath }/images/index/people/t1_member_791.jpg" />
                                    <p>성아인</p>

                                </li>
                            </ul>
                        </div>
                    <!-- //연주반 단원 -->
                    </div>
                    <!-- 분당반 -->
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
