<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 

<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/style.css">
<script type="text/javascript" src="${contextPath}/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>

<body leftmargin="15" marginwidth="0" topmargin="10" marginheight="0" onload="document.form.subject.focus();">
<c:if test="${not empty bluead_schedule}">
<table border="0" cellspacing="0" cellpadding="0" width="770">
  <tr>
    <td height="25"><img src="${contextPath}/images/BlueAD/admin/blet.gif" width="6" height="13" align="absmiddle"><strong> 일정관리 </strong></td>
  </tr>
</table>
<form name="form" method="post" action="update">
<input name="no" type="hidden" value="${bluead_schedule.no}">
<input name="y" type="hidden" value="${bluead_schedule.y}">
<input name="m" type="hidden" value="${bluead_schedule.m}">
<input name="d" type="hidden" value="${bluead_schedule.d}">
<table border="0" cellspacing="1" cellpadding="0" width="770" bgcolor="#E6E6E6">
  <tr height="28">
    <td width="70" class="pad_left" bgcolor="#F1F1F1">날짜</td>
    <td bgcolor="#FFFFFF" class="pad_left">${bluead_schedule.y}년 ${bluead_schedule.m}월 ${bluead_schedule.d}일</td>
  </tr>
  <tr height="28">
    <td class="pad_left" bgcolor="#F1F1F1">일정명</td>
    <td bgcolor="#FFFFFF" class="pad_left">
      <input type="text" name="subject" size="60" value="${bluead_schedule.subject}">
      <select name="color">
      <option value="#000000" style="color:#000000" selected>검은색</option>
      <option value="#0000ff" style="color:#0000ff" >파랑색</option>
      <option value="#ff0000" style="color:#ff0000" >빨강색</option>
      <option value="#009900" style="color:#009900" >초록색</option>
      </select>
    </td>
  </tr>
  <tr height="28">
    <td class="pad_left" bgcolor="#F1F1F1">상세내용</td>
    <td bgcolor="#FFFFFF" class="pad_all">
    <textarea  name="content" id="ir1" style="width:100%" rows="20">${bluead_schedule.content}</textarea>
</td>
  </tr>
</table>
</form>
<table width="770" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" height="40">
<!--      <input type="button" value="목  록" onClick="parent.emailwindow.hide_w('list')" class="input_btn">&nbsp;&nbsp;-->
<!--      <input type="button" value="저  장" name="B1" onClick="parent.emailwindow.hide_w('modify')" class="input_btn"/>&nbsp;&nbsp;-->
<!--      <input type="button" class="input_btn" value="삭  제" onClick="parent.emailwindow.hide_w('delete')");">-->
      <input type="button" value="목  록"  onClick="window.close();" class="input_btn">&nbsp;&nbsp;
      <input type="button" value="저  장" name="B1" onClick="checkIt()"  class="input_btn"/>&nbsp;&nbsp;
      <input type="button" class="input_btn" value="삭  제" onClick="go_del(${bluead_schedule.no})">
    </td>
  </tr>
</table>
</c:if>
</body>
<script language="JavaScript">
//1번
function checkIt() {
	/* var form = document.form;
	form.mode.value = "modify"; */

	if(form.subject.value==""){
		alert("일정명을 입력하세요");
		form.subject.focus();
		return false;
	}

	/* document.form.content.value = SubmitHTML();  */

	if(document.form.content.value == false) { 
		alert('상세내용을 입력해 주세요.'); 
		form.content.focus(); 
		return;
	} 

	sendSub();
	//form.submit();
}
/* function go_del(){
  form.mode.value = "delete";
  form.submit();
} */



//2번
/*
  var form = document.form;
  if(form.subject.value == "") {
    alert('일정명을 입력하세요');
    form.subject.focus();
    return;
  }
  form.submit();
*/


function go_del(no) {
	
	/* 여긴된당 */
	if (confirm("정말 삭제하시겠습니까??") == true){    //확인
	    window.location = "delete?no=" + no;
	    window.alert("삭제되었습니다");
	}else{   //취소
    return;
	}
}

</script>
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
    	window.opener.name = "parentPage"; // 부모창의 이름 설정
        document.form.target = "parentPage"; // 타켓을 부모창으로 설정
        document.form.submit();
        self.close();
    //form.submit();
    } catch(e) {
       }
    }
</script>
</html>
