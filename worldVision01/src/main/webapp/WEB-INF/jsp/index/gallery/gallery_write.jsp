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
        	<p class="page_nav">HOME &gt; GALLERY &gt; <strong>${str }</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/index/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>${str }<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
            
           	<div class="contentWrap">
            	
            	
                <!-- S: board -->
                    <div class="writeLayout">
				<table>
					<tr>
						<th>제목</th>
						<td><input type="text" class="wid100" name=""></td>
						
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea class="textarea"> </textarea></td>
						
					</tr>
					<tr>
						<th>첨부파일</th>
						<td><input type="file" />
                          <p><img src="${contextPath }/images/index/board/icon_file.png"  alt=""/> 업로드 되어있던 파일.png <a href="#">[파일삭제]</a><br/>
                      jpg, gif, png, doc 최대 2MB</p></td>
						
					</tr>
				</table>
				<div class="boardbtn">
                	<a href="#">등록</a>
                	<a href="#" class="gray">취소</a>
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
