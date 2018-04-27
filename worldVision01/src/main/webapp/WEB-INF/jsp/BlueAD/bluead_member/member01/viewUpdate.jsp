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
<jsp:include page="../member_left.jsp"/>
</div>
<div id="content">
<h1> 확인viewupdate</h1>
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
    <td width="100" height="35" class="field_b_pad">이름</td>
    <td>
       <input class='form-control' readonly id='bbs_name' type='text' 
                name='bbs_name' value='${bluead_member.bbs_name}'>
    </td>
  </tr>
    <tr>
    <td width="100" height="35" class="field_b_pad">아이디</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>${bluead_member.member_id}</b></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">비밀번호</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><input type="text" name="member_birth1"></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">주민번호</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">생년월일</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><input type="text" name="member_birth1">-<input type="text" name="member_birth1">-<input type="text" name="member_birth1"></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">전화번호</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><input type="text" name="member_birth1">-<input type="text" name="member_birth1">-<input type="text" name="member_birth1"></td>
  </tr>

      <tr>
    <td width="100" height="35" class="field_b_pad">주소</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><input type="text" name="member_birth1">${bluead_member.member_email}</td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">이메일</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><input type="text" name="member_birth1"><b>${bluead_member.member_join_date}</b></td>
  </tr>
</tbody></table>
<!-- view -->

<!-- 목록,확인 -->
<table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr height="40">
    <td height="50" align="center" valign="bottom">
      <input align="absmiddle" onclick="window.location='list'" type="image" src="${contextPath}/images/BlueAD/admin/btn_list.gif">
            <input align="absmiddle"  onclick="window.location='list'" onfocus="this.blur();" type="image" src="${contextPath}/images/BlueAD/admin/btn_ok.gif">
    </td>
  </tr>
</tbody></table>
<!-- 목록, 확인 -->
</div>
</body>
</html>
