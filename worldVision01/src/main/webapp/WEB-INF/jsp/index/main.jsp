<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<!-- header -->
	<%@include file="/WEB-INF/jsp/index/top.jsp" %>
	<!-- /header -->
<section  class="man_mainvisual">
 <div class="barame_slider" > <!-- Fullwidth Slider -->
			<ul class="bxslider">
                                <li class="slider_img2"><a href="/index/about_02.php" class="barame_hidden">2</a></li>
								<li class="slider_img3"><a href="/index/about_02.php" class="barame_hidden">3</a></li>	
                                <li class="slider_img4"><a href="/index/online/online_01.php?type=1" class="barame_hidden">4</a></li>	
                                <li class="slider_img5"><a href="http://wvchoir.or.kr/BlueAD/board.php?bbs_id=wv_gallery03&mode=view&bbs_no=1328&page=2&key=&keyword" class="barame_hidden">5</a></li>	
			</ul>
		</div>
		<!-- //Fullwidth slider -->
    </section>
    <section id="container">
   	  <article class="noticeWrap">
        		<div class="noticeBox">
                	<h3><img src="${contextPath}/images/main/title4.png" alt=""/></h3>
                    <ul>
                    	<li class="ellipsis"><a href="#">일정안내</a></li>
                    </ul>
                    
                    <a href="#" class="btn_up"><img src="${contextPath}/images/index/main/up.png"  alt=""/></a>
                    <a href="#" class="btn_down"><img src="${contextPath}/images/index/main/down.png"  alt=""/></a>
              </div>
              
              <div class="noticeBox">
                	<h3><img src="${contextPath}/images/index/main/title5.png" alt=""/></h3>
                    <ul>
                    	<li class="ellipsis"><a href="#">일정안내일정안내일정안내일정안내일정안내일정안내일정안내일정안내일정안내</a></li>
                    </ul>
                    
                    <a href="#" class="btn_up"><img src="${contextPath}/images/index/main/up.png"  alt=""/></a>
                    <a href="#" class="btn_down"><img src="${contextPath}/images/index/main/down.png"  alt=""/></a>
              </div>
      </article>
      <article class="mainWrap">
      	<!--좌측 -->
      	<div class="content_l">
        	<h3><img src="${contextPath}/images/index/main/title1.png" alt=""/></h3>
            <ul>
            	<li><a href="choir"><img src="${contextPath}/images/index/main/main_btn1.png" alt=""/></a></li>
                <li><a href="concert"><img src="${contextPath}/images/index/main/main_btn2.png" alt=""/></a></li>
                <li><a href="gallery"><img src="${contextPath}/images/index/main/main_btn3.png" alt=""/></a></li>
                <li><a href="request"><img src="${contextPath}/images/index/main/main_btn4.png" alt=""/></a></li>
                <li><a href="http://www.facebook.com/wvkcc" target="_blank"><img src="${contextPath}/images/index/main/main_btn5.png" alt=""/></a></li>
                <li><a href="http://www.youtube.com/user/wvchoir" target="_blank"><img src="${contextPath}/images/index/main/main_btn6.png" alt=""/></a></li>
            </ul>
        </div>
        <!--// 좌측 -->
        <!--중앙 -->
        <div class="content_c">
        	<div class="main_banner">
            	<h3><img src="${contextPath}/images/index/main/title2.png" alt=""/></h3>
                                    <ul class="slide_v2">
										<li><img src="${contextPath}/images/index/main/banner.png"  alt=""/></li>
										<li><img src="${contextPath}/images/index/main/banner.png"  alt=""/></li>
										<li><img src="${contextPath}/images/index/main/banner.png"  alt=""/></li>
									</ul>
                                    <div class="btn_pager">
                        				<a data-slide-index="0" href="#">01</a>
                        				<a data-slide-index="1" href="#">02</a>
                        				<a data-slide-index="2" href="#">03</a>
  									</div>
                                </div>
                                <script type="text/javascript">
                                            $('.slide_v2').bxSlider({
                                            mode: 'horizontal', //horizontal 가로방향, vertical 세로방향 , fade 흐려지는 효과 
                                    		auto: true, 
											controls: false,
											autoHover: true,   // 마우스 호버시 정지 여부
                                    		speed: 500, //슬라이드 넘어가는 속도, 기본값 500
                                    		pause: 4000, //슬라이드 멈춰있는 속도, 기본값 4000 
											pager: 'short',
											pagerCustom: '.btn_pager' ,
											
                                            });
								</script>
                                <!-- 갤러리게시판 -->
       	  <h3 class="mt30"><img src="${contextPath}/images/index/main/title3.png" alt=""/></h3>
            <ul>
            	<li><a href="#"><img src="${contextPath}/images/index/1.png" width="103" height="70" alt=""/><p>2018.04.33...</p></a></li>
                <li><a href="#"><img src="${contextPath}/images/index/1.png" width="103" height="70" alt=""/><p>2018.04.33...</p></a></li>
                <li><a href="#"><img src="${contextPath}/images/index/1.png" width="103" height="70" alt=""/><p>2018.04.33...</p></a></li>
            </ul>
            <!-- //갤러리게시판 -->
        </div>
        <!--// 중앙 -->
        <!-- 우측 -->
        <div class="content_r">
        	<p><a href="request"><img src="${contextPath}/images/index/main/main_btn7.png" alt=""/></a></p>
            <p><a href="request2"><img src="${contextPath}/images/index/main/main_btn9.png" alt=""/></a></p>
            <ul>
            	<li><a href="gallery4"><img src="${contextPath}/images/index/main/main_btn10.png" alt=""/></a></li>
                <li><a href="gallery2"><img src="${contextPath}/images/index/main/main_btn11.png" alt=""/></a></li>
                <li><a href="gallery"><img src="${contextPath}/images/index/main/main_btn12.png" alt=""/></a></li>
                <li><a href="board3"><img src="${contextPath}/images/index/main/main_btn13.png" alt=""/></a></li>
            </ul>
        </div>
        <!-- 우측 -->
      </article>
    </section>
    <!-- footer -->
	<%@include file="/WEB-INF/jsp/index/bottom.jsp" %>
    <!-- //footer -->
    
    
    <!-- quick menu 
    <script language="JavaScript" src="js/jquery-1.9.1.min.js"></script>
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

    <script language="JavaScript" src="js/rightquick.js"></script>
    //quick menu -->
</body>
</html>
