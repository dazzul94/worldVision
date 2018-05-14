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
<jsp:include page="../choir_left.jsp"/>
</div>
<div id="content">
<form  method="post" action="choirUpdate" onSubmit="return FormCheckIt();" ENCTYPE="multipart/form-data">
 <input type="hidden" name="page" value="1">
<input type="hidden" name="c_no" value="${choir01.c_no}">
<input type="hidden" name="wdate" value="${choir01.wdate}">
<input type="hidden" name="img1_thumb" value="${choir01.img1_thumb}">
<input type="hidden" name="mode" value="modify"> 
    <table border="0" cellspacing="1" cellpadding="4" width="100%" bgcolor="#cad4e3">
    <tr>
      <td width="200" height="35" class="field_b_pad">분류</td>
       
      <td bgcolor="#FFFFFF" style="padding-left:10px"><input type="radio" name="type" value="${choir01.type}" onClick="Tr_Display('1');"> 연주반&nbsp;&nbsp;&nbsp;<input type="radio" name="type" value="2" onClick="Tr_Display('2');"> 지역반&nbsp;&nbsp;&nbsp;<input type="radio" name="type" value="3" onClick="Tr_Display('3');" checked> 비전싱어즈&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="35" class="field_b_pad">제목</td>
      <td bgcolor="#FFFFFF" style="padding-left:10px"><input type="text" class="b_input" name="title"value="${choir01.title}" size="50" ></td>
    </tr>
    <tr>
      <td height="35" class="field_b_pad">내용</td>
      <td bgcolor="#FFFFFF" style="padding-left:10px">
<!--  -->
							
							<textarea  name="content" id="ir1" rows="20" cols="150">${choir01.contents}</textarea>
						</tr>

    <tr>
      <td height="35" class="field_b_pad">이미지</td>
      <td bgcolor="#FFFFFF" style="padding-left:10px"><img src="${contextPath}/images/BlueAD/admin/choir/upload/${choir01.img1_micro}"width="300px" height="200" ;> <input type="checkbox" name="img_del" value="Y"> <font color="red">파일을 삭제합니다.</font><br><input name="img1_micro" type="file" class="b_input" /></td>
    </tr>
      <tr id="tr1">
      <td height="35" class="field_b_pad">연습장소</td>
      <td bgcolor="#FFFFFF" style="padding-left:10px"><input type="text" class="b_input" name=y_place value="${choir01.y_place}" size="50"></td>
    </tr>
    <tr id="tr2">
      <td height="35" class="field_b_pad">연습시간</td>
      <td bgcolor="#FFFFFF" style="padding-left:10px"><input type="text" class="b_input" name="y_time" value="${choir01.y_time}" size="50"></td>
    </tr>
    <tr id="tr3">
      <td height="35" class="field_b_pad">주소</td>
      <td bgcolor="#FFFFFF" style="padding-left:10px"><input type="text" class="b_input" name="addr" value="${choir01.addr}" size="50"></td>
    </tr>
    <tr id="tr4">
      <td height="35" class="field_b_pad">약도주소[네이버지도연동]</td>
      <td bgcolor="#FFFFFF" style="padding-left:10px"><input type="text" class="b_input" name="map_addr" value="${choir01.map_addr}" size="50"></td>
      
    </tr>
    
    </table>
    
    
  <td align="center">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="50" align="center">
              <a href="list?pn=1"><img src="${contextPath}/images/BlueAD/admin/btn_list.gif" style="cursor:pointer"></a>
        <input type="image" src="${contextPath}/images/BlueAD/admin/btn_ok.gif" onclick="sendSub()">
			  </td>
    </tr>
    </table>
  </td>

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
