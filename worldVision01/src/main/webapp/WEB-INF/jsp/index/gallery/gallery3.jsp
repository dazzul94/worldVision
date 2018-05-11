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
	<script>
	function prevPage(cPage, search, cateSelect, sText){
		if(search == null){
			if(cPage != 1){
				cPage--;
				location.href = "gallery3?cPage=" + cPage;
			}else{
				alert("이전 페이지가 없습니다.");
			}	
		}else{
			if(cPage != 1){
				cPage--;
				location.href = "gallery3?cPage=" + cPage + "&search=" + search 
						+ "&cateSelect=" + cateSelect + "&sText=" + sText;
			}else{
				alert("이전 페이지가 없습니다.");
			}
		}
		
	}
	
	function nextPage(cPage, maxPage, search, cateSelect, sText){
		if(search == null){
			if(cPage != maxPage){
				cPage++;
				location.href = "gallery3?cPage=" + cPage;
			}else{
				alert("다음 페이지가 없습니다.");
			}	
		}else{
			if(cPage != maxPage){
				cPage++;
				location.href = "gallery3?cPage=" + cPage + "&search=" + search 
				+ "&cateSelect=" + cateSelect + "&sText=" + sText;
			}else{
				alert("다음 페이지가 없습니다.");
			}
		}
		
	}
	
	function goView(bbs_no, cPage, search, cateSelect, sText){
		if(search == null){
			location.href = "galleryView?no=" + bbs_no + "&cPage=" + cPage+ "&str=포스터/이미지&dbName=gallery04";
		}else{
			location.href = "galleryView?no=" + bbs_no + "&cPage=" + cPage 
					+ "&str=포스터/이미지&dbName=gallery04&search=" + search 
					+ "&cateSelect=" + cateSelect + "&sText=" + sText;
		}
		
	}
	
	function goSearch(){
		var value = $("#serText").val();
		var select = $("#serSelect option:selected").val();
		var num = "";
		if(select == "제목"){
			num = "1"
		}else if(select == "내용"){
			num = "2";
		}else{
			num = "3";
		}
		location.href = "gallery3?search=1&cateSelect=" + num + "&sText=" + value;
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
        	<p class="page_nav">HOME &gt; GALLERY &gt; <strong>포스터/이미지</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/index/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>포스터/이미지<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
            
           	<div class="contentWrap">
            	
            	
                <!-- S: board -->
                    <div class="listLayout">
                    	
                        
                   	  <div class="listTop">
                    		<p>총 <span>${bCount }</span> 건</p>
                    		<div class="searchWrap">
                    			<select id="serSelect">
                    			  <option>제목</option>
                    			  <option>내용</option>
                    			  <option>제목 + 내용</option>
                    			</select><input type="text" id="serText"><button onclick = "goSearch()">검색</button>
                    		</div>
                        </div>
				<table>
					<tr>
                    	<th>번호</th>
						<th>곡명</th>
                        <th>작성자</th>
                        <th>등록일</th>
                        <th>조회</th>
					</tr>
					<!--  
					<tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
					<tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
					<tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
					-->
					<c:forEach items="${bList }" var="board">
						<tr>
                    	<td>${board.getBbs_no() }</td>
                        <td class="subject"><a href="#" onclick="goView('${board.getBbs_no()}', '${cPage }', '${search }', '${cateSelect}', '${sText }')" return false;>${board.getBbs_subject() }</a></td>
                        <td>${board.getBbs_name() }</td>
                        <td>${board.getBbs_date().substring(0, 4) }-${board.getBbs_date().substring(4, 6) }-${board.getBbs_date().substring(6, 8) }</td>
                        <td>${board.getBbs_hit() }</td>
					</tr>
					</c:forEach>
				</table>
                	
                	<c:choose>
                	<c:when test="${search == null }">	
                	<div class="pagerWrap">
                
						<c:choose>
						<c:when test="${startPage != 1 }">
							<a href="gallery3?cPage=${startPage - 10 }"><img src="${contextPath }/images/index/board/frontArr.png" alt="맨앞으로" /></a>
						</c:when>
						<c:otherwise>
							<img src="${contextPath }/images/index/board/frontArr.png" alt="맨앞으로" />
						</c:otherwise>
						</c:choose>
						<a href="#" onclick="prevPage('${cPage}')" return false;><img src="${contextPath }/images/index/board/prevArr.png" alt="앞으로" /></a>
						<!--  
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
						-->
						<c:forEach begin="${startPage }" end="${endPage }" step="1" var="i">
							<c:choose>
								<c:when test="${cPage == i }">
									<a href="gallery3?cPage=${i }" class="on">${i }</a>
								</c:when>
								<c:otherwise>
									<a href="gallery3?cPage=${i }">${i }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<a href="#" onclick="nextPage('${cPage}', '${maxPage }')" return false;><img src="${contextPath }/images/index/board/nextArr.png" alt="뒤로" /></a>
							<c:choose>
                		<c:when test="${startPage+10 < maxPage }">
							<a href="gallery3?cPage=${startPage + 10}"><img src="${contextPath }/images/index/board/backArr.png" alt="맨뒤로" /></a>	
						</c:when>
						<c:otherwise>
							<img src="${contextPath }/images/index/board/backArr.png" alt="맨뒤로" />
						</c:otherwise>
						</c:choose>
			
            		</div>
            		</c:when>
            		<c:otherwise>
            		<div class="pagerWrap">
                
						<c:choose>
                		<c:when test="${startPage != 1 }">
							<a href="gallery3?cPage=${startPage - 10 }&search=${search }&cateSelect=${cateSelect}&sText=${sText}"><img src="${contextPath }/images/index/board/frontArr.png" alt="맨앞으로" /></a>
						</c:when>
						<c:otherwise>
							<img src="${contextPath }/images/index/board/frontArr.png" alt="맨앞으로" />
						</c:otherwise>
						</c:choose>
						<a href="#" onclick="prevPage('${cPage}', '${search }', '${cateSelect}', '${sText }')" return false;><img src="${contextPath }/images/index/board/prevArr.png" alt="앞으로" /></a>
						<c:forEach begin="${startPage }" end="${endPage }" step="1" var="i">
							<c:choose>
								<c:when test="${cPage == i }">
									<a href="gallery3?cPage=${i }&search=${search }&cateSelect=${cateSelect}&sText=${sText}" class="on">${i }</a>
								</c:when>
								<c:otherwise>
									<a href="gallery3?cPage=${i }&search=${search }&cateSelect=${cateSelect}&sText=${sText}">${i }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<a href="#" onclick="nextPage('${cPage}', '${maxPage }', '${search }', '${cateSelect}', '${sText }')" return false;><img src="${contextPath }/images/index/board/nextArr.png" alt="뒤로" /></a>
						<c:choose>
                		<c:when test="${startPage+10 < maxPage }">
							<a href="gallery3?cPage=${startPage + 10}&search=${search }&cateSelect=${cateSelect}&sText=${sText}"><img src="${contextPath }/images/index/board/backArr.png" alt="맨뒤로" /></a>	
						</c:when>
						<c:otherwise>
							<img src="${contextPath }/images/index/board/backArr.png" alt="맨뒤로" />
						</c:otherwise>
						</c:choose>	
			
            		</div>
            		</c:otherwise>
            		</c:choose>
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
