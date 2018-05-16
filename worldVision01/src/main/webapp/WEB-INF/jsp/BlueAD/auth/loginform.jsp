<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 

<html>
<head>
<title>::: 관리자 모드 :::</title>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/style.css">
</head>
<script language="javascript">
<!--
function checkIt() {
  if(!form.admin_id.value) {
    alert("관리자 아이디를 입력해주세요!")
    form.admin_id.focus();
   return false;
  }
  if(!form.admin_pass.value) {
    alert("관리자 비밀번호를 입력해주세요!")
    form.admin_pass.focus();
   return false;
  }
  return true;
}

function focusIt() {
  document.form.admin_id.focus();
}
function getCookie(Name) {	
	var search = Name + "=";
	if (document.cookie.length > 0) {
		offset = document.cookie.indexOf(search);
		if (offset != -1){
			offset += search.length;
			end = document.cookie.indexOf(";", offset);
			if (end == -1)
				end = document.cookie.length;
				return unescape(document.cookie.substring(offset, end));
		}
	}
}
// -->
</script>
<body class="top_left" onLoad="focusIt();">
<form name="form" method="post" action="login" onSubmit="return checkIt(this);">
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" background="${contextPath}/images/BlueAD/admin/ad_bg.jpg">
      <table width="1000" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="800" valign="top" background="${contextPath}/images/BlueAD/admin/ad_login_bg.jpg" style="background-repeat:no-repeat; padding:368px 0 0 540px">
            <table width="230" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="165" height="20">
                <input type="text" name="admin_id" class="log_id" tabindex="1"></td>
                <td rowspan="2" align="right">
                <input type="image" src="${contextPath}/images/BlueAD/admin/btn_login.gif" style="corsor:hand" onFocus="this.blur();" tabindex="3"></td>
              </tr>
              <tr>
                <td height="20"><input type="password" name="admin_pass" class="log_pw" tabindex="2"></td>
              </tr>
              <tr>
                <td height="20" class="txt_s">
                <input type="checkbox" name="checkbox" value="checkbox"  onclick="if (this.checked) { if (confirm('아이디저장 기능을 사용하시면 다음부터 아이디를 입력하실 필요가 없습니다.\n\n\공공장소에서는 개인정보가 유출될 수 있으니 사용을 자제하여 주십시오.\n\n아이디 자동입력기능을 사용하시겠습니까?')) { this.checked = true; } else { this.checked = false; } }" tabindex="3">
                  아이디저장</td>
                <td></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</form>
<script type="text/javascript">
var cookieid = getCookie( "id" );
if (cookieid != undefined)	{
	document.form.checkbox.checked = "true";
	document.form.admin_id.value = cookieid;
}
</script>
</body>
</html>
