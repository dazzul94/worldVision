<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script type="text/javascript" src="${contextPath}/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="${contextPath}/js/BlueAD/jquery-1.3.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/div.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/style.css">
<link rel="stylesheet" media="screen" href="${contextPath}/css/BlueAD/lightbox/lightbox.css" type="text/css">
</head>

<body>
<div id="header">
<jsp:include page="../../top.jsp"/>
</div>
<div id="navigation">
<jsp:include page="../member_left.jsp"/>
</div>
<div id="content">
<form action="update" onsubmit="return checkIt();"method='post' enctype="multipart/form-data">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  	<c:if test="${gubun eq 'terms'}">
  		<td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif" align="absmiddle"><font color="#5555aa"> 약관 관리 </font></td>
  	</c:if>
    <c:if test="${gubun eq 'personalView'}">
  		<td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif" align="absmiddle"><font color="#5555aa"> 개인정보보호정책 </font></td>
  	</c:if>
  </tr>
  <tr>
    <td height="1" background="${contextPath}/images/BlueAD/admin/title_dot_line.gif"></td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</table>

					<table align="center" border="0" cellpadding="10" cellspacing="3" width="100%">
						<tr>
							<td bgcolor="#EFEFEF">
							<!-- ?? -->
							</td>
						</tr>
						<tr>
							<td><!-- smarteditor -->
							
								<c:if test="${gubun eq 'terms'}">
							<textarea  name="contents1" id="ir1" rows="40" cols="250">
								${bluead_member02.contents1}
							</textarea>
							<textarea name="contents2" style="display:none;" value="${bluead_member02.contents2}"></textarea>
								</c:if>
								
								<c:if test="${gubun eq 'personalView'}">
								
							<textarea  name="contents2" id="ir1" rows="40" cols="250">
								${bluead_member02.contents2}
							</textarea>
								</c:if>
								<input type="hidden" name="gubun" value="${gubun}">
							</td>
						</tr>
					</table>			

<!-- -확인버튼 -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr height="50">
    <td align="center">
   <td height="50" align="center" valign="bottom">
   
   <input type="image" src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_ok.gif" onclick="sendSub()">
   <%-- <input type="button" value="등록" onclick="sendSub()">
                        <input onclick="write()" type="image" src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_ok.gif">
                        <input onclick="list(${bluead_wv_board.bbs_no})"  type="image" src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_cancel.gif"></td>  --%>
  </tr>
</table>
</form>
</div>
<script type="text/javascript">

var oEditors = [];

nhn.husky.EZCreator.createInIFrame({

    oAppRef: oEditors,

    elPlaceHolder: "ir1",

    sSkinURI: "${contextPath}/se2/SmartEditor2Skin.html",

    fCreator: "createSEditor2"

});
function sendSub(){
    oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
      window.alert(document.getElementById("ir1").value); 
    try {
    form.submit();
    } catch(e) {
       }
    }
</script>
</body>
</html>
