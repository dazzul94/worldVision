<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title></title>
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
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif" align="absmiddle"><font color="#5555aa"> 자유게시판</font></td>
  </tr>
  <tr>
    <td height="1" background="${contextPath}/images/BlueAD/admin/title_dot_line.gif"></td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%" height="29" align="center" colspan="6">
    
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="4"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_left.gif"></td>
        
          <td width="70" height="29" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_sbj.gif"></td>
          <td background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif" style="padding-left:10"><span class="bbs_normal">${bluead_wvboard.bbs_subject } </span></td>
          <td width="4"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_right.gif"></td>
        </tr>
      </table>
    </td>
  </tr>
  
  
  <tr>
    <td height="27" align="center" colspan="6">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="70" height="27" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_name.gif"></td>
          <td style="padding-left:10">
            <a href="email_send.php?email=d3ZjaG9pckB3dmNob2lyLm9yLmty" target="email_frm" class="bbs_link"><span class="bbs_normal">${bluead_wvboard.bbs_name }</span></td>
          <td width="70" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_date.gif"></td>
          <td width="120" align="center"><span class="bbs_normal">${bluead_wvboard.bbs_date }</span></td>
          <td width="70" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_hit.gif"></td>
          <td width="45" align="center"><span class="bbs_normal">${bluead_wvboard.bbs_hit }</span></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
  <td height="1" colspan="6" bgcolor="#e6e6e6"></td>
  </tr>
	  <tr>
    <td height="27" align="center" colspan="6">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="70" height="27" align="center"><span class="bbs_normal"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_file1.gif"></span></td>
          <!-- 파일 다운 ㄴㄴ  -->
          <td colspan="3" style="padding-left:10"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/hwp.gif" align="absmiddle">&nbsp;<a href="download.php?bbs_id=wv_community01&bbs_no=307&bbs_admin=chk&file_no=2" class="bbs_link">${community.bbs_file1 }</a>&nbsp;<span class="bbs_normal">(0.02M)</span></td>
          <td width="70" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_down.gif"></td>
          <td width="45" align="center"><span class="bbs_normal">${bluead_wvboard.bbs_down1_hit }</span></td>
        </tr>
      </table>
    </td>
  </tr>
  <!-- 내용 -->
  
    <tr>
    <td height="1" colspan="6" bgcolor="#e6e6e6"></td>
  </tr>
	  <tr>
    <td colspan="6" style="padding:10px">
      <table border="0" cellspacing="0" cellpadding="0" width="100%" height="1">        <tr>
          <td><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/t.gif" border="0" width="100%" height="1" name="get_table_width"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/t.gif" border="0" name="target_resize" width="1" height="1"></td>
        </tr>
        <tr>
          <td>
                        <span class="bbs_normal"><head><style>body{font-family: Tahoma,Verdana,Arial;font-size: 11px;color: #555555;margin: 0px}td{font-size :11px; font-family: Tahoma,Verdana,Arial;}p{margin-top:1px;margin-bottom:1px;}</style>

<style>body{font-family: Tahoma,Verdana,Arial;font-size: 11px;color: #555555;margin: 0px}td{font-size :11px; font-family: Tahoma,Verdana,Arial;}p{margin-top:1px;margin-bottom:1px;}</style>


</head><body>
${bluead_wvboard.bbs_content }
</body></span>
          </td>
        </tr>
      </table>
    </td>
  </tr>
   <tr>
    <td height="15" colspan="6" class="bbs_padding_right" align="right"><span class="bbs_small_1">${bluead_wvboard.bbs_ip }</span></td>
  </tr>
    <tr>
    <td height="5"></td>
  </tr>
  <tr>
    <td height="1" bgcolor="#e6e6e6"></td>
  </tr>
  <!-- 내용끝 -->
  <!-- 목록,수정,삭제 ,쓰기 -->
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
<form name="form1" method="post" action="write_ok.php"></form>
<input type="hidden" name="bbs_id" value="wv_community01">
<input type="hidden" name="bbs_no" value="307">
<input type="hidden" name="page" value="1">
<input type="hidden" name="key" value="">
<input type="hidden" name="keyword" value="">
<input type="hidden" name="bbs_admin" value="chk">
<input type="hidden" name="act" value="delete">
  <tbody><tr>
    <td height="40" width="70">
       <input align="absmiddle" onclick="window.location='list'" type="image" src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_list.gif">
    </td>
    <!--  답글 , 수정, 삭제, 쓰기 -->
    <td align="right">
      <a href="board.php?bbs_id=wv_board&amp;mode=write&amp;act=reply&amp;bbs_no=133&amp;page=1&amp;key=&amp;keyword=&amp;bbs_admin=chk"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_reply.gif" align="absmiddle" border="0"></a>
     <a href="board.php?bbs_id=wv_community01&mode=write&act=modify&bbs_no=307&page=1&key=&keyword=&bbs_admin=chk"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_modify.gif" align="absmiddle" border="0"></a>
<a href='delete?no=${bluead_wvboard.bbs_no}'><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_del.gif" align="absmiddle" border="0"></a>
<a href="board.php?bbs_id=wv_community01&mode=write&page=1&key=&keyword=&bbs_admin=chk"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write.gif" align="absmiddle" border="0"></a>
    </td>
  </tr>

</tbody></table>
    </table>
 

 <!-- 댓글남기기 시작  ㄴㄴ -->

<table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#dedede">
  <tbody><tr>
	  <td bgcolor="#FFFFFF">
			<table width="100%" border="0" cellpadding="10" cellspacing="0" bgcolor="#f5f5f5">
			  <tbody><tr>
				  <td>
            <table border="0" cellspacing="0" cellpadding="0" width="100%">
              <form action="comment_ok.php" method="post" name="form" id="form"></form>
                <input type="hidden" name="bbs_id" value="wv_community01">
<input type="hidden" name="bbs_no" value="302">
<input type="hidden" name="page" value="1">
<input type="hidden" name="key" value="">
<input type="hidden" name="keyword" value="">
<input type="hidden" name="bbs_admin" value="chk">
                <input type="hidden" name="comm_emot" value="1">
                <tbody><tr>
                  <td align="center" bgcolor="#ffffff">
                  	<table width="100%" border="0" cellpadding="0" cellspacing="0" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_reply_icon.gif" style="background-repeat:no-repeat; background-position:top left">
                    <tbody><tr>
                      <td height="30" align="center">&nbsp;</td>
                      <td align="right" style="padding-top:5">
                      &nbsp;					</td>
                      <td align="center">&nbsp;</td>
                    </tr>
                    <tr>
                 	<td width="80" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_cmnt_title.gif"></td>
										<td style="padding:0 0 10 0"><textarea id="comm_content" name="comm_content" rows="3" style="width:100%" class="txtarea"></textarea></td>
										<td width="70" align="center"><input type="image" src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_cmnt_ok.gif" align="absmiddle" border="0" /></td>
                    </tr>
                  </tbody></table>
                 </td>
                </tr>
              
            </tbody></table>
                      </td>
        </tr>
      </tbody></table>
    </td>
  </tr>
</tbody></table>
</div>
</body>
</html>
