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
<form name="form" action="add" onsubmit="return checkIt();"method='post' enctype="multipart/form-data">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif" align="absmiddle"><font color="#5555aa"> 약관 관리 </font></td>
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
							<textarea  name="ir1" id="ir1" rows="10" cols="100"> ${bluead_terms.contens1}   </textarea>
							</td>
						</tr>
					</table>			

<!-- -확인버튼 -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr height="50">
    <td align="center">
   <td height="50" align="center" valign="bottom">
   
   <input onfocus="this.blur();" onclick="window.alert('등록되었습니다')" type="image" src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_ok.gif">
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
</script>
</body>
</html>
