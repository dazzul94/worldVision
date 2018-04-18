<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<!--  등록된 게시물이 없습니다 해야함 글씨임 -->
<!-- <?
session_start();

include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_db.php";
$db = new DB();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/fun/function.php";

//게시판 체크
Board_Chk($bbs_id);

include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/define.php";
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/bbs_config.php";
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_paging.php";

//IP 필터링
if($CFG_USE_IP_FILTERING == "Y") {
  Filtering_IP($CFG_IP_FILTERING,__REMOTE_ADDR__);
}

if(!$mode) $mode = "list";

if(!__ADMIN_ID__ || $bbs_admin != "chk") {
  if($CFG_IFRAME == "N") {
    include $_SERVER['DOCUMENT_ROOT']."/index/head.php";
    include $_SERVER['DOCUMENT_ROOT']."/index/head_top.php";
  }
  if(trim($CFG_HEADER)) echo Tag_Allowed($CFG_HEADER,3);
}
else {
    
?>
 -->
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/BlueAD/admin/div.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/BlueAD/admin/style.css">
<link rel="stylesheet" media="screen"
	href="${contextPath}/css/BlueAD/lightbox/lightbox.css" type="text/css">
</head>

<body>
	<div id="header">
		<jsp:include page="../../top.jsp" />
	</div>
	<div id="navigation">
		<jsp:include page="../community_left.jsp" />
	</div>
	<div id="content">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="25" class="txt_blue_b"><img
					src="${contextPath}/images/BlueAD/admin/title_icon.gif"
					align="absmiddle"><font color="#5555aa"> 갤러리</font></td>
			</tr>
			<tr>
				<td height="1"
					background="${contextPath}/images/BlueAD/admin/title_dot_line.gif"></td>
			</tr>
			<tr>
				<td height="20"></td>
			</tr>
		</table>

		<!-- lightbox(좌,우) -->

		<script src="${contextPath}/js/BlueAD/lightbox/prototype.js"
			type="text/javascript"></script>
		<script
			src="${contextPath}/js/BlueAD/lightbox/scriptaculous.js?load=effects"
			type="text/javascript"></script>
		<script src="${contextPath}/js/BlueAD/lightbox/lightbox.js"
			type="text/javascript"></script>
		<!-- <?
if(!defined("__BLUEAD__")) exit;

if(__ADMIN_ID__ && $bbs_admin == "chk") include "include/list_javascript.php";

//페이지 접근권한 체크
if(!__ADMIN_ID__ || $bbs_admin != "chk") {
  Page_Permission('LIST');
}

if(!$page) $page = 1;

$en_keyword = urlencode($keyword);
$en_cate    = urlencode($scate);
$reply_int  = 10;

//링크 정의 파일
include "include/btn_link.php";

//게시물 수
if(!eregi("[^[:space:]]+",$keyword)) {
  if($is_category == true && $scate) $db->Query("SELECT * FROM BlueAD_$bbs_id WHERE bbs_category = '$scate'");
  else                               $db->Query("SELECT * FROM BlueAD_$bbs_id");
}
else {
  if($is_category == true && $scate) $db->Query("SELECT * FROM BlueAD_$bbs_id WHERE bbs_category = '$scate' AND $key LIKE '%$keyword%'");
  else                               $db->Query("SELECT * FROM BlueAD_$bbs_id WHERE $key LIKE '%$keyword%'");
}

$total_num = $db->recordNum();
$paging = new PAGING($total_num, $page, $CFG_LIST_NUM, $CFG_BLOCK_NUM, $CFG_SKIN);

//td 갯수 지정
$colspan = 11;
if($is_category == true)                $colspan++;
if(__ADMIN_ID__ && $bbs_admin == "chk") $colspan = $colspan + 2;
?>
 -->
	<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<form name="del_form" method="post" action="check_delete.php">
<input type="hidden" name="bbs_id" value="wv_community04">
<input type="hidden" name="page" value="1">
<input type="hidden" name="key" value="">
<input type="hidden" name="keyword" value="">
<input type="hidden" name="bbs_admin" value="chk">
  <tr>
    <td>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
      <tr><td height='25' align='center'><span class='txt_gs'>등록된 게시물이 없습니다</span></td></tr>      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr>
          <td bgcolor="#c4c4c4" height="1"  colspan="3"></td>
        </tr>
        <tr>
          <td bgcolor="#f1f1f1" height="2"  colspan="3"></td>
        </tr>
        <tr>
          <td height="10" colspan="3"></td>
        </tr>
        <tr>
          <td height="35" valign="middle" width="150">
            <a href="board.php?bbs_id=wv_community04&key=&keyword=&bbs_admin=chk"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gallery_gray_140/bluead_list.gif" align="absmiddle" border="0"></a>
            <a href="javascript:All_del();"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gallery_gray_140/bluead_list_sel.gif" align="absmiddle" border="0"></a>          </td>
          <td align="center">
            <table border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="center" valign="middle">
                &nbsp;
                </td>
              </tr>
            </table>
          </td>
          <td align="right" width="150">
            <a href="board.php?bbs_id=wv_community04&mode=write&page=1&key=&keyword=&bbs_admin=chk"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gallery_gray_140/bluead_write.gif" align="absmiddle" border="0"></a>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</form>
</table>
</div>
</body>
</html>