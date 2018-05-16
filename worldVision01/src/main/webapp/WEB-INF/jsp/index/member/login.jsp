<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
	<!-- header -->
	<%@include file="/WEB-INF/jsp/index/top.jsp" %>
	<!-- /header -->
	<script type="text/javascript">	
		function doLogin(){
			var form = $("#form");
			form.submit();
		}
		
	</script>
    		
    <section id="container">
    	<article id="lnbWrap">
        	<h2>MEMBER</h2>
           
            <p><a href="#"><img src="${contextPath }/images/index/sub_banner1.gif" alt=""/></a></p>
        </article>
        <article id="contentWrap">
        	<p class="page_nav">HOME &gt; MEMBER &gt; <strong>로그인</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/index/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>로그인<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
            
           	<div class="contentWrap">
            	<!-- LOGIN -->
           	  <div class="loginWrap">
           		<div class="loginbox">
           				<form method="post" id="form" action="doLogin">
                            	<label><img src="${contextPath }/images/index/member/login_id.gif" alt=""/></label>
                                <input type="text" name = "id">
                                <label><img src="${contextPath }/images/index/member/login_pw.gif"  alt=""/></label>
                                <input type="password" name = "pass">
                                
                                <input type="button" class="loginbtn" value="로그인" onclick="doLogin()">
                          </form>
               		  		</div>
                            
                            <p class="mt10"><img src="${contextPath }/images/index/member/login_mnt1.gif" alt=""/>
                            <a href="join"><img src="${contextPath }/images/index/member/btn_join.gif" alt=""/></a></p>
                            
                            <p class="mtb5"><img src="${contextPath }/images/index/member/login_mnt2.gif" alt=""/>
                            <a href="findId"><img src="${contextPath }/images/index/member/btn_find.gif" alt=""/></a></p>
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
