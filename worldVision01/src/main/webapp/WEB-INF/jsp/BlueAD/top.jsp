<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/style.css">
<script language="javascript">
<!--
function go_chk(left_url, main_url){    
    top.frames['left'].location.href = left_url;
    top.frames['main'].location.href = main_url;
}

function autoBlur(){
  if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG")
  document.body.focus();
}
document.onfocusin=autoBlur;
//-->
</script>

<script language="JavaScript">
<!--
function TodayFunc() {
  var w=new Array('일요일','월요일','화요일','수요일','목요일','금요일','토요일');
  var today=new Date();
  var year=today.getYear();
  var month=today.getMonth()+1;
  var day=today.getDate();
  var hour=today.getHours();
  var minute=today.getMinutes();
  var second=today.getSeconds();
  var week=today.getDay();
  if(second < 10) second='0'+second;
  var str=year+'년'+month+'월'+day+'일 '+hour+':'+minute+':'+second+'   '+w[week];
  document.getElementById('today_print').innerHTML=str;
}
//-->
</script>

</head>
<body class="top_left">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td background="${contextPath}/images/BlueAD/admin/top_bg.gif" bgcolor="#000000" style="padding-left:10px">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="200" rowspan="2" align="center" valign="top" background="${contextPath}/images/BlueAD/admin/admin_logo_bg.gif" style="background-repeat:no-repeat"><table width="180" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="45" valign="bottom" align="center"><div id="today_print" class="txt_gray"></div></td>
            </tr>
            <tr>
              <td><img src="${contextPath}/images/BlueAD/admin/admin_logo.gif" onClick="go_chk('left.php','main.php');" style="cursor:hand"></td>
            </tr>
          </table></td>
          <td height="25" align="right" style="padding-right:20px"><a href="/" target="_blank" class="top_blue">사이트보기</a> &nbsp; <a href="#" onClick="frames['top'].location.href='logout.php'" class="top_blue">로그아웃</a></td>
        </tr>
        <tr>
          <td height="85" valign="top" style="padding:35px 20px 0 20px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
<!---------------------------------------------- 추가항목-------------------------------------------->
<!---------------------------------------------- 추가항목-------------------------------------------->
                        <td width="10%" align="center" id="td_no0" onClick="#" style="cursor:pointer" class="top_mn">
                            <img src="${contextPath}/images/BlueAD/admin/top_mn0_on.gif" align="absmiddle"> ABOUT
                        </td>
                        <td width="10%" align="center" id="td_no1" onClick="#" style="cursor:pointer" class="top_mn">
                            <img src="${contextPath}/images/BlueAD/admin/top_mn1_on.gif" align="absmiddle"> CHOIR
                        </td>
                        <td width="10%" align="center" id="td_no2" onClick="#" style="cursor:pointer" class="top_mn">
                            <img src="${contextPath}/images/BlueAD/admin/top_mn2_on.gif" align="absmiddle"> CONCERT
                        </td>
                        <td width="10%" align="center" id="td_no3" onClick='window.location="${contextPath}/BlueAD/gallery/list"' style="cursor:pointer" class="top_mn">
                            <img src="${contextPath}/images/BlueAD/admin/top_mn3_on.gif" align="absmiddle"> GALLERY
                        </td>
                        <td width="10%" align="center" id="td_no4" onClick='window.location="${contextPath}/BlueAD/bluead_online/list"' style="cursor:pointer" class="top_mn">
                            <img src="${contextPath}/images/BlueAD/admin/top_mn4_on.gif" align="absmiddle"> REQUEST
                        </td>
                        <td width="10%" align="center" id="td_no5" onClick='window.location="${contextPath}/BlueAD/community/list"' style="cursor:pointer" class="top_mn">
                            <img src="${contextPath}/images/BlueAD/admin/top_mn5_on.gif" align="absmiddle"> COMMUNITY
                        </td>
                        <td width="10%" align="center" id="td_no6" onClick='window.location="${contextPath}/BlueAD/bluead_wvboard/list"' style="cursor:pointer" class="top_mn">
                            <img src="${contextPath}/images/BlueAD/admin/top_mn6_on.gif" align="absmiddle"> BOARD
                        </td>
                        <td width="10%" align="center" id="td_no7" onclick='window.location="${contextPath}/BlueAD/bluead_member/list"' style="cursor:pointer" class="top_mn">
                            <img src="${contextPath}/images/BlueAD/admin/top_mn7_on.gif" align="absmiddle"> MEMBER
                        </td>
<!-------------------------------------------- 관리자항목 ---------------------------------------->
                        <td width="10%" align="center" id="td_no8" onClick="#" style="cursor:pointer" class="top_mn">
                            <img src="${contextPath}/images/BlueAD/admin/top_mn8_on.gif" align="absmiddle"> 
                            관리자관리
                        </td>
                        <td width="<?= $width ?>"></td><!-- 남은 여백주기 -->
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>

</body>
<script language="JavaScript">
<!--
TodayFunc();
setInterval('TodayFunc()',1);
//-->
</script>
</html>





    