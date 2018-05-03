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
<jsp:include page="../board_left.jsp"/>
</div>
<div id="content">
<form name="form" action="add" onsubmit="return checkIt();"method='post' enctype="multipart/form-data">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif" align="absmiddle"><font color="#5555aa"> 자유게시판 </font></td>
  </tr>
  <tr>
    <td height="1" background="${contextPath}/images/BlueAD/admin/title_dot_line.gif"></td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</table>
 

<!-- lightbox(좌,우) -->
<link rel="stylesheet" media="screen" href="/BlueAD/lightbox/css/lightbox.css" type="text/css">
<script src="/BlueAD/lightbox/js/prototype.js" type="text/javascript"></script>
<script src="/BlueAD/lightbox/js/scriptaculous.js?load=effects" type="text/javascript"></script>
<script src="/BlueAD/lightbox/js/lightbox.js" type="text/javascript"></script>

<!-- lightbox+(확대,좌,우)
<link rel="stylesheet" type="text/css" href="/BlueAD/lightbox2/resource/sample.css" media="screen,tv" title="default"/> 
<link rel="stylesheet" type="text/css" href="/BlueAD/lightbox2/resource/lightbox.css" media="screen,tv" />
<script type="text/javascript" charset="euc-kr" src="/BlueAD/lightbox2/resource/lightbox_plus_min.js"></script>-->




   

<script language="javascript" src="/BlueAD/js/new_win.js"></script>
<link rel="stylesheet" type="text/css" href="skin/bbs/bluead_gray/style.css">
<script language="javascript" src="/BlueAD/js/common_checking.js"></script>
<script language="javascript">



//-->
</script>
<table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#cbcbcb">
  <tr>
    <td align="center" bgcolor="#f3f3f3">
      <table border="0" cellspacing="0" cellpadding="0" width="98%">
     <%--  <form name="form" method="post" action="add" enctype="multipart/form-data"> 
      <input type="hidden" name="bbs_id" value="wv_board">
      <input type="hidden" name="bbs_no" value="">
      <input type="hidden" name="page" value="1">
      <input type="hidden" name="key" value="">
      <input type="hidden" name="keyword" value="">
      <input type="hidden" name="fid" value="">
      <input type="hidden" name="thread" value="">
      <input type="hidden" name="act" value="">
      <input type="hidden" name="CFG_FILTERING" value="성인/대출/광고/야동/양아치/세끼/꼴에/미친/새끼/똘아이/병신/씨발/씨바야/시발/좃까튼/조까튼/좃/꼴통/니나/미친X/젓가튼/젓같은/싸가지/4가지/개자식/개.새.끼/성추행">
      <input type="hidden" name="bbs_admin" value="chk">--%>
              <tr>
          <td width="100" height="30" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write_name.gif"></td>
          <td class="bbs_padding_left">
          <input type="text" name="bbs_name" size="20" class="bbs_input" value="관리자">          </td>
        </tr>
        <tr>
          <td height="1" colspan="2" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_line.gif"></td>
        </tr>
        <tr>
          <td height="30" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write_mail.gif"></td>
          <td class="bbs_padding_left">
          <input type="text" name="bbs_email" size="35" class="bbs_input" value="wvchoir@wvchoir.or.kr">          <span class="txt_s">자주 사용하는 이메일을 기입해주세요.</span></td>
        </tr>
        <tr>
          <td height="1" colspan="2" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_line.gif"></td>
        </tr>
        <tr>
          <td height="30" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write_sbj.gif"></td>
          <td class="bbs_padding_left">
            <input type="text" name="bbs_subject" size="50" class="bbs_input" value="">
            <input type="checkbox" name="bbs_notice" value="Y" ><span class="txt_s">공지글
          (체크하시면 항상 최상위에 등록되어 있습니다.)</span>           </td>
        </tr>
        <tr>
          <td height="1" colspan="2" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_line.gif"></td>
        </tr>
              <tr>
          <td height="30" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write_cnt.gif"></td>
          <td class="bbs_padding_all">
            <table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
                            <tr>
                <td>
		<TABLE BORDER="1" WIDTH=100% cellspacing="0" bordercolor="#EFEFEF" bordercolordark="white" bordercolorlight="#DBDBDB">
			<TR>
				<TD>
					<table align="center" border="0" cellpadding="1" cellspacing="3" width="100%">
						<tr>
							<td bgcolor="#EFEFEF">
							<!-- ?? -->
							</td>
						</tr>
						<tr>
							<td><!-- smarteditor -->
						 	<textarea name="bbs_content" id="ir1" rows="10" cols="100">    </textarea>
							</td>
						</tr>
					</table>
				</TD>
			</TR>
		</TABLE>
                        <!-- <textarea name="bbs_content" id="bbs_content" rows="20" style="width:100%" class="bbs_textarea"></textarea> -->
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="1" colspan="2" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_line.gif"></td>
        </tr>
              <tr>
          <td height="30" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write_file1.gif"></td>
          <td class="bbs_padding_side">
            <input type="file" name="bbs_file[]" style="width:100%" class="bbs_input">          </td>
        </tr>
        <tr>
          <td height="1" colspan="2" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_line.gif"></td>
        </tr>
              <tr>
          <td height="30" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write_file2.gif"></td>
          <td class="bbs_padding_side">
            <input type="file" name="bbs_file[]" style="width:100%" class="bbs_input">          </td>
        </tr>
        <tr>
          <td height="1" colspan="2" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_line.gif"></td>
        </tr>
              <tr>
          <td height="30" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write_file3.gif"></td>
          <td class="bbs_padding_side">
            <input type="file" name="bbs_file[]" style="width:100%" class="bbs_input">          </td>
        </tr>
        <tr>
          <td height="1" colspan="2" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_line.gif"></td>
        </tr>
            </form>
      </table>
    </td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr height="50">
    <td align="center">
   <td height="50" align="center" valign="bottom">
   
   <input onfocus="this.blur();" onclick="window.alert('등록되었습니다')" type="image" src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_ok.gif">
   <img style="cursor: pointer;" onclick="location.href='list?pn=1'" src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_cancel.gif">
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
	// 에디터의 내용이 textarea에 적용된다.

    oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);

 

    // 에디터의 내용에 대한 값 검증은 이곳에서

  /*    document.getElementById("ir1").value */

 

    try {

    form.submit();

    } catch(e) {
    	}
    }
</script>
</body>
</html>
