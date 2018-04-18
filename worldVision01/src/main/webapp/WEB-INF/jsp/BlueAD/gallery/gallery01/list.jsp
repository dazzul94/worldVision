<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
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
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/div.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/style.css">
<link rel="stylesheet" media="screen" href="${contextPath}/css/BlueAD/lightbox/lightbox.css" type="text/css">
</head>

<body>
<div id="header">
<jsp:include page="../../top.jsp"/>
</div>
<div id="navigation">
<jsp:include page="../gallery_left.jsp"/>
</div>
<div id="content">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif" align="absmiddle"><font color="#5555aa"> 음악감상실</font></td>
  </tr>
  <tr>
    <td height="1" background="${contextPath}/images/BlueAD/admin/title_dot_line.gif"></td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</table>
 
<!-- lightbox(좌,우) -->

<script src="${contextPath}/js/BlueAD/lightbox/prototype.js" type="text/javascript"></script>
<script src="${contextPath}/js/BlueAD/lightbox/scriptaculous.js?load=effects" type="text/javascript"></script>
<script src="${contextPath}/js/BlueAD/lightbox/lightbox.js" type="text/javascript"></script>
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
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td>
            <!-- <?
      //카테고리 출력
      if($is_category == true  && (__ADMIN_ID__ && $bbs_admin == "chk")  ) {
      ?>
       -->
     </script><table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td>
			      <select name="scate" class="bbs_select" onchange="location.href='board.php?bbs_id=wv_gallery01&scate='+this.value+'&bbs_admin=chk'">
        <option value="">전체</option>
        <option value="산유화">산유화</option>
<option value="고향의봄">고향의봄</option>
<option value="Count Your Blessing">Count Your Blessing</option>
<option value="시편">시편</option>
<option value="A Voice">A Voice</option>
<option value="50주년 사랑과감사의축제">50주년 사랑과감사의축제</option>
<option value="Europe Concert">Europe Concert</option>
<option value="즐거운 아침">즐거운 아침</option>
<option value="World Folk Song Fest">World Folk Song Fest</option>
<option value="2000세계어린이합창제">2000세계어린이합창제</option>
<option value="2004세계어린이합창제">2004세계어린이합창제</option>
<option value="나 주를 찬양하리라">나 주를 찬양하리라</option>
<option value="블레싱악보">블레싱악보</option>
<option value="크리스마스캐롤및성가곡집">크리스마스캐롤및성가곡집</option>
<option value="Together">Together</option>
<option value="Together 악보">Together 악보</option>
<option value="소원">소원</option>
      </select>
        <!-- <?
        for($i=0; $i < count($cfg_category_arr); $i++) {
          if($cfg_category_arr[$i] == $scate) echo"<option value=\"".$cfg_category_arr[$i]."\" selected>".$cfg_category_arr[$i]."</option>\n";
          else                                echo"<option value=\"".$cfg_category_arr[$i]."\">".$cfg_category_arr[$i]."</option>\n";
        }
        ?>
         -->
      </select>
      <img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/newhot.gif">
    </td>
    <td width="270" align="right" style="padding-right:3">
    <span style="height:15;padding:1pt;font-size:10Px;font-family:verdana;">
      total:<font color="red"><?= $total_num ?></font>&nbsp;&nbsp;
      page:<font color="red"><?= $paging->curPage ?></font>
      /<font color="red"><?= $paging->totalPage ?></font>
    </span> &nbsp;
    <!-- <?
    //RSS Feed
    if($CFG_USE_RSS == "Y" && $CFG_LEV_VIEW == 0) {
    ?>
     -->
    <a href="/BlueAD/rss.php?bbs_id=<?= $bbs_id ?>" target="_blank"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/rss.gif" alt="RSS Feed" align="absmiddle"></a>
    </td>
  </tr>
  <tr>
    <td height="3" colspan="2"></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<!-- <? if(__ADMIN_ID__ && $bbs_admin == "chk") { ?> -->
<form name="del_form" method="post" action="check_delete.php">
<input type="hidden" name="bbs_id" value="<?= $bbs_id ?>">
<input type="hidden" name="page" value="<?= $page ?>">
<input type="hidden" name="key" value="<?= $key ?>">
<input type="hidden" name="keyword" value="<?= $en_keyword ?>">
  <tr>
    <td>  
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
     <tr>
        <td width="4" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_left.gif"></td>
        
        <td width="35" height="29" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_bg.gif"><input type="checkbox" name="allChk" onclick="Allchange(this)" style="cursor:hand; background-color:#f6f5f1"></td>
        
        <td width="40" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_no.gif"></td>
        <td width="1" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_line.gif"></td>
                <td width="80" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_div01.gif"></td>
        <td width="1" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_line.gif"></td>
                <td align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_bg.gif"><span class="bbs_normal"><b><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_subject.gif"></b></span></td>
        <td width="1" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_line.gif"></td>
        <td width="80" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_name2.gif"></td>
        <td width="1" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_line.gif"></td>
        <td width="80" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_name3.gif"></td>
        <td width="1" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_line.gif"></td>
                <td width="45" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_listening.gif"></td>
        <td width="4" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_right.gif"></td>
      </tr>
     
       <!-- ----------------------------리스트---------------------------- -->
<c:forEach items="${list}" var="gallery" varStatus="status">
      <tr height="30">
        <td align="center"></td>
                <td align="center"><input type="checkbox" name="bbs_no[]" value="133" style="cursor:hand"></td>
                <td align="center"><span class="bbs_normal">${gallery.bbs_no }</span>
</td>
        <td align="center"></td>
                <td>
          &nbsp;&nbsp;&nbsp;<a href="${gallery.bbs_no }" class="bbs_link">${gallery.bbs_category} </a>
                                         
        </td>
        <td></td>
        <td>&nbsp;&nbsp;&nbsp;
          <a href="email_send.php?email=d3ZjaG9pckB3dmNob2lyLm9yLmty" target="email_frm" class="bbs_link"><!-- <img src="./upload/1198130437.gif" align="absmiddle"> --></a>  ${gallery.bbs_subject}   </td>
        <td align="center"></td>
         <td align="center"><span class="bbs_normal">${gallery.bbs_opt2 }</span></td>
        <td align="center"></td>
        <td align="center"><span class="bbs_normal"></span></td>
        <td align="center"></td>
        <td align="center"><span class="bbs_normal"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/icon_audio.gif" border="0" align="absmiddle" onclick="listen('225,');" style="cursor:pointer"></span></td>
        <td align="center"></td>
      </tr>
      <tr>
        <td bgcolor="#e6e6e6"></td>
        <td colspan="13" bgcolor="#e6e6e6" height="1"></td>
      </tr>
      </c:forEach>
             <!-- ----------------------------리스트---------------------------- -->
      </table>
      
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="35" valign="middle" width="150">
            <a href="<?= $search_cancel_link ?>"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_list.gif" align="absmiddle" border="0"></a>
            <a href="javascript:All_del();"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/bluead_list_sel.gif" align="absmiddle" border="0"></a><? } ?>
          </td>
          <td align="center">
            <table border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="center" valign="middle">
                </td>
              </tr>
            </table>
          </td>
          <td align="right" width="150">
          </td>
        </tr>
      </table>
    </td>
  </tr> 
</form>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="3" height="25"></td>
  </tr>
  <tr>
    <td width="5"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/search_left.gif"></td>
    <td align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/search_bg.gif">
      <table border="0" cellspacing="0" cellpadding="0">
        <form name="search_form" method="get" action="board.php">
        <input type="hidden" name="bbs_id" value="<?= $bbs_id ?>">
        <tr>
          <td>
          <img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/search_t.gif" align="absmiddle">
          <select name="key" class="txtarea">
            <option value="bbs_subject" <? if($key == "bbs_subject") echo"selected"; ?>>제목</option>
            <option value="bbs_content" <? if($key == "bbs_content") echo"selected"; ?>>내용</option>
            <option value="bbs_name" <? if($key == "bbs_name") echo"selected"; ?>>글쓴이</option>
          </select>
          <input type="text" size="50" maxlength="30" name="keyword" value="<?= $keyword ?>" class="bbs_input_search">
          <input type="image" src="<?= __BBS_SKIN_DIR__ ?>/images/bluead_search.gif" align="absmiddle">
          <!--a href="</?= $search_cancel_link ?>"><img src="</?= __BBS_SKIN_DIR__ ?>/images/search_cancel.gif" align="absmiddle"></a-->
          </td>
        </tr>
        </form>
      </table>
    </td>
    <td width="5"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/search_right.gif"></td>
  </tr>
  <tr>
    <td colspan="3" height="25"></td>
  </tr>
 
</table>
</td>
</tr>
</table>
</div>
</body>

</html>