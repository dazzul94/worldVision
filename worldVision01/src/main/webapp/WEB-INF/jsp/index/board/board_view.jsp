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
		
		function goList(cPage, dbName, search, cateSelect, sText){
			var no = "";
			if(dbName == "data"){
				no = "2";
			}else if(dbName == "webzine"){
				no = "3";
			}
			if(search == null){
				location.href = "board" + no + "?cPage=" + cPage;
			}else{
				location.href = "board" + no + "?cPage=" + cPage + "&search=" + search 
				+ "&cateSelect=" + cateSelect + "&sText=" + sText;
			}
		}
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
        	<h2>BOARD</h2>
            <ul>
            	<li><a href="board">공지사항</a></li>
                <li><a href="board2">보도자료</a></li>
                <li><a href="board3">월비통신</a></li>
            </ul>
            <p><a href="#"><img src="../images/sub_banner1.gif" alt=""/></a></p>
        </article>
        <article id="contentWrap">
        	<p class="page_nav">HOME &gt; BOARD &gt; <strong>${str }</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>${str }<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
            
           	<div class="contentWrap">
            	
            	
                
                <!-- S: board -->
                    <div class="viewLayout">
					<table>
					<tr>
						<th>제목</th>
						<td colspan="3" class="subject">${result.getBbs_subject() }</td>
					</tr>
                    <tr>
						<th>등록일</th>
						<td>${result.getBbs_date().substring(0, 4)}-${result.getBbs_date().substring(4, 6)}-${result.getBbs_date().substring(6, 8)}</td>
						<th>작성자</th>
						<td>${result.getBbs_name() }</td>
					</tr>
					<c:if test="${gNo != 2 }">
                    <tr>
						<th>첨부파일</th>
						<td colspan="3"><img src="${contextPath }/images/index/board/icon_file.png" alt=""/> <a href="#">filename.png</a></td>
					</tr>
					</c:if>
					<tr>
						<td colspan="4" class="content">${result.getBbs_content() }</td>
					</tr>
				</table>
                
                <!-- S : Comment -->
                <div class="commentWrap">
            		<textarea>댓글을 입력해 주세요</textarea><button>댓글쓰기</button>
                </div>
                
                <div class="commentViewWrap">
                <!-- 
                	<div class="inner">
                    	<div>
                        	<p><strong>김민선</strong>2017-06-14  오후 7:03:59 </p>
               				내 눈에는 네가1등이다. 팬들 위해서 보여주자. 조금만 기다려주세요, <br/>
                        	모두 죽이는 앨범으로 보답하겠습니다”라는 글을 남겼다.<br/>
                        	독보적인 댄스 실력의 무엘이..
                        </div>
                    </div>
                    
                    <div class="inner">
                    	<div>
                        	<p><strong>김민선</strong>2017-06-14  오후 7:03:59 </p>
               				내 눈에는 네가1등이다. 팬들 위해서 보여주자. 조금만 기다려주세요, <br/>
                        	모두 죽이는 앨범으로 보답하겠습니다”라는 글을 남겼다.<br/>
                        	독보적인 댄스 실력의 무엘이..
                        </div>
                    </div>
                     -->
                    <c:forEach items="${cList }" var="comment">
	                    <div class="inner">
	                    	<div>
	                        	<p><strong>${comment.getComm_name() }</strong>${comment.getComm_date().substring(0, 4) }-${comment.getComm_date().substring(4, 6) }-${comment.getComm_date().substring(6, 8) } </p>
	               				${comment.getComm_content() }
	                        </div>
	                    </div>
                    </c:forEach>
                </div>
            	<!-- E : Comment -->
            <div class="boardbtn text_right">
            	<a href="#">수정</a>
                <a href="#">삭제</a>
                 <a href="#" class="gray" onclick="goList('${cPage}', '${dbName }', '${search }', '${cateSelect}', '${sText }')" return false;>목록</a>
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
        	<h1><img src="${contextPath }/images/foot_logo.gif" alt=""/></h1>
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
