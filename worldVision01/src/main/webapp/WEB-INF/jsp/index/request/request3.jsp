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
        	<h2>REQUEST</h2>
            <ul>
            	<li><a href="request">입단신청</a></li>
                <li><a href="request2">합창단 후원신청</a></li>
                <li><a href="request3">음반·악보 구입신청</a></li>
                <li><a href="request4">각종증명서신청</a></li>
            </ul>
            <p><a href="#"><img src="${contextPath }/images/index/sub_banner1.gif" alt=""/></a></p>
        </article>
        <article id="contentWrap">
        	<p class="page_nav">HOME &gt; REQUEST &gt; <strong>음반·악보 구입신청</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/index/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>음반·악보 구입신청<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
            
           	<div class="contentWrap">
            	<h3><img src="${contextPath }/images/index/online_title.gif"  alt=""/></h3>        	  
                
                <!-- S: board -->
                 
                    	<div class="writeLayout mt30">
                        
                       
                
                <table>
					<tbody>
                    <tr>
						<th>이름</th>
						<td><input type="text"></td>
					</tr>
                    <tr>
						<th>일반전화</th>
						<td><input type="text" class="tel"> - <input type="text" class="tel"> - <input type="text"  class="tel"></td>
					</tr>
                    <tr>
						<th>휴대전화</th>
						<td><input type="text" class="tel"> - <input type="text" class="tel"> - <input type="text"  class="tel"></td>
					</tr>
                    <tr>
						<th>이메일</th>
						<td><input type="text" > @ <input type="text" > <select>
						  <option>직접입력</option>
						</select></td>
					</tr>
                    <tr>
						<th>주소</th>
						<td><input type="text"  class="zip"> - <input type="text"  class="zip"> <a href="#" class="sbtn">우편번호</a><br/>
                        <input type="text" class="wid100 mt3"><br/>
                        <input type="text" class="wid100 mt3"></td>
					</tr>
                    
                    <tr>
						<th>구입음반선택</th>
					  <td><select name="tpe3_opt1[]" size="1" class="b_textarea" onchange="PayOK();">
				<option value="" selected="selected">선택</option>
        		<option>소원 (10,000원)</option>
				<option>Together (10,000원)</option>
				<option>Blessings (10,000원)</option>
				<option>산유화 (10,000원)</option>
				<option>Psalms_시편 (10,000원)</option>
				<option>나 주를 찬양하리라 (10,000원)</option>
				<option>Amazing Love_50주년 기념음반 (10,000원)</option>
				<option>A Voice for the Voiceless (10,000원)</option>
				<option>크리스마스 캐롤 및 성가 The Joyful Morning (10,000원)</option>
				<option>고향의 봄.가곡.동요.민요 (10,000원)</option>
				<option>Europe Concert_유럽콘서트 (10,000원)</option>
				<option>World Folk Song Festival (10,000원)</option>
				<option>사랑과 감사의 축제_50주년기념연주실황 DVD (15,000원)</option>
				<option>2000년 세계어린이합창제2CD (10,000원)</option>
				<option>2004년 세계어린이합창제2CD (10,000원)</option>
       			<option>2013 세계어린이합창제 DVD  (20,000원 -&gt; 14,000원) -  1달간 30%할인기간입니다. </option>
        
			</select> <a href="#"><img src="${contextPath }/images/index/btn_plus.png" class="ml5" alt=""/></a><a href="#"><img src="../images/btn_minus.png" class="ml5" alt=""/></a></td>
					</tr>
                     <tr>
						<th>구입악보</th>
					  <td><select name="tpe3_opt2[]" class="b_textarea" onchange="PayOK();">
				<option value="" selected="selected">선택</option>
				<option>Blessings (10,000원)</option>
				<option>Together (12,000원)</option>
				<option>크리스마스 캐롤 및 성가집 The Joyful Morning (15,000원)</option>
			</select> <a href="#"><img src="${contextPath }/images/index/btn_plus.png" class="ml5" alt=""/></a><a href="#"><img src="../images/btn_minus.png" class="ml5" alt=""/></a></td>
					</tr>
                    
                   <tr>
						<th>비고</th>
						<td><textarea class="textarea"> </textarea></td>
						
					</tr>
					<tr>
						<th>입금금액</th>
						<td><input type="text">원 (배송료 2,500원은 별도입니다.)</td>
					</tr>
                    <tr>
						<th>입금계좌</th>
						<td>국민은행 444437-94-100073 (예금주:사회복지법인월드비전음악원)<br/>
