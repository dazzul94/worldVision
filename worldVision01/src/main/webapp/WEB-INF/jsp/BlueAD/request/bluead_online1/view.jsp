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
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif" align="absmiddle"> 입단신청</td>
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
    <td width="100" height="35" class="field_b_pad_p">성명</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>송예나</b></td>
  </tr>
    <tr>
    <td width="100" height="35" class="field_b_pad">희망지역</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>강남반</b></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">입단신청경로</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>사전인지</b></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">성별</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>여자</b></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">학년</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>4학년</b></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">부모님 성함</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>박송이</b></td>
  </tr>

      <tr>
    <td width="100" height="35" class="field_b_pad">일반전화</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff">--</td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad_p">핸드폰</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>010-6397-1534</b></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">이메일</td>
    <td style="padding: 10px;" bgcolor="#ffffff">songshines@naver.com</td>
  </tr>
  <tr height="40">
    <td width="100" height="35" class="field_b_pad">주소</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff">138 - 240<br>서울 송파구 신천동 11-4 푸르지오 월드마크</td>
  </tr>
    <tr>
    <td width="100" height="35" class="field_b_pad">비고</td>
    <td style="padding: 10px;" bgcolor="#ffffff">송유나, 송예나 쌍둥이 자매입니다. 초4이구요. 오디션 문의드립니다. ^^</td>
   </tr>   
  <tr>
    <td height="35" class="field_b_pad_p">상담상태</td>
    <td style="padding: 10px;" bgcolor="#ffffff"><b>상담완료</b></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">등록일</td>
    <td style="padding: 10px;" bgcolor="#ffffff">2018/04/13</td>
  </tr>
</tbody></table>
<!-- view -->
<!-- 목록, 삭제 -->
<table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr height="40">
    <td height="50" align="center" valign="bottom">
      <input align="absmiddle" onclick="location.href='list.php?&amp;bbs_id=online&amp;type=1&amp;key=&amp;keyword=&amp;page=1'" onfocus="this.blur();" type="image" src="${contextPath}/images/BlueAD/admin/btn_list.gif">
            <input align="absmiddle" onclick="go_del('query.php?mode=delete&amp;no=1549&amp;bbs_id=online&amp;type=1&amp;key=&amp;keyword=&amp;page=1');" onfocus="this.blur();" type="image" src="${contextPath}/images/BlueAD/admin/btn_del.gif">
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
</div>
</body>
</html>
