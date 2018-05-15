<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<!-- header -->
	<%@include file="/WEB-INF/jsp/index/top.jsp" %>
	<!-- /header -->
    	<script type="text/javascript">		
		function prevPage(cPage, search, cateSelect, sText){
			if(search == null){
				if(cPage != 1){
					cPage--;
					location.href = "board2?cPage=" + cPage;
				}else{
					alert("이전 페이지가 없습니다.");
				}	
			}else{
				if(cPage != 1){
					cPage--;
					location.href = "board2?cPage=" + cPage + "&search=" + search 
							+ "&cateSelect=" + cateSelect + "&sText=" + sText;
				}else{
					alert("이전 페이지가 없습니다.");
				}
			}
			
		}
		
		function nextPage(cPage, maxPage, search, cateSelect, sText){
			if(search == null){
				if(cPage != maxPage){
					cPage++;
					location.href = "board2?cPage=" + cPage;
				}else{
					alert("다음 페이지가 없습니다.");
				}	
			}else{
				if(cPage != maxPage){
					cPage++;
					location.href = "board2?cPage=" + cPage + "&search=" + search 
					+ "&cateSelect=" + cateSelect + "&sText=" + sText;
				}else{
					alert("다음 페이지가 없습니다.");
				}
			}
			
		}
		
		function goView(bbs_no, cPage, search, cateSelect, sText){
			if(search == null){
				location.href = "boardView?no=" + bbs_no + "&cPage=" + cPage+ "&str=보도자료&dbName=data";
			}else{
				location.href = "boardView?no=" + bbs_no + "&cPage=" + cPage 
						+ "&str=보도자료&dbName=data&search=" + search 
						+ "&cateSelect=" + cateSelect + "&sText=" + sText;
			}
		}
		
		function goSearch(){
			var value = $("#serText").val();
			var select = $("#serSelect option:selected").val();
			var num = "";
			if(select == "제목"){
				num = "1"
			}else if(select == "내용"){
				num = "2";
			}else{
				num = "3";
			}
			location.href = "board2?search=1&cateSelect=" + num + "&sText=" + value;
		}
		function logout(id){
			alert(id+"님이 로그아웃 하셨습니다.");
			location.href = "logout";
		}
		
	</script>
    <section id="container">
    	<article id="lnbWrap">
        	<h2>BOARD</h2>
            <ul>
            	<li><a href="board">공지사항</a></li>
                <li><a href="board2">보도자료</a></li>
                <li><a href="board3">월비통신</a></li>
            </ul>
            <p><a href="#"><img src="${contextPath }/images/index/sub_banner1.gif" alt=""/></a></p>
        </article>
        <article id="contentWrap">
        	<p class="page_nav">HOME &gt; BOARD &gt; <strong>보도자료</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/index/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>보도자료<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
            
           	<div class="contentWrap">
            	
            	
                <!-- S: board -->
                    <div class="listLayout">
                    	
                        
                   	  <div class="listTop">
                    		<p>총 <span>${bCount }</span> 건</p>
                    		<div class="searchWrap">
                    			<select id="serSelect">
                    			  <option>제목</option>
                    			  <option>내용</option>
                    			  <option>제목 + 내용</option>
                    			</select><input type="text" id="serText"><button onclick = "goSearch()">검색</button>
                    		</div>
                        </div>
				<table>
					<tr>
                    	<th>번호</th>
						<th>곡명</th>
                        <th>작성자</th>
                        <th>등록일</th>
                        <th>조회</th>
					</tr>
					<!--  
					<tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a> <img src="${contextPath }/images/index/board/ico_new.gif" class="ml5" alt=""/></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
					<tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
					<tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
                    <tr>
                    	<td>1</td>
                        <td class="subject"><a href="#">내 주 되신 주를 참 사랑하고 - 이현철</a></td>
                        <td>관리자</td>
                        <td>2010-05-08</td>
                        <td>335</td>
					</tr>
					-->
					<c:forEach items="${bList }" var="board">
						<tr>
                    	<td>${board.getBbs_no() }</td>
                        <td class="subject"><a href="#" onclick="goView('${board.getBbs_no()}', '${cPage }', '${search }', '${cateSelect}', '${sText }')" return false;>${board.getBbs_subject() }</a></td>
                        <td>${board.getBbs_name() }</td>
                        <td>${board.getBbs_date().substring(0, 4) }-${board.getBbs_date().substring(4, 6) }-${board.getBbs_date().substring(6, 8) }</td>
                        <td>${board.getBbs_hit() }</td>
					</tr>
					</c:forEach>
					
				</table>
                
                <c:choose>
                	<c:when test="${search == null }">	
					<div class="pagerWrap">
                		<c:choose>
                		<c:when test="${startPage != 1 }">
							<a href="board2?cPage=${startPage - 10 }"><img src="${contextPath }/images/index/board/frontArr.png" alt="맨앞으로" /></a>
						</c:when>
						<c:otherwise>
							<img src="${contextPath }/images/index/board/frontArr.png" alt="맨앞으로" />
						</c:otherwise>
						</c:choose>

						<a href="#" onclick="prevPage('${cPage}')" return false;><img src="${contextPath }/images/index/board/prevArr.png" alt="앞으로" /></a>
						<!--  
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
						-->
						<c:forEach begin="${startPage }" end="${endPage }" step="1" var="i">
							<c:choose>
								<c:when test="${cPage == i }">
									<a href="board2?cPage=${i }" class="on">${i }</a>
								</c:when>
								<c:otherwise>
									<a href="board2?cPage=${i }">${i }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<a href="#" onclick="nextPage('${cPage}', '${maxPage }')" return false;><img src="${contextPath }/images/index/board/nextArr.png" alt="뒤로" /></a>
						
						<c:choose>
                		<c:when test="${startPage+10 < maxPage }">
							<a href="board2?cPage=${startPage + 10}"><img src="${contextPath }/images/index/board/backArr.png" alt="맨뒤로" /></a>	
						</c:when>
						<c:otherwise>
							<img src="${contextPath }/images/index/board/backArr.png" alt="맨뒤로" />
						</c:otherwise>
						</c:choose>			
            		</div>
                	</c:when>
            		<c:otherwise>
            		<div class="pagerWrap">
            			<c:choose>
                		<c:when test="${startPage != 1 }">
							<a href="board2?cPage=${startPage - 10 }&search=${search }&cateSelect=${cateSelect}&sText=${sText}"><img src="${contextPath }/images/index/board/frontArr.png" alt="맨앞으로" /></a>
						</c:when>
						<c:otherwise>
							<img src="${contextPath }/images/index/board/frontArr.png" alt="맨앞으로" />
						</c:otherwise>
						</c:choose>
						<a href="#" onclick="prevPage('${cPage}', '${search }', '${cateSelect}', '${sText }')" return false;><img src="${contextPath }/images/index/board/prevArr.png" alt="앞으로" /></a>

						<c:forEach begin="${startPage }" end="${endPage }" step="1" var="i">
							<c:choose>
								<c:when test="${cPage == i }">
									<a href="board2?cPage=${i }&search=${search }&cateSelect=${cateSelect}&sText=${sText}" class="on">${i }</a>
								</c:when>
								<c:otherwise>
									<a href="board2?cPage=${i }&search=${search }&cateSelect=${cateSelect}&sText=${sText}">${i }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<a href="#" onclick="nextPage('${cPage}', '${maxPage }', '${search }', '${cateSelect}', '${sText }')" return false;><img src="${contextPath }/images/index/board/nextArr.png" alt="뒤로" /></a>
						
						<c:choose>
                		<c:when test="${startPage+10 < maxPage }">
							<a href="board2?cPage=${startPage + 10}&search=${search }&cateSelect=${cateSelect}&sText=${sText}"><img src="${contextPath }/images/index/board/backArr.png" alt="맨뒤로" /></a>	
						</c:when>
						<c:otherwise>
							<img src="${contextPath }/images/index/board/backArr.png" alt="맨뒤로" />
						</c:otherwise>
						</c:choose>				
            		</div>
            		</c:otherwise>
            		</c:choose>
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
