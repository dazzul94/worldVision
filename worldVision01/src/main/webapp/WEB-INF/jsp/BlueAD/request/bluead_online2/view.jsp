<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/div.css?ver=1">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/style.css?ver=1">
<link rel="stylesheet" media="screen" href="${contextPath}/css/BlueAD/lightbox/lightbox.css" type="text/css">
<script type="text/javascript" src="${contextPath}/js/BlueAD/jquery-1.3.2.min.js"></script>

</head>

<body>
<div id="header">
<jsp:include page="../../top.jsp"/>
</div>
<div id="navigation">
<jsp:include page="../request_left.jsp"/>
</div>
<div id="content">
<c:if test="${not empty bluead_online}">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif" align="absmiddle"> 합창단후원신청</td>
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
  <tbody><tr>
    <td width="100" height="35" class="field_b_pad_p">후원종류</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>${bluead_online.tpe2_opt1}</b></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">후원금액</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><c:if test="${!empty bluead_online.tpe2_opt2}">${bluead_online.tpe2_opt2} 만원</c:if></td>
  </tr>
</tbody></table>
<br>
<table width="100%" align="center" bgcolor="#cad4e3" border="0" cellspacing="1" cellpadding="0">
  <tbody><tr>
    <td width="100" height="35" class="field_b_pad_p">성명</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>${bluead_online.name}</b></td>
  </tr>
      <tr>
    <td width="100" height="35" class="field_b_pad_p">생년월일</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>${bluead_online.tpe2_jumin1}</b></td>
  </tr>
    <tr>
    <td width="100" height="35" class="field_b_pad">일반전화</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff">${bluead_online.tel1}-${bluead_online.tel2}-${bluead_online.tel3}</td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad_p">핸드폰</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>${bluead_online.htel1}-${bluead_online.htel2}-${bluead_online.htel3}</b></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">이메일</td>
    <td style="padding: 10px;" bgcolor="#ffffff">${bluead_online.email}</td>
  </tr>
  <tr height="40">
    <td width="100" height="35" class="field_b_pad">주소</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff">${bluead_online.zip1} - ${bluead_online.zip2}<br>${bluead_online.address1} ${bluead_online.address2}</td>
  </tr>
    <tr>
    <td width="100" height="35" class="field_b_pad">CMS 신청안내</td>
    <td style="padding: 10px;" bgcolor="#ffffff">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody><tr>
          <td width="100" height="25">은행명</td>
          <td>${bluead_online.tp2_cms1}</td>
        </tr>
        <tr>
          <td height="25">계좌번호</td>
          <td>${bluead_online.tp2_cms2}</td>
        </tr>
        <tr>
          <td height="25">예금주</td>
          <td>${bluead_online.tp2_cms3}</td>
        </tr>
        <tr>
          <td height="25">예금주 생년월일</td>
          <td>${bluead_online.tp2_cms4}</td>
        </tr>
        <tr>
          <td height="25">이체일</td>
          <td>${bluead_online.tp2_cms6}</td>
        </tr>
        </tbody></table>
    </td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">신청동기</td>
    <td style="padding: 10px;" bgcolor="#ffffff">${bluead_online.tp2_opt3}</td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">추천인</td>
    <td style="padding: 10px;" bgcolor="#ffffff">${bluead_online.tp2_opt4}</td>
  </tr>
    <tr>
    <td width="100" height="35" class="field_b_pad">비고</td>
    <td style="padding: 10px;" bgcolor="#ffffff">${bluead_online.contents}</td>
   </tr>   
  <tr>
    <td height="35" class="field_b_pad_p">상담상태</td>
    <td style="padding: 10px;" bgcolor="#ffffff"><b>Q!!</b></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">등록일</td>
    <td style="padding: 10px;" bgcolor="#ffffff">${bluead_online.wdate}</td>
  </tr>
</tbody></table>
<!-- view -->
<!-- 목록, 삭제 -->
<table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr height="40">
    <td height="50" align="center" valign="bottom">
      <input align="absmiddle" onclick="window.location='list'" type="image" src="${contextPath}/images/BlueAD/admin/btn_list.gif">
            <input align="absmiddle"  onclick="really(${bluead_online.no})" onfocus="this.blur();" type="image" src="${contextPath}/images/BlueAD/admin/btn_del.gif">
    </td>
  </tr>
</tbody></table>
<!-- 목록, 삭제 -->
<!-- 메모 -->
<table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="25"><img align="absmiddle" src="${contextPath}/images/BlueAD/admin/blet.gif"><strong> 간단메모 </strong></td>
  </tr>
</tbody></table>
<table width="100%" align="center" bgcolor="#e6e6e6" border="0" cellspacing="1" cellpadding="0">
  <form name="form" action="view.php" method="post"></form>
  <input name="bbs_id" type="hidden" value="online">
  <input name="no" type="hidden" value="1549">
  <input name="mode" type="hidden" value="write">
  <input name="key" type="hidden" value="">
  <input name="keyword" type="hidden" value="">
  <input name="type" type="hidden" value="1">
  <tbody><tr>
    <td width="100" style="padding-left: 15px; cursor: hand;" onclick="textarea_size('content',5)" bgcolor="#f5f5f5">간단메모 ▼</td>
    <td style="padding: 10px;" bgcolor="#ffffff"><textarea name="content" style="width: 100%;" rows="3"></textarea></td>
    <td width="70" align="center" bgcolor="#f5f5f5"><input align="absmiddle" onfocus="this.blur();" type="image" src="${contextPath}/images/BlueAD/admin/btn_cmnt.gif"></td>
  </tr>
  
</tbody></table>
<!-- 메모 -->
</c:if>
</div>
<script type="text/javascript">
function really(no){
    if (confirm("정말 삭제하시겠습니까??") == true){    //확인
    	    window.location = "delete?no=" + no;
    	    window.alert("삭제되었습니다");
    }else{   //취소
        return;
    }
}
</script>
</body>
</html>