- 신청자와 입금자명이 다를 경우 연락주세요.<br/>
- 입금확인후 2-3일내로 배송이 됩니다.</td>
					</tr>
				</tbody></table>
                
                <div class="dot_line"></div>
                <h3><img src="${contextPath }/images/index/online_title1.gif" alt=""/></h3>    
                <div style="width:100%;height:140px;overflow-x:hidden;overflow-y:scroll;border:1px solid #D4D0C8 ;">
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
			<tbody><tr>
				<td valign="top"><p>'월드비전 합창단' 은 (이하 '회사'는) 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한 법률을 준수하고 있습니다.<br>회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.</p>
<p>회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.</p>
<p>&nbsp;○ 본 방침은 : 2012 년 03 월 15 일 부터 시행됩니다. </p>
<p>&nbsp;</p>
<p><strong>수집하는 개인정보의 항목<br></strong>회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.</p>
<p>ο 수집항목 : 이름 , 생년월일 , 성별 , 휴대전화번호 , 이메일 , 서비스 이용기록 , 접속 로그 , 쿠키 , 접속 IP 정보 , 결제기록<br>ο 개인정보 수집방법 : 홈페이지(회원가입) </p>
<p>&nbsp;</p>
<p><strong>개인정보의 수집 및 이용목적</strong></p>
<p>회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.</p>
<p>ο 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산<br>콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융 서비스 , 요금추심<br>ο 회원 관리<br>회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 가입 의사 확인 , 연령확인 , 불만처리 등 민원처리 , 고지사항 전달 </p>
<p>개인정보의 보유 및 이용기간<br>원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.</p>
<p>보존 항목 : 이름 , 생년월일 , 성별 , 결제기록<br>보존 근거 : 신용정보의 이용 및 보호에 관한 법률<br>보존 기간 : 5년</p>
<p>보존 항목 : 휴대전화번호 , 이메일 , 서비스 이용기록 , 접속 로그 , 쿠키<br>보존 근거 : 전자상거래등에서의 소비자보호에 관한 법률<br>보존 기간 : 5년</p>
<p>대금결제 및 재화 등의 공급에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)<br>소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래등에서의 소비자보호에 관한 법률)<br>신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년 (신용정보의 이용 및 보호에 관한 법률) </p>
<p>&nbsp;</p>
<p><strong>개인정보의 파기 절차 및 방법</strong><br>회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.</p>
<p>ο 파기절차<br>회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다. 별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다. </p>
<p>ο 파기방법 <br>- 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. </p>
<p>&nbsp;</p>
<p><strong>개인정보 제공</strong><br>회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.<br>- 이용자들이 사전에 동의한 경우<br>- 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우</p>
<p>&nbsp;</p>
<p><strong>수집한 개인정보의 위탁<br></strong>회사는 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다. 향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다. </p>
<p>이용자 및 법정대리인의 권리와 그 행사방법<br>이용자 및 법정 대리인은 언제든지 등록되어 있는 자신 혹은 당해 만 14세 미만 아동의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니 다. <br>이용자 혹은 만 14세 미만 아동의 개인정보 조회/수정을 위해서는 ‘개인정보변 경’(또는 ‘회원정보수정’ 등)을 가입해지(동의철회)를 위해서는 “회원탈퇴”를 클릭 하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다. 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이 조 치하겠습니다. <br>귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까 지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자 에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다. <br>회사는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 “회사 가 수집하는 개인정보의 보유 및 이용기간”에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다. </p>
<p>&nbsp;</p>
<p><strong>개인정보 자동수집 장치의 설치,운영 및 그 거부에 관한 사항</strong><br>쿠키 등 인터넷 서비스 이용 시 자동 생성되는 개인정보를 수집하는 장치를 운영하지 않습니다.<br></p>
<p><br><strong>개인정보에 관한 민원서비스</strong></p>
<p>회사는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.</p>
<p>고객서비스담당 부서 : </p>
<p>담당자 : <br>전화번호 : </p>
<p>이메일 : </p>
<p>귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다. 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다</p>
<p>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</p>
<p><br>1.개인분쟁조정위원회 (<a href="'&quot;http://www.1336.or.kr/1336&quot;'">www.1336.or.kr/1336</a>)<br>2.정보보호마크인증위원회 (<a href="'&quot;http://www.eprivacy.or.kr/02-580-0533~4&quot;'">www.eprivacy.or.kr/02-580-0533~4</a>)<br>3.대검찰청 인터넷범죄수사센터 (<a href="'&quot;http://icic.sppo.go.kr/02-3480-3600&quot;'">http://icic.sppo.go.kr/02-3480-3600</a>)<br>4.경찰청 사이버테러대응센터 (<a href="'&quot;http://www.ctrc.go.kr/02-392-0330&quot;'">www.ctrc.go.kr/02-392-0330</a>)<br></p></td>
			</tr>
		</tbody></table>
		</div>
        
        <p class="text_center mt20">개인정보취급방침에 동의합니다. <input type="checkbox"></p>
        
            
				<div class="boardbtn">
                	<a href="#">보내기</a>
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
