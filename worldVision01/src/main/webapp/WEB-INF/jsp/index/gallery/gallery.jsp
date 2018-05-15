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
        	<p class="page_nav">HOME &gt; GALLERY &gt; <strong>사진갤러리</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/index/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>사진갤러리<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
            
           	<div class="contentWrap">
            	
            	
                 <!-- S: board -->
                 
                    	
                     
                		<!-- gallery -->
                        <div class="galleryWrap">
                    
                    <ul>
                    	<li>
                        	<a href="#">
                           		<img src="${contextPath }/images/index/1.png" alt=""> 
                                <p>2018. 04. 05. 부활절 음악예...</p>
                            </a>
                        </li>
                        <li>
                        	<a href="#">
                           		<img src="${contextPath }/images/index/1.png" alt=""> 
                                <p>2018. 04. 05. 부활절 음악예...</p>
                            </a>
                        </li>
                        <li>
                        	<a href="#">
                           		<img src="${contextPath }/images/index/1.png" alt=""> 
                                <p>2018. 04. 05. 부활절 음악예...</p>
                            </a>
                        </li>
                        <li>
                        	<a href="#">
                           		<img src="${contextPath }/images/index/1.png" alt=""> 
                                <p>2018. 04. 05. 부활절 음악예...</p>
                            </a>
                        </li>
                        <li>
                        	<a href="#">
                           		<img src="${contextPath }/images/index/1.png" alt=""> 
                                <p>2018. 04. 05. 부활절 음악예...</p>
                            </a>
                        </li>
                        <li>
                        	<a href="#">
                           		<img src="${contextPath }/images/index/1.png" alt=""> 
                                <p>2018. 04. 05. 부활절 음악예...</p>
                            </a>
                        </li>
                        <li>
                        	<a href="#">
                           		<img src="${contextPath }/images/index/1.png" alt=""> 
                                <p>2018. 04. 05. 부활절 음악예...</p>
                            </a>
                        </li>
                        <li>
                        	<a href="#">
                           		<img src="${contextPath }/images/index/1.png" alt=""> 
                                <p>2018. 04. 05. 부활절 음악예...</p>
                            </a>
                        </li>
                        <li>
                        	<a href="#">
                           		<img src="${contextPath }/images/index/1.png" alt=""> 
                                <p>2018. 04. 05. 부활절 음악예...</p>
                            </a>
                        </li>
                        <li>
                        	<a href="#">
                           		<img src="${contextPath }/images/index/1.png" alt=""> 
                                <p>2018. 04. 05. 부활절 음악예...</p>
                            </a>
                        </li>
                        <li>
                        	<a href="#">
                           		<img src="${contextPath }/images/index/1.png" alt=""> 
                                <p>2018. 04. 05. 부활절 음악예...</p>
                            </a>
                        </li>
                        <li>
                        	<a href="#">
                           		<img src="${contextPath }/images/index/1.png" alt=""> 
                                <p>2018. 04. 05. 부활절 음악예...</p>
                            </a>
                        </li>
                    </ul>
                    </div>
                        <!-- gallery -->
               
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