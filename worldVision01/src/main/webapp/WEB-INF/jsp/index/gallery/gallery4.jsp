<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<!-- header -->
	<%@include file="/WEB-INF/jsp/index/top.jsp" %>
	<!-- /header -->
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
	<%@include file="/WEB-INF/jsp/index/bottom.jsp" %>
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
