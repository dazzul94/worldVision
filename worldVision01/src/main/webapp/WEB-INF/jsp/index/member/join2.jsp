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
		function doJoin(){
			var form = document.getElementById("jForm");
			form.action = "doJoin";
			form.submit();
		}
		
	</script>
     
    <section id="container">
    	<article id="lnbWrap">
        	<h2>MEMBER</h2>
           
            <p><a href="#"><img src="${contextPath }/images/index/sub_banner1.gif" alt=""/></a></p>
        </article>
        <article id="contentWrap">
        	<p class="page_nav">HOME &gt; MEMBER &gt; <strong>회원가입</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/index/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>회원가입<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
            
           	<div class="contentWrap">
            	<!-- join -->
           	  <h3 class="wonh3">기본정보 입력</h3>
              
                <div class="writeLayout">
                <form id="jForm">
					<table>
					<tbody>
                    <tr>
						<th><strong class="orange_f">*</strong> 이름</th>
						<td>${name }<input type="hidden" value="${name }" name="member_name" /></td>
					</tr>
                    <tr>
						<th><strong class="orange_f">*</strong> 아이디</th>
						<td><input type="text" name="member_id"> <a href="#" class="sbtn">중복확인</a></td>
					</tr>
					<tr>
						<th><strong class="orange_f">*</strong> 닉네임</th>
						<td><input type="text" name="member_nick"> <a href="#" class="sbtn">중복확인</a></td>
					</tr>
                     <tr>
						<th><strong class="orange_f">*</strong> 비밀번호</th>
						<td><input type="text" name="member_pass"><span class="help_t">영문,숫자조합의 4~10자리(공백입력불가)</span></td>
					</tr>
                    <tr>
						<th><strong class="orange_f">*</strong> 비밀번호 확인</th>
						<td><input type="text"></td>
					</tr>
					 <tr>
						<th><strong class="orange_f">*</strong> 주민등록번호</th>
						<td><input type="text" name="member_reg_no1"> - <input type="password" name="member_reg_no2"></td>
					</tr>
                    <tr>
						<th><strong class="orange_f">*</strong> 생년월일</th>
						<td><input type="text" name="member_birth1"> <input type="radio" name="member_birth2" value="양력">양력 <input type="radio" class="ml5" name="member_birth2" value="음력"> 음력</td>
					</tr>
                    <tr>
						<th><strong class="orange_f">*</strong> 이메일</th>
						<td><input type="text" name="member_email"></td>
					</tr>
                    <tr>
						<th>주소</th>
						<td><input type="text" class="zip" name="member_zip1"> - <input type="text" class="zip" name="member_zip2"> <a href="#" class="sbtn">우편번호</a><br>
                        <input type="text" class="wid100 mt3" name="member_address1"><br>
                        <input type="text" class="wid100 mt3" name="member_address2"></td>
					</tr>
                    <tr>
						<th>일반전화</th>
						<td><input type="text"  class="tel" name="member_htel1"> - <input type="text" class="tel" name="member_htel2"> - <input type="text"  class="tel" name="member_htel3"></td>
					</tr>
                    <tr>
						<th>휴대전화</th>
						<td><input type="text" class="tel" name="member_tel1"> - <input type="text" class="tel" name="member_tel2"> - <input type="text"  class="tel" name="member_tel3"></td>
					</tr>
                    <tr>
						<th>합창단과의 관계</th>
						<td><input type="radio">후원자 <input type="radio" class="ml5"> 합창단 교사/직원 <input type="radio" class="ml5">단원/자모 <input type="radio" class="ml5"> 동문 <input type="radio" class="ml5"> 기타</td>
					</tr>
					
				</tbody></table>
                
              </form>
            
            
			</div>
                
                <div class="clear boardbtn mt50 text_center">
            		<a href="#" onclick="doJoin()" return false;>가입하기</a>
                    <a href="login" class="gray">취소</a>
            	</div>
                <!-- join -->
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