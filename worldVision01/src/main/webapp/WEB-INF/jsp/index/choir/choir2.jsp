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
		function logout(id){
			alert(id+"님이 로그아웃 하셨습니다.");
			location.href = "logout";
		}
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
        	<p class="page_nav">HOME &gt; CHOIR &gt; <strong>합창단 연혁</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/index/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>합창단 연혁<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
               <script language="javascript">
function tab_menu(val, path){
	var img = new Array('','about03_tap1_','about03_tap2_');
	for(i = 1; i <= 2; i++) { //탭메뉴 갯수
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
                	<h3 class="wonh3">월드비전 합창단 연혁</h3>  
                	
       				<div  class="history_1">
                    	<dl>
                        	<dt>[창단]</dt>
                            <dd><ul>
                            	<li>1960년 8월 22일 세계 기독교 선명회에 의하여 선명회어린이합창단 창단 </li>
                            	<li>1998년 9월 1일 월드비전 선명회어린이합창단으로 개명</li>
                            	<li>2016년 3월 월드비전 합창단으로 개명</li>
                            </ul></dd>
                            
                            <dt>[국내 연주활동]</dt>
                            <dd>1120회를 30개 국어로 연주</dd>
                            
                            <dt>[국가 원수를 위한 연주]</dt>
                            <dd>카터 미 대통령 외 41개국</dd>
                            
                            <dt>[외국 국민을 위한 연주]</dt>
                            <dd>뉴질랜드 국회의장 외 40여개국</dd>
                            
                            <dt>[국제행사 및 세계 순회]</dt>
                            <dd>서울 I.P.U 총회 연주 외 65회 / 국내외 단체에 초청되어 700여회 연주</dd>
                            
                            <dt>[TV 및 라디오]</dt>
                            <dd>국내 - 220여회 / 국외 - 457회</dd>
                            
                            <dt>[홍보영화 촬영]</dt>
                            <dd><ul>
                            	<li>국정홍보처 캠페인 광고 출연“하나가 되어” (방영 2000.4.15~5.30)</li>
                            	<li>서울시 홍보영화촬영 (2000.8.30)</li>
                            	<li>통일부 통일홍보 공익광고 출연 (2004.12.29.)</li>
                            </ul></dd>
                        </dl>
                    </div>
                    
                    
                    <div class="clear mb30"></div>
                    <h3 class="wonh3">국내외 수상</h3> 
                    
                    <div class="choice_history">
                    	<img src="${contextPath }/images/index/about03_tap1_on.gif" style="cursor:pointer" id="contents_img1" onclick="tab_menu(1, '${contextPath}')">
                    	<img src="${contextPath }/images/index/about03_tap2_off.gif" style="cursor:pointer;margin-top:4px;" id="contents_img2" onclick="tab_menu(2, '${contextPath}')">
                    </div> 
        <!--              
                    <div class="history_wrap">
                    	<table width="100%" border="0" cellspacing="0" cellpadding="0" id="contents1">
			              <tbody><tr>
                <td width="80">
                  <img src="${contextPath }/images/index/2000.gif">        </td>
                <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tbody><tr>
                    <td width="50" class="date">07. </td>
                    <td class="his_pad">MBC, 예술의전당, 월드비전 감사패</td>
                  </tr>
                  
                                      <tr>
                    <td width="50" class="date">07. </td>
                    <td class="his_pad">김포시장 월드비전 2000 세계어린이합창제 감사패</td>
                  </tr>
                  
                                    </tbody></table>        </td>
              </tr>
              
                              <tr>
                <td width="80">
                  <img src="${contextPath }/images/index/1995.gif">        </td>
                <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tbody><tr>
                    <td width="50" class="date">07. </td>
                    <td class="his_pad">대한 체육회 2002년 아시안 게임 유치 공로 감사패</td>
                  </tr>
                  
                                    </tbody></table>        </td>
              </tr>
              
                              <tr>
                <td width="80">
                  <img src="${contextPath }/images/index/1991.gif">        </td>
                <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tbody><tr>
                    <td width="50" class="date">11. </td>
                    <td class="his_pad">문화부 장관 표창패 수상</td>
                  </tr>
                  
                                      <tr>
                    <td width="50" class="date">11. </td>
                    <td class="his_pad">문화부 장관 감사장 수상 </td>
                  </tr>
                  
                                    </tbody></table>        </td>
              </tr>
              
                              <tr>
                <td width="80">
                  <img src="${contextPath }/images/index/1990.gif">        </td>
                <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tbody><tr>
                    <td width="50" class="date">09. </td>
                    <td class="his_pad">장관 감사장 수상</td>
                  </tr>
                  
                                    </tbody></table>        </td>
              </tr>
              
                              <tr>
                <td width="80">
                  <img src="${contextPath }/images/index/1989.gif">        </td>
                <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tbody><tr>
                    <td width="50" class="date">10. </td>
                    <td class="his_pad">서울 올림픽대회 조직위원회 위원장 감사장 수상</td>
                  </tr>
                  
                                    </tbody></table>        </td>
              </tr>
              
                              <tr>
                <td width="80">
                  <img src="${contextPath }/images/index/1988.gif">        </td>
                <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tbody><tr>
                    <td width="50" class="date">04. </td>
                    <td class="his_pad">문공부 장관 감사장 수상</td>
                  </tr>
                  
                                    </tbody></table>        </td>
              </tr>
              
                              <tr>
                <td width="80">
                  <img src="${contextPath }/images/index/1976.gif">        </td>
                <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tbody><tr>
                    <td width="50" class="date">04. </td>
                    <td class="his_pad">문공부 장관 감사장 수상</td>
                  </tr>
                  
                                    </tbody></table>        </td>
              </tr>
              
                              <tr>
                <td width="80">
                  <img src="${contextPath }/images/index/1973.gif">        </td>
                <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tbody><tr>
                    <td width="50" class="date">04. </td>
                    <td class="his_pad">대통령 표창 수상</td>
                  </tr>
                  
                                    </tbody></table>        </td>
              </tr>
              
                              </tbody></table>
                              
                              
                              
                              
                             <table width="100%" border="0" cellspacing="0" cellpadding="0" id="contents2" style="display:none;">
				                  <tbody><tr>
                    <td width="80">
                      <img src="${contextPath }/images/index/2016.gif">        </td>
                    <td>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tbody><tr>
                        <td width="50" class="date">08. </td>
                        <td class="his_pad">제 11회 헝가리 칸테무스 국제 합창 페스티벌 3관광 (합창단경연대회 부문 금상, 민속음악부문 청중투표 1등상, 그랑프리)</td>
                      </tr>
                      
                                            </tbody></table>        </td>
                  </tr>
                  
                                      <tr>
                    <td width="80">
                      <img src="${contextPath }/images/index/2013.gif">        </td>
                    <td>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tbody><tr>
                        <td width="50" class="date">08. 10</td>
                        <td class="his_pad">필리핀 Andrea O. Veneracion Choral Festival -Folk Music 대상 수상</td>
                      </tr>
                      
                                            </tbody></table>        </td>
                  </tr>
                  
                                      <tr>
                    <td width="80">
                      <img src="${contextPath }/images/index/2002.gif">        </td>
                    <td>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tbody><tr>
                        <td width="50" class="date">06. </td>
                        <td class="his_pad">핀란드 세계합창제 감사패</td>
                      </tr>
                      
                                            </tbody></table>        </td>
                  </tr>
                  
                                      <tr>
                    <td width="80">
                      <img src="${contextPath }/images/index/2001.gif">        </td>
                    <td>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tbody><tr>
                        <td width="50" class="date">08. </td>
                        <td class="his_pad">애틀란타 한국학교 감사패</td>
                      </tr>
                      
                                              <tr>
                        <td width="50" class="date">08. </td>
                        <td class="his_pad">샌프란시스코 시장 감사장 수상</td>
                      </tr>
                      
                                            </tbody></table>        </td>
                  </tr>
                  
                                      <tr>
                    <td width="80">
                      <img src="${contextPath }/images/index/2000.gif">        </td>
                    <td>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tbody><tr>
                        <td width="50" class="date">08. </td>
                        <td class="his_pad">헝가리 칸테무스합창단 주최 제3회 세계합창제 감사패</td>
                      </tr>
                      
                                            </tbody></table>        </td>
                  </tr>
                  
                                      <tr>
                    <td width="80">
                      <img src="${contextPath }/images/index/1997.gif">        </td>
                    <td>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tbody><tr>
                        <td width="50" class="date">03. </td>
                        <td class="his_pad">뉴질랜드 선명회 회장 및 오클랜드 시장 감사장 수상</td>
                      </tr>
                      
                                            </tbody></table>        </td>
                  </tr>
                  
                                      <tr>
                    <td width="80">
                      <img src="${contextPath }/images/index/1978.gif">        </td>
                    <td>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tbody><tr>
                        <td width="50" class="date">01. </td>
                        <td class="his_pad">EBU, 세계합창경연대회 최우수상 수상 (영국 BBC 주최)</td>
                      </tr>
                      
                                            </tbody></table>        </td>
                  </tr>
                  
                                      <tr>
                    <td width="80">
                      <img src="${contextPath }/images/index/1962.gif">        </td>
                    <td>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tbody><tr>
                        <td width="50" class="date">01. </td>
                        <td class="his_pad">1962년 - 1996년 미국, 독일 시장 외 감사장 53회 수상</td>
                      </tr>
                      
                                            </tbody></table>        </td>
                  </tr>
                  
                                      </tbody></table>
                    </div>
                    
                    -->
                    <div class="history_wrap">
                    	<table width="100%" border="0" cellspacing="0" cellpadding="0" id="contents1">
			              <tbody>
			              <c:forEach items="${hList1}" var="history">
			              
			              <tr>
                <td width="80">
                  <img src="${contextPath }/images/index/${history.getYear() }.gif">        </td>
                <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tbody><tr>
                    <td width="50" class="date">${history.getMonth() }. </td>
                    <td class="his_pad">${history.getContents() }</td>
                  </tr>
                     </tbody></table>        </td>
              </tr>
                    </c:forEach>
                    </tbody></table>
                    </div>
                    <div class="history_wrap">
                    	<table width="100%" border="0" cellspacing="0" cellpadding="0" id="contents2">
			              <tbody>
			              <c:forEach items="${hList2}" var="history">
			              
			              <tr>
                <td width="80">
                  <img src="${contextPath }/images/index/${history.getYear() }.gif">        </td>
                <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tbody><tr>
                    <td width="50" class="date">${history.getMonth() }. </td>
                    <td class="his_pad">${history.getContents() }</td>
                  </tr>
                     </tbody></table>        </td>
              </tr>
                    </c:forEach>
                    </tbody></table>
                    </div>
                    
       				<div class="clear mb30"></div>
         			<h3 class="wonh3">해외연주 활동</h3> 
                    
                    <ul class="oversea_history">
                    	<li><strong>제 1차</strong><p class="year">1961년 10월 16일 - 1962년 2월 6일</p><p class="text_hsitory">미국,캐나다 외 72개도시 / 100회공연</p></li>
                        <li><strong>제 2차</strong><p class="year point_c1">1962년 10월 1일 - 1963년 5월 7일</p><p class="text_hsitory">일본,대만,필리핀,인도,이란,이스라엘,프랑스,서독,네덜란드,노르웨이,영국,미국,캐나다 등 16개국의 104개 도시 130회 공연</p></li>
                        <li><strong>제 3차</strong><p class="year">1965년 7월 6일 - 1966년 1월 31일</p><p class="text_hsitory">미국,캐나다,버뮤다 외 90개도시 / 98회 공연</p></li> 	
                        <li><strong>제 4차</strong><p class="year">1968년 8월 9일 - 1969년 2월 6일</p><p class="text_hsitory">미국,캐나다,버뮤다 외 120개도시 / 176회 공연</p></li> 	
                        <li><strong>제 5차</strong><p class="year">1971년 2월 25일 - 4월 29일</p><p class="text_hsitory">자유중국,홍콩,베트남,싱가폴,호주,뉴질랜드의 20개도시 / 55회 공연</p></li> 
                        <li><strong>제 6차</strong><p class="year">1972년 9월 27일 - 1973년 1월 26일</p><p class="text_hsitory">미국,캐나다,버뮤다 외 90개도시 / 96회 공연</p></li> 	
                        <li><strong>제 7차</strong><p class="year">1974년 10월 11일 - 12월 12일</p><p class="text_hsitory">호주,뉴질랜드 15개도시 / 38회 공연</p></li> 	
                        <li><strong>제 8차</strong><p class="year point_c1">1975년 7월 23일 - 8월 26일</p><p class="text_hsitory">TV영화 One to One 촬영, 영화배우 쥴리앤드류스, 피겨 스케이팅<br/>선수 쟈넷트린, 인형극단 마펫등과 공연, 1975년 크리스마스에 전 미국에 방영됨</p></li> 
                        <li><strong>제 9차</strong><p class="year">1976년 3월 23일 - 4월 4일</p><p class="text_hsitory">호주 ATN(7) TV 'This is your Life'에 출연</p></li> 		
                        <li><strong>제 10차</strong><p class="year point_c1">1978년 12월 4일 - 8일</p><p class="text_hsitory">홍콩 자선모금 단체인 The Communit Chest of K.10주년을 기념하여 세계 불우 어린이를 위한 기금마련 자선음악회에 출연</p></li> 	
                        <li><strong>제 11차</strong><p class="year">1979년 2월 25일 - 4월 3일</p><p class="text_hsitory">호주,뉴질랜드,태국의 14개도시 / 24회 공연</p></li> 
                        <li><strong>제 12차</strong><p class="year point_c1">1979년 12월 26일 - 1980년 2월 1일</p><p class="text_hsitory">미국 Rose Parade 참가 및 영화제작<br/>(로이로저스,데일 에반스멤바어, 제임스 큇트모어, 닥 세머린슨과 공연)</p></li> 
                        <li><strong>제 13차</strong><p class="year">1982년 3월 1일 - 10일</p><p class="text_hsitory">대만연주여행 / 6회공연</p></li>		
                        <li><strong>제 14차</strong><p class="year">1985년 8월 4일 - 11일</p><p class="text_hsitory">홍콩자선 및 문화교류를 위한 연주회 / 3회공연 및 TV 2회 출연</p></li>		
                        <li><strong>제 15차</strong><p class="year point_c1">1986년 1월 16일 - 2월 1일</p><p class="text_hsitory">한일 양국의 청소년 문화교류 증진 및 수교 20주년 기념 순회연주 7회 공연 및 NHK TV 2회 출연</p></li>	
                        <li><strong>제 16차</strong><p class="year point_c1">1988년 1월 6일 - 2월 1일</p><p class="text_hsitory">독일, 네델란드, 스위스, 오스트리아 연주여행, 유럽지역 국제 문화교류 사업 및 88 올림픽 홍보 / 21회 공연 및 TV 5회 출연</p></li>	
                        <li><strong>제 17차</strong><p class="year">1989년 1월 15일 - 31일</p><p class="text_hsitory">한일 양국 청소년 문화교류를 위한 연주 / 9회 공연</p></li>	
                        <li><strong>제 18차</strong><p class="year">1989년 11월 2일 - 6일</p><p class="text_hsitory">일본 나고야 국제 디자인 박람회 기념 연주 / 3회공연</p></li>	
                        <li><strong>제 19차</strong><p class="year">1991년 5월 19일 - 28일</p><p class="text_hsitory">대만 세계 합창제 참가 및 4개 도시 순회 연주 / 5회 공연</p></li>
                        <li><strong>제 20차</strong><p class="year">1991년 7월 25일 - 29일</p><p class="text_hsitory">일본 하마마쯔시 91 세계 청소년 음악제 참가 / 1회 공연</p></li>
                        <li><strong>제 21차</strong><p class="year point_c1">1992년 1월</p><p class="text_hsitory">일본선명회 초청 자선음악회 / 동경 산타리오 홀 - 일본 청소년문화센터 초청 연주 / 9개 도시 순회 연주</p></li>
                        <li><strong>제 22차</strong><p class="year point_c1">1993년 12월 29일 - 1994년 2월 2일</p><p class="text_hsitory">미국 캐나다 9개 도시 순회공연 / Crystal Cathdral, Carnegie Hall, Roy Thompson Hall 등에서 공연</p></li>
                        <li><strong>제 23차</strong><p class="year">1995년 1월 11일 - 26일</p><p class="text_hsitory">일본 청소년 문화센타 초청연주 / 8개도시 순회 연주</p></li>
                        <li><strong>제 24차</strong><p class="year point_c1">1995년 8월 13일 - 28일</p><p class="text_hsitory">핀란드 세계 합창제 참가 및 2002년 월드컵 유치 홍보를 위한 유럽 순회 연주 / 스웨덴, 독일 연주</p></li>
                        <li><strong>제 25차</strong><p class="year">1995년 12월 15일 - 1996년 1월 3일</p><p class="text_hsitory">미국 동부 (아틀란타, 찰스톤, 콜롬비아, 뉴욕)</p></li>
                        <li><strong>제 26차</strong><p class="year point_c1">1996년 7월 25일 - 8월 14일</p><p class="text_hsitory">일본 하마마쯔 세계 합창제 참가 및 호주, 뉴질랜드, 피지 순회 공연</p></li>
                        <li><strong>제 27차</strong><p class="year point_c1">1997년 7월 21일 - 8월 5일</p><p class="text_hsitory">미국 어거스타, 콜롬비아, 훼이트빌, 그린스보로, 샬롯 순회 공연</p></li>
                        <li><strong>&nbsp;</strong><p class="year point_c1">1997년 7월 30일 - 8월 9일</p><p class="text_hsitory">뉴질랜드 오클랜드 공연</p></li>
                        <li><strong>제 28차</strong><p class="year">1998년 1월 24일 - 26일</p><p class="text_hsitory">일본 청소년 문화원 초청 규슈지방 미야꼬노조 공연</p></li>
                        <li><strong>제 29차</strong><p class="year">1999년 7월 21일 - 25일</p><p class="text_hsitory">일본 세계합창제 참가(후쿠오카)</p></li>
                        <li><strong>제 30차</strong><p class="year">2000년 2월 1일 - 8일</p><p class="text_hsitory">호주 테오빌로 문화센타 초청 골드코스트, 브리스번 공연</p></li>
                        <li><strong>제 31차</strong><p class="year point_c1">2000년 8월 14일 - 24일</p><p class="text_hsitory">헝가리 칸테무스합창단 초청 세계합창제 참가, 체코 스콜라스틱 뮤직쳄버 앙상블 초청 연주</p></li>
                        <li><strong>제 32차</strong><p class="year point_c1">2001년 8월 2일 ~ 21일</p><p class="text_hsitory">미국 콜로라도어린이합창단 초청 미국 순회 연주<br/>(샌프란시스코, 필라델피아, 워싱턴DC, 볼티모어, 아틀란타, 덴버)</p></li>
                        <li><strong>제 33차</strong><p class="year point_c1">2002년 6월 1일 - 11일</p><p class="text_hsitory">핀란드 타피올라합창단 초청 에스푸 세계합창제 참가 / 스웨덴, 독일 순회여행</p></li>
                        <li><strong>제 34차</strong><p class="year">2002년 8월 2일 - 6일</p><p class="text_hsitory">일본 후쿠오카 초청 Korea-Japan 프랜드쉽 콘서트 참가</p></li>
                        <li><strong>제 35차</strong><p class="year">2003년 7월 26일 - 8월 14일</p><p class="text_hsitory">미국 월드비전 자선공연, 캐나다 세계합창제 참가</p></li>
                        <li><strong>제 36차</strong><p class="year">2005년 7월 19일 - 8월 9일</p><p class="text_hsitory">미국 순회연주 "Voice for the Voiceless"</p></li>
                        <li><strong>제 37차</strong><p class="year">2006년 7월 26일 - 8월 22일</p><p class="text_hsitory">미국 순회연주 "Voice for the Voiceless"</p></li>
                        <li><strong>제 38차</strong><p class="year">2006년 11월 10일 - 13일</p><p class="text_hsitory">일본 야마구치현 초청연주</p></li>
                        <li><strong>제 39차</strong><p class="year">2007년 7월 31일 - 8월 29일</p><p class="text_hsitory">미국 순회연주 "Voice for the Voiceless"</p></li>
                        <li><strong>제 40차</strong><p class="year">2008년 7월 22일 - 8월 20일</p><p class="text_hsitory">미국 순회연주</p></li>
                        <li><strong>제 41차</strong><p class="year">2009년 7월 18일 - 21일</p><p class="text_hsitory">일본 요코하마 청소년 국제교류 합창 페스티벌 참가</p></li>
                        <li><strong>제 42차</strong><p class="year">2009년 8월 12일 - 25일</p><p class="text_hsitory">호주 브리스베인 비랄리 합창단, 호주한인교회연합회 초청 연주</p></li>
                        <li><strong>제 43차</strong><p class="year">2010년 8월 2일 - 9월 1일</p><p class="text_hsitory">미국순회연주</p></li>
                        <li><strong>제 44차</strong><p class="year">2011년 8월 3일 - 20일</p><p class="text_hsitory">뮤직페스트 벤쿠버 초청연주, 미국서부 순회연주</p></li>
                        <li><strong>제 45차</strong><p class="year">2011년 8월 16일 - 21일</p><p class="text_hsitory">베트남 호치민 오페라하우스 초청 연주</p></li>
                        <li><strong>제 46차</strong><p class="year">2012년 2월 2일 - 12일</p><p class="text_hsitory">대만 크리스탈 콰이어 초청연주</p></li>
                        <li><strong>제 47차</strong><p class="year">2012년 7월 24일 - 8월 18일</p><p class="text_hsitory">미국순회연주</p></li>
                        <li><strong>제 48차</strong><p class="year">2012년 8월 8일 - 18일</p><p class="text_hsitory">호주 tv Korea 초청연주</p></li>
                        <li><strong>제 49차</strong><p class="year">2012년 12월 13일 - 16일</p><p class="text_hsitory">일본드림네비게이션 초청 크리스마스 콘서트 / 2회 공연</p></li>
                        <li><strong>제 50차</strong><p class="year">2013년 8월 6일 - 16일</p><p class="text_hsitory">필리핀, 홍콩 순회연주</p></li>
                        <li><strong>제 51차</strong><p class="year">2014년 2월 19일 - 3월 2일</p><p class="text_hsitory">쿠웨이트, U.A.E / 6회 공연</p></li>
                        <li><strong>제 52차</strong><p class="year">2014년 7월 25일 - 8월 1일</p><p class="text_hsitory">중국 상하이</p></li>
                        <li><strong>제 53차</strong><p class="year">2015년 7월 30일 - 8월 7일</p><p class="text_hsitory">인도네시아 발리국제합창페스티벌 / 2회 공연</p></li>
                        <li><strong>제 54차</strong><p class="year">2015년 9월 21일 - 26일</p><p class="text_hsitory">한일 수교 50주년 기념 연주 (일본) / 4회 공연</p></li>
                        <li><strong>제 55차</strong><p class="year">2016년 8월 13일 - 22일</p><p class="text_hsitory">헝가리 칸테무스 국제 합창 페스티벌</p></li>
                        <li><strong>제 56차</strong><p class="year">2017년 8월 1일 ~ 15일</p><p class="text_hsitory">미국순회연주</p></li>
                    </ul>
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
