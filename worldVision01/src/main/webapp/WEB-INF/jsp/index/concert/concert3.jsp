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
        	<p class="page_nav">HOME &gt; CONCERT &gt; <strong>기획연주</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/index/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>기획연주<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
            
           	<div class="contentWrap">
            	<p><img src="${contextPath }/images/index/concert_03_img2.jpg" alt=""/></p>
              <p class="mt30">월드비전 합창단은 어린이와 청소년들의 문화 발전을 위한 다양한 기획연주를 통해 새로운 장르와 퍼포먼스를 시도하고, 합창 문화 발전에 기여하고 있다.</p>
            	<div class="floatL mt50" style="width:370px;">
           	    	<img src="${contextPath }/images/index/concert_03_img1.jpg" alt=""/> 
                </div>
                <div class="floatL mt50" style="width:360px;">
           	    	<ul>
                    	<li>- 신데렐라 - 세종문화회관 (1980)</li>
                    	<li>- 요정과 인형 - 예술의 전당 (1994)</li>
                    	<li>- Memoire-코엑스 오디토리움 (2005)</li>
                    	<li>- Image 樂 - 세종문화회관 (2007-2009)</li>
                    	<li>- Count your Blessings - 월드글로리아센터 (2007)</li>
                    	<li>- 사랑과 감사의 축제 - 세종문화회관 (2010)</li>
                    	<li>- Hymn Festival - 세종문화회관 (2011-2012)</li>
                    	<li>- 선명회어린이합창단을 만나다 - 세종문화회관 (2013)</li>
                    	<li>- 굿모닝 피니아스 - 영락교회 베다니홀, 동숭교회 (2013)</li>
                    	<li>- 세계합창심포지엄 개최 기념 음악회 - 고양아람누리 (2014)</li>
                    	<li>- Together - 예술의 전당 (2014)</li>
                    	<li>- 한중교류콘서트-과천시민회관 (2015)</li>
                    	<li>- Amazing Love - 예술의 전당 (2015)</li>
                    	<li>- Carols for Christmas-고양아람누리 (2016)</li>
                    	<li>- 월드비전 합창단 제56차 해외연주 기념음악회-예술의 전당 (2017)</li>
                    	<li>- 세계민요 합창 모험극 '바다와 피리' / 세종문화회관 (2017)</li>
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
