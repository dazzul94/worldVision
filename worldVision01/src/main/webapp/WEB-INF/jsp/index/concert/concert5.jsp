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
        	<p class="page_nav">HOME &gt; CONCERT &gt; <strong>해외연주</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/index/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>해외연주<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
            
           	<div class="contentWrap">
            	<p><img src="${contextPath }/images/index/concert_05_img1.jpg" alt=""/></p>
              <p class="mt30">1961년 제1차 해외연주를 시작으로 55회 이상의 해외연주를 통해 미국, 독일, 핀란드, 헝가리 등 전세계 55개국 75여개 도시에서 1,500회 이상 연주를 했다. 해외연주는 월드비전 합창단의 소리를 전 세계에 알리는 것 뿐 아니라 한국의 문화 예술을 알리는 문화 외교사절의 역할을 감당하고 있다.</p>
            	
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
