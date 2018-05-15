<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<!-- header -->
	<%@include file="/WEB-INF/jsp/index/top.jsp" %>
	<!-- /header -->
    	<script type="text/javascript">
		function goList(cPage, dbName, search, cateSelect, sText){
			var no = "";
			if(dbName == "gallery04"){
				no = "3";
			}else if(dbName == "gallery02"){
				no = "2";
			}
			if(search == null){
				location.href = "gallery" + no + "?cPage=" + cPage;
			}else{
				location.href = "gallery" + no + "?cPage=" + cPage + "&search=" + search 
				+ "&cateSelect=" + cateSelect + "&sText=" + sText;
			}
		}
		
		function writeComment(cPage, dbName, search, cateSelect, sText, str, no){
			var content = $("#commentT").val();
			location.href = "writeComment?cPage=" + cPage + "&search=" + search 
			+ "&cateSelect=" + cateSelect + "&sText=" + sText + "&dbName=" + dbName + "&str=" + str + "&no=" + no + "&comm_content=" + content;
		}
		
		function startComment(){
			$("#commentT").val("");
			$("#commentT").attr('onclick', '').unbind('click');
		}
	</script>
    
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
                    <div class="viewLayout">
					<table>
					<tr>
						<th>제목</th>
						<td colspan="3" class="subject">${result.getBbs_subject() }</td>
					</tr>
                    <tr>
						<th>등록일</th>
						<td>${result.getBbs_date().substring(0, 4)}-${result.getBbs_date().substring(4, 6)}-${result.getBbs_date().substring(6, 8)}</td>
						<th>작성자</th>
						<td>${result.getBbs_name() }</td>
					</tr>
					<c:if test="${gNo != 2 }">
                    <tr>
						<th>첨부파일</th>
						<td colspan="3"><img src="${contextPath }/images/index/board/icon_file.png" alt=""/> <a href="#">filename.png</a></td>
					</tr>
					</c:if>
					<tr>
						<td colspan="4" class="content">${result.getBbs_content() }</td>
					</tr>
				</table>
                
                <!-- S : Comment -->
                <div class="commentWrap">
            		<textarea id="commentT" onclick="startComment()">댓글을 입력해 주세요</textarea><button onclick="writeComment('${cPage}', '${dbName }', '${search }', '${cateSelect}', '${sText }', '${str }', '${no }')">댓글쓰기</button>
                </div>
                
                <div class="commentViewWrap">
 				<!--  
                	<div class="inner">
                    	<div>
                        	<p><strong>김민선</strong>2017-06-14  오후 7:03:59 </p>
               				내 눈에는 네가1등이다. 팬들 위해서 보여주자. 조금만 기다려주세요, <br/>
                        	모두 죽이는 앨범으로 보답하겠습니다”라는 글을 남겼다.<br/>
                        	독보적인 댄스 실력의 무엘이..
                        </div>
                    </div>
                    
                    <div class="inner">
                    	<div>
                        	<p><strong>김민선</strong>2017-06-14  오후 7:03:59 </p>
               				내 눈에는 네가1등이다. 팬들 위해서 보여주자. 조금만 기다려주세요, <br/>
                        	모두 죽이는 앨범으로 보답하겠습니다”라는 글을 남겼다.<br/>
                        	독보적인 댄스 실력의 무엘이..
                        </div>
                    </div>
 					-->
                    <c:forEach items="${cList }" var="comment">
	                    <div class="inner">
	                    	<div>
	                        	<p><strong>${comment.getComm_name() }</strong>${comment.getComm_date().substring(0, 4) }-${comment.getComm_date().substring(4, 6) }-${comment.getComm_date().substring(6, 8) } </p>
	               				${comment.getComm_content() }
	                        </div>
	                    </div>
                    </c:forEach>
                </div>
            	<!-- E : Comment -->
            <div class="boardbtn text_right">
            	<a href="#">수정</a>
                <a href="#">삭제</a>
                <a href="#" class="gray" onclick="goList('${cPage}', '${dbName }', '${search }', '${cateSelect}', '${sText }')" return false;>목록</a>
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
