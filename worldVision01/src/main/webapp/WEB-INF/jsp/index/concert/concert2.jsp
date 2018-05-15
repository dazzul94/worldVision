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
        	<p class="page_nav">HOME &gt; CONCERT &gt; <strong>초청연주</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/index/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>초청연주<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
            
           	<div class="contentWrap">
            	<p><img src="${contextPath }/images/index/concert_06_img1.jpg" alt=""/></p>
              <p class="mt30">국제회의. 정부 및 기엄 등의 행사에 초청되어 다양한 레퍼토리로 아름다운 합창의 소리와 퍼포먼스로 관객에게 감동을 선사하며 초청 기관의 성공적인 행사를 지원한다.</p>
            	<div class="floatL mt50" style="width:370px;">
           	    	<img src="${contextPath }/images/index/concert_06_img2.jpg" alt=""/> 
                </div>
                <div class="floatL mt50" style="width:360px;">
           	    	<ul>
                    	<li>- 사울 I.P.U 총회 연주</li>
                    	<li>- 카터 미 미 대통령 방한시 연주</li>
                    	<li>- 제15차 ANwOC 국제회의 연주</li>
                    	<li>- 국제 총장회의 연주</li>
                    	<li>- 2006 Digital Opportunity Forum 연주</li>
                    	<li>- 한미연합사 초청연주</li>
                    	<li>- 제5회 제천국제음악영화제 초청연주</li>
                    	<li>- 2010~2013 정명훈 서울시향의 어린이날 음악선물</li>
                    	<li>- 하이서울페스티벌</li>
                    	<li>- G20 세르파 회의 축하공연</li>
                    	<li>- 한일수교 50주년 기념식</li>
                    </ul>
                </div>
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
