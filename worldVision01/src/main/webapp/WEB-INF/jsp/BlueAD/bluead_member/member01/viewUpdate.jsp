<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html>
<head>
<title></title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script charset="UTF-8" type="text/javascript" src="http://t1.daumcdn.net/cssjs/postcode/1522037570977/180326.js"></script>

<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/div.css?ver=1">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/style.css?ver=1">
<link rel="stylesheet" media="screen" href="${contextPath}/css/BlueAD/lightbox/lightbox.css" type="text/css">
<script src='${contextPath}/node_modules/jquery/dist/jquery.slim.min.js'></script>

</head>

<body>
<div id="header">
<jsp:include page="../../top.jsp"/>
</div>
<div id="navigation">
<jsp:include page="../member_left.jsp"/>
</div>
<div id="content">
 <form action='update2' method='post'>
  <c:if test="${not empty bluead_member}">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif" align="absmiddle"> 회원관리</td>
  </tr>
  <tr>
    <td height="4" background="${contextPath}/images/BlueAD/admin/title_dot_line.gif"></td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</tbody></table>
<!-- view -->

<table width="100%" align="center" bgcolor="#cad4e3" border="0" cellspacing="1" cellpadding="0">
  <tbody> 
     <tr>
    <td style="padding-left: 10px;" bgcolor="#ffffff"> <input type="hidden" name="no" value="${bluead_member.no}"></td>
  </tr>
  
    <tr>
    <td width="100" height="35" class="field_b_pad">이름</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>${bluead_member.member_name}</b></td>
  </tr>
    <tr>
    <td width="100" height="35" class="field_b_pad">아이디</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>${bluead_member.member_id}</b></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">비밀번호</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff">  <input type="hidden" name="member_pass" value="${bluead_member.member_pass}">
                                <input type="text" name="member_pass" value="${bluead_member.member_pass}"></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">주민번호</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>-xxxxxxx</b></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">생년월일</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff">
                                <input type="text" name="member_birth1" readonly="readonly"value="${bluead_member.member_birth1}"> 
                                <!-- radio -->
                                 <input type="radio" name="member_birth2"  value="양력">
                              양력 
                              <input type="radio" name="member_birth2" value="음력">
                              음력 </td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">전화번호</td>
    <td  style="padding-left: 10px;"  bgcolor="#ffffff">
                                <input type="text"size="10" name="member_tel1" value="${bluead_member.member_tel1}">-
                                <input type="text"size="10" name="member_tel2" value="${bluead_member.member_tel2}">-
                                <input type="text" size="10"name="member_tel3" value="${bluead_member.member_tel3}"></td>
                               
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">휴대전화</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff">
                                <input type="text" size="10" name="member_htel1" value="${bluead_member.member_htel1}">-
                                <input type="text" size="10" name="member_htel2" value="${bluead_member.member_htel2}">-
                                <input type="text"size="10"  name="member_htel3" value="${bluead_member.member_htel3}"></td>
  </tr>

     <%--  <tr>
    <td width="150" height="75" class="field_b_pad">주소</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"> 
     							<input type="text"size="10" name="member_zip1" value="${bluead_member.member_zip1}">-<input type="text"size="10" name="member_zip2" value="${bluead_member.member_zip2}"><br>
                                <input type="text"size="50" name="member_address1" value="${bluead_member.member_address1}"><br>
                                <input type="text" size="50"name="member_address2" value="${bluead_member.member_address2}">
                               </td>
  </tr> --%>
  <tr>
  <td width="150" height="75" class="field_b_pad">주소</td>
   <td style="padding-left: 10px;" bgcolor="#ffffff">
  <input type="text" name="member_zip1" id="sample4_postcode" placeholder="우편번호" value="${bluead_member.member_zip1}">-  
  <input type="text" name="member_zip2" id="sample4_postcode2" placeholder="우편번호" value="${bluead_member.member_zip2}">
<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
<input type="text" size="50" name="member_address1" id="sample4_roadAddress" placeholder="도로명주소" value="${bluead_member.member_address1}">
<input type="text"size="50" name="member_address2" id="sample4_jibunAddress" placeholder="지번주소" value="${bluead_member.member_address2}">
<span id="guide" style="color:#999"></span>
 </td>
 </tr>
 


  
  <tr>
    <td width="100" height="35" class="field_b_pad">이메일</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"> 
                                <input type="text" size="30" name="member_email" value="${bluead_member.member_email}"></td>
  </tr>
</tbody></table>
<c:set var="member_birth2" value="${bluead_member.member_birth2}"/>
</c:if>
<!-- view -->

<!-- 목록,확인 -->
<table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr height="40">
    <td height="50" align="center" valign="bottom">
      <input align="absmiddle" onclick="window.location='list'" type="image" src="${contextPath}/images/BlueAD/admin/btn_list.gif">
           <input align="absmiddle" onclick="window.location='list'" onfocus="this.blur();" type="image" src="${contextPath}/images/BlueAD/admin/btn_ok.gif">  
    </td>
  </tr>
</tbody></table>
</form>
<!-- 목록, 확인 -->
</div>
</body>
<script type="text/javascript">
var member_birth2 = '<c:out value="${member_birth2}"/>';

window.onload = function () {
	 console.log("(radio값)member_birth2: " + member_birth2);
	 
if (member_birth2 == '양력') {
$("input:radio[name='member_birth2']:radio[value='양력']").prop("checked",true);
} else {
	$("input:radio[name='member_birth2']:radio[value='음력']").prop("checked",true);
	}
}

 function viewUpdate(no){

    if (confirm("수정 되었습니다")){    //확인
    	location.href = "${contextPath}/BlueAD/bluead_member/member01/list";
    }else{   //취소
        return;
    }  
}
 
 /* new daum.Postcode({
     oncomplete: function(data) {
         // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
         // 예제를 참고하여 다양한 활용법을 확인해 보세요.
     }
 }).open(); */
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
 
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.postcode1; //구 우편번호 앞 3자리
                document.getElementById('sample4_postcode2').value = data.postcode2; //구 우편번호 앞 3자리
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;
 
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
 
                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
 
                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>
</html>
