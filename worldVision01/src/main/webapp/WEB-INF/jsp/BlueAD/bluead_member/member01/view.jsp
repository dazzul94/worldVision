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
  <tbody><tr>
    <td width="100" height="35" class="field_b_pad_p">이름</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>${bluead_member.member_name}</b></td>
  </tr>
    <tr>
    <td width="100" height="35" class="field_b_pad_p">아이디</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>${bluead_member.member_id}</b></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">생년월일</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>${bluead_member.member_birth1}&nbsp;${bluead_member.member_birth2}</b></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">전화번호</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>${bluead_member.member_tel1}-${bluead_member.member_tel2}-${bluead_member.member_tel3}</b></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad_p">휴대전화</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>${bluead_member.member_htel1} -${bluead_member.member_htel2}-${bluead_member.member_htel3}</b></td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">주소</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>${bluead_member.member_address2}<br>${bluead_member.member_address1}</b></td>
  </tr>

      <tr>
    <td width="100" height="35" class="field_b_pad">이메일</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff">${bluead_member.member_email}</td>
  </tr>
  <tr>
    <td width="100" height="35" class="field_b_pad">등록일</td>
    <td style="padding-left: 10px;" bgcolor="#ffffff"><b>${bluead_member.member_join_date}</b></td>
  </tr>
</tbody></table>
<!-- view -->
<!-- 목록,수정, 삭제 -->
<table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr height="40">
    <td height="50" align="center" valign="bottom">
      <input align="absmiddle" onclick="window.location='list'" type="image" src="${contextPath}/images/BlueAD/admin/btn_list.gif">

       <input align="absmiddle"onclick="viewUpdate(${bluead_member.no})" type="image" src="${contextPath}/images/BlueAD/admin/btn_modify.gif">
            <input align="absmiddle"  onclick="really(${bluead_member.no})" onfocus="this.blur();" type="image" src="${contextPath}/images/BlueAD/admin/btn_del.gif">
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
<script type="text/javascript">
function viewUpdate(no){

    if (confirm("수정하겠습니까 ?")){    //확인
    	location.href = "${contextPath}/BlueAD/bluead_member/member01/viewUpdate?no="+no;
    }else{   //취소
        return;
    }
}
</script>


</body>
</html>
