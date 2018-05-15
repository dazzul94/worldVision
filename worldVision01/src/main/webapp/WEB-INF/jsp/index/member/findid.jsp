<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
	<!-- header -->
	<%@include file="/WEB-INF/jsp/index/top.jsp" %>
	<!-- /header -->
    
    <section id="container">
    	<article id="lnbWrap">
        	<h2>MEMBER</h2>
           
            <p><a href="#"><img src="${contextPath }/images/index/sub_banner1.gif" alt=""/></a></p>
        </article>
        <article id="contentWrap">
        	<p class="page_nav">HOME &gt; MEMBER &gt; <strong>아이디/비번찾기</strong></p>
            <div class="sub_visual"><img src="../images/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>아이디/비번찾기<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
            
           	<div class="contentWrap">
            	<!-- LOGIN -->
           	  <div class="idSearchWrap">
           		<div class="idbox">
                            	<label><img src="${contextPath }/images/index/member/find_name.gif" alt=""/></label>
                                <input type="text"> <span>실명으로 공백없이 정확히 입력해주세요.</span><br/>
                                <label><img src="${contextPath }/images/index/member/find_email.gif" alt=""/></label>
                                <input type="text"> <span>가입시 입력하신 사항을 정확히 입력해주세요.</span>
                                
                                <input type="button" class="okbtn" value="아이디 찾기">
               		  		</div>
                            
                            
              </div>
              
              <div class="pwSearchWrap">
           		<div class="idbox">
                            	<label><img src="${contextPath }/images/index/member/find_name.gif" alt=""/></label>
                                <input type="text"> 
                                <span>실명으로 공백없이 정확히 입력해주세요.</span><br/>
                                <label><img src="${contextPath }/images/index/member/find_id.gif"  alt=""/></label>
                                <input type="text"> 
                                <span>가입된 아이디를 정확히 입력해주세요.</span><br/>
                                <label><img src="${contextPath }/images/index/member/find_email.gif" alt=""/></label>
                                <input type="text">  <a href="#" class="btn_normal">인증번호받기</a><br/>
                                <label><img src="${contextPath }/images/index/member/find_email2.gif" alt=""/></label>
                                <input type="text"> <span>가입시 입력하신 사항을 정확히 입력해주세요.</span>
                                
                                <input type="button" class="okbtn" value="비밀번호 찾기">
   		  		</div>
                            
                            
              </div>
                <!-- LOGIN -->
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
