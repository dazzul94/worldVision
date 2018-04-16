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
<link rel='stylesheet' href='${contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel="stylesheet" media="screen" href="${contextPath}/css/BlueAD/lightbox/lightbox.css" type="text/css">
</head>

<body>
<div id="header">
<jsp:include page="../top.jsp"/>
</div>
<div id="navigation">
<jsp:include page="../left.jsp"/>
</div>
<div id="content">
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
      <select name="scate" class="bbs_select" onchange="location.href='board.php?bbs_id=<?= $bbs_id ?>&scate='+this.value+'<? if(__ADMIN_ID__ && $bbs_admin == "chk") echo"&bbs_admin=chk"; ?>'">
        <option value="">전체</option>
        <!-- <?
        for($i=0; $i < count($cfg_category_arr); $i++) {
          if($cfg_category_arr[$i] == $scate) echo"<option value=\"".$cfg_category_arr[$i]."\" selected>".$cfg_category_arr[$i]."</option>\n";
          else                                echo"<option value=\"".$cfg_category_arr[$i]."\">".$cfg_category_arr[$i]."</option>\n";
        }
        ?>
         -->
      </select>
      <img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/newhot.gif">
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
    <a href="/BlueAD/rss.php?bbs_id=<?= $bbs_id ?>" target="_blank"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/rss.gif" alt="RSS Feed" align="absmiddle"></a>
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
<!-- <?
if($is_category == true) {
  echo "<input type=\"hidden\" name=\"scate\" value=\"".$en_cate."\">\n";
}
if(__ADMIN_ID__ && $bbs_admin == "chk") {
  echo "<input type=\"hidden\" name=\"bbs_admin\" value=\"chk\">\n";
}
}
?>
 -->
  <tr>
    <td>  
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="4" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_left.gif"></td>
        <td width="35" height="29" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif"><input type="checkbox" name="allChk" onClick="Allchange(this)" style="cursor:hand; background-color:#f6f5f1"></td>
        <td width="40" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_no.gif"></td>
        <td width="1" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_line.gif"></td>
        <td align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif"><span class="bbs_normal"><b><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_subject.gif"></b></span></td>
        <td width="1" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_line.gif"></td>
        <td width="90" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_name.gif"></td>
        <td width="1" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_line.gif"></td>
        <td width="75" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_day.gif"></td>
        <td width="1" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_line.gif"></td>
        <td width="45" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_hit.gif"></td>
        <td width="4" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_right.gif"></td>
      </tr>
      <!-- <?
      if($is_category == true && $scate) $db->Query("SELECT * FROM BlueAD_$bbs_id WHERE bbs_notice = 'Y' and bbs_category = '$scate' ORDER BY bbs_no DESC"); else  $db->Query("SELECT * FROM BlueAD_$bbs_id WHERE bbs_notice = 'Y' ORDER BY bbs_no DESC");
      //공지
     
      $notice_num = $db->recordNum();
      if($notice_num > 0 && !eregi("[^[:space:]]+",$keyword)) {
      while($notice = $db->Fetch()) {
        $notice[bbs_subject] = String_Cut(htmlspecialchars(stripslashes($notice[bbs_subject])),$CFG_SUBJECT_LENGTH,'..');
        $subject_link = "board.php?bbs_id=$bbs_id&mode=view&bbs_no=$notice[bbs_no]&page=$page&key=$key&keyword=$en_keyword";
        if($is_category == true) {
          $subject_link.="&scate=$en_cate";
        }
        if(__ADMIN_ID__ && $bbs_admin == "chk") {
          $subject_link.="&bbs_admin=chk";
        }
      ?>
       -->
      <tr height="30">
        <td align="center" bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1">&nbsp;</td>
        <td align="center" bgcolor="#f1f1f1"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/icon_notice.gif" border="0" align="absmiddle"></td>
        <td align="center" bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1"><span class="bbs_normal">공지</span></td>
        <td align="center" bgcolor="#f1f1f1"></td>
        <td bgcolor="#f1f1f1">
          &nbsp;&nbsp;&nbsp;<a href="<?= $subject_link ?>" class="bbs_link"><?= $notice[bbs_subject] ?></a>
          <?= Comm_Num($bbs_id, $notice[bbs_no]) ?>
          <?= Secret_Icon($notice[bbs_secret]) ?>
          <?= New_Icon($notice[bbs_date]) ?>
          <?= Hot_Icon($notice[bbs_hit]) ?>    </td>
        <td bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1">
          <!-- <?
          if($CFG_AUTO_EMAIL_LINK == "Y" && $notice[bbs_email]) {
            echo "<a href=\"email_send.php?email=".base64_encode($notice[bbs_email])."\" target=\"email_frm\" class=\"bbs_link\">";
            if($notice[bbs_adminid] && $notice[bbs_icon]) echo"<img src=\"./upload/".$notice[bbs_icon]."\" align=\"absmiddle\">";
            else                                          echo $notice[bbs_name];
            echo "</a>";
          }
          else {
            if($notice[bbs_adminid] && $notice[bbs_icon]) echo"<img src=\"./upload/".$notice[bbs_icon]."\" align=\"absmiddle\">";
            else                                          echo"<span class=\"bbs_normal\">".$notice[bbs_name]."</span>";
          }
          ?>     --></td>
        <td align="center" bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1"><span class="bbs_normal"><?= Date_Cut($notice[bbs_date],$CFG_LIST_DATE_TYPE,'L'); ?></span></td>
        <td align="center" bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1"><span class="bbs_normal"><?= $notice[bbs_hit] ?></span></td>
        <td align="center" bgcolor="#f1f1f1"></td>
      </tr>
      <tr>
        <td bgcolor="#e6e6e6"></td>
        <td colspan="<?= $colspan ?>" bgcolor="#e6e6e6" height="1"></td>
      </tr>
<!--       
      //게시물출력
      if(!eregi("[^[:space:]]+",$keyword)) {
      if($is_category == true && $scate) $db->Query("SELECT * FROM BlueAD_$bbs_id WHERE bbs_category = '$scate' ORDER BY bbs_fid DESC, bbs_thread ASC LIMIT $paging->first, $paging->pageSize");
      else                               $db->Query("SELECT * FROM BlueAD_$bbs_id ORDER BY bbs_fid DESC, bbs_thread ASC LIMIT $paging->first, $paging->pageSize");
      }
      else {
      if($is_category == true && $scate) $db->Query("SELECT * FROM BlueAD_$bbs_id WHERE bbs_category = '$scate' AND $key LIKE '%$keyword%' ORDER BY bbs_fid DESC, bbs_thread ASC LIMIT $paging->first, $paging->pageSize");
      else                               $db->Query("SELECT * FROM BlueAD_$bbs_id WHERE $key LIKE '%$keyword%' ORDER BY bbs_fid DESC, bbs_thread ASC LIMIT $paging->first, $paging->pageSize");
      }
      
      $article_num = $total_num - $CFG_LIST_NUM * ($paging->curPage - 1);
      
      if($total_num > 0) {
      while($row = $db->Fetch()) {
      
        //카테고리링크
        $category_link = "board.php?bbs_id=$bbs_id&scate=$row[bbs_category]";
        if(__ADMIN_ID__ && $bbs_admin == "chk") {
          $category_link.="&bbs_admin=chk";
        }
      
        //html 및 역슬래쉬 제거
       //$row[bbs_subject] = String_Cut(htmlspecialchars(stripslashes($row[bbs_subject])),$CFG_SUBJECT_LENGTH,'..');
      
      //제목,내용 치환,html 및 역슬래쉬 제거
      $row[bbs_subject] = stripslashes(Tag_Allowed(String_Cut($row[bbs_subject],$CFG_SUBJECT_LENGTH,'..'),htmlspecialchars($row[bbs_html])));
      
        // 검색어와 일치시 폰트 및 배경색
        if($key == "bbs_name" && strlen($keyword) > 0)    $row[bbs_name] = str_replace("$keyword","<span style='background-color:$CFG_SEARCH_BACK_COLOR;'><font color='$CFG_SEARCH_FONT_COLOR'>$keyword</font></span>",$row[bbs_name]);
        if($key == "bbs_subject" && strlen($keyword) > 0) $row[bbs_subject] = str_replace("$keyword","<span style='background-color:$CFG_SEARCH_BACK_COLOR;'><font color='$CFG_SEARCH_FONT_COLOR'>$keyword</font></span>",$row[bbs_subject]);
      
        //답변일 경우 indent
        $nbsp = "";
        $reply_icon = "";
        $spacer = strlen($row[bbs_thread])-1;
        if($spacer > 0) {
          if($spacer > $reply_int) $spacer = $reply_int;
          for($j=0; $j < $spacer; $j++) {
            $nbsp .= "&nbsp;&nbsp;";
          }
          //답변일 경우 아이콘
          if($spacer != 0) $reply_icon="<img src=\"".__BBS_SKIN_DIR__."/images/icon_reply.gif\" border=\"0\" align=\"absmiddle\">\n";
        }
      
        //제목링크
        $subject_link = "board.php?bbs_id=$bbs_id&mode=view&bbs_no=$row[bbs_no]&page=$page&key=$key&keyword=$en_keyword";
        if($is_category == true) {
          $subject_link.="&scate=$en_cate";
        }
        if(__ADMIN_ID__ && $bbs_admin == "chk") {
          $subject_link.="&bbs_admin=chk";
        }
      ?>
       -->
      <tr height="30">
        <td align="center"></td>
        <? if(__ADMIN_ID__ && $bbs_admin == "chk") { ?>
        <td align="center"><input type="checkbox" name="bbs_no[]" value="<?= $row[bbs_no] ?>" style="cursor:hand"></td>
        <? } ?>
        <td align="center"><? if($row[bbs_no] == $bbs_no) echo"<img src=\"".__BBS_SKIN_DIR__."/images/icon_now_view.gif\" border=\"0\" align=\"absmiddle\">\n"; else echo "<span class=\"bbs_normal\">$article_num</span>\n"; ?></td>
        <td align="center"></td>
        <? if($is_category == true) { ?>
        <td align="center"><a href="<?= $category_link ?>" class="bbs_link"><?= $row[bbs_category] ?></a></td>
        <td align="center"></td>
        <? } ?>
        <td>
          &nbsp;&nbsp;&nbsp;<?= $nbsp ?><?= $reply_icon ?><a href="<?= $subject_link ?>" class="bbs_link"><?= $row[bbs_subject] ?></a>
          <?= Comm_Num($bbs_id, $row[bbs_no]) ?>
          <?= Secret_Icon($row[bbs_secret]) ?>
          <?= New_Icon($row[bbs_date]) ?>
          <?= Hot_Icon($row[bbs_hit]) ?> 
        </td>
        <td></td>
        <td align="center">
          <?
          if($CFG_AUTO_EMAIL_LINK == "Y" && $row[bbs_email]) {
            echo "<a href=\"email_send.php?email=".base64_encode($row[bbs_email])."\" target=\"email_frm\" class=\"bbs_link\">";
            if($row[bbs_adminid] && $row[bbs_icon]) echo"<img src=\"./upload/".$row[bbs_icon]."\" align=\"absmiddle\">";
            else                                    echo $row[bbs_name];
            echo "</a>";
          }
          else {
            if($row[bbs_adminid] && $row[bbs_icon]) echo"<img src=\"./upload/".$row[bbs_icon]."\" align=\"absmiddle\">";
            else                                    echo"<span class=\"bbs_normal\">".$row[bbs_name]."</span>";
          }
          ?>
        </td>
        <td align="center"></td>
        <td align="center"><span class="bbs_normal"><?= Date_Cut($row[bbs_date],$CFG_LIST_DATE_TYPE,'L'); ?></span></td>
        <td align="center"></td>
        <td align="center"><span class="bbs_normal"><?= $row[bbs_hit] ?></span></td>
        <td align="center"></td>
      </tr>
      <tr>
        <td bgcolor="#e6e6e6"></td>
        <td colspan="<?= $colspan ?>" bgcolor="#e6e6e6" height="1"></td>
      </tr>
      <!-- <?
      $article_num--;
      }
      }
      else {
      echo"<tr><td height=\"30\" bgcolor=\"#ffffff\" align=\"center\" colspan=\"".$colspan."\"><span class=\"bbs_normal\">등록된 게시물이 없습니다.</span></td></tr>\n";
      }
      ?>
       -->
      </table>
      <table width="<?= $CFG_WIDTH ?>" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="35" valign="middle" width="150">
            <a href="<?= $search_cancel_link ?>"><img src="<?= __BBS_SKIN_DIR__ ?>/images/bluead_list.gif" align="absmiddle" border="0"></a>
            <? if(__ADMIN_ID__ && $bbs_admin == "chk") { ?><a href="javascript:All_del();"><img src="<?= __BBS_SKIN_DIR__ ?>/images/bluead_list_sel.gif" align="absmiddle" border="0"></a><? } ?>
          </td>
          <td align="center">
            <table border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="center" valign="middle">
                <?
                //페이지 분할
                $page_link = "&bbs_id=$bbs_id&key=$key&keyword=$en_keyword";
                if($is_category == true)                $page_link.="&scate=$en_cate";
                if(__ADMIN_ID__ && $bbs_admin == "chk") $page_link.="&bbs_admin=chk";
                if($total_num > 0) {
                  $paging->addQueryString($page_link);
                  $paging->showPage();
                }
                else {
                  echo"&nbsp;\n";
                }
                ?>
                </td>
              </tr>
            </table>
          </td>
          <td align="right" width="150">
          <!--   <?
            //쓰기권한
            if($CFG_LEV_WRITE == 0) {
              echo"<a href=\"".$write_link."\"><img src=\"".__BBS_SKIN_DIR__."/images/bluead_write.gif\" align=\"absmiddle\" border=\"0\"></a>\n";
            }
            else {
              if((__ADMIN_ID__ && $bbs_admin == "chk") || ($CFG_LEV_WRITE <= __MEMBER_LEVEL__)) echo"<a href=\"".$write_link."\"><img src=\"".__BBS_SKIN_DIR__."/images/bluead_write.gif\" align=\"absmiddle\" border=\"0\"></a>\n";
              else echo"&nbsp;\n";
            }
            ?>
             -->
          </td>
        </tr>
      </table>
    </td>
  </tr> 
</form>
</table>
<!-- <?
//검색
if($CFG_USE_SEARCH == "Y") {
?>
 -->
<table width="<?= $CFG_WIDTH ?>" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="3" height="25"></td>
  </tr>
  <tr>
    <td width="5"><img src="<?= __BBS_SKIN_DIR__ ?>/images/search_left.gif"></td>
    <td align="center" background="<?= __BBS_SKIN_DIR__ ?>/images/search_bg.gif">
      <table border="0" cellspacing="0" cellpadding="0">
        <form name="search_form" method="get" action="board.php">
        <input type="hidden" name="bbs_id" value="<?= $bbs_id ?>">
        <?
        if($is_category == true) {
          echo "<input type=\"hidden\" name=\"scate\" value=\"".$scate."\">\n";
        }
        if(__ADMIN_ID__ && $bbs_admin == "chk") {
          echo "<input type=\"hidden\" name=\"bbs_admin\" value=\"chk\">\n";
        }
        ?>
        <tr>
          <td>
          <img src="<?= __BBS_SKIN_DIR__ ?>/images/search_t.gif" align="absmiddle">
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
    <td width="5"><img src="<?= __BBS_SKIN_DIR__ ?>/images/search_right.gif"></td>
  </tr>
  <tr>
    <td colspan="3" height="25"></td>
  </tr>
</table>
<!-- lightbox+(확대,좌,우)
<link rel="stylesheet" type="text/css" href="/BlueAD/lightbox2/resource/sample.css" media="screen,tv" title="default"/> 
<link rel="stylesheet" type="text/css" href="/BlueAD/lightbox2/resource/lightbox.css" media="screen,tv" />
<script type="text/javascript" charset="euc-kr" src="/BlueAD/lightbox2/resource/lightbox_plus_min.js"></script>-->

<!-- <?
if(!__ADMIN_ID__ || $bbs_admin != "chk") {
    if($CFG_THUMBNAIL_TYPE=="C" && $CFG_TOP_FLASH == "Y"){      
?>
    <table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><script language="javascript">MakeFlash("main.swf?bbs_id=<?=$bbs_id?>","780","250");</script></td>
      </tr>
    </table>
<?
    }
}   
?>

<? include $_SERVER['DOCUMENT_ROOT']."/BlueAD/editor/func_editor.php"; ?>
   

<? echo"<script language=\"javascript\" src=\"". __JS_DIR__."/new_win.js\"></script>\n";
echo"<link rel=\"stylesheet\" type=\"text/css\" href=\"".__BBS_SKIN_DIR__."/style.css\">\n";

switch ($mode) {
  case "list"     : include "list.php";     break;
  case "write"    : include "write.php";    break;
  case "view"     : include "view.php";     break;
  case "password" : include "password.php"; break;
  default         : include "list.php";     break;
}

if(!__ADMIN_ID__ || $bbs_admin != "chk") {
  if(trim($CFG_FOOTER)) echo Tag_Allowed($CFG_FOOTER,3);
  if($CFG_IFRAME == "N") {
    include $_SERVER['DOCUMENT_ROOT']."/index/foot_top.php";
    include $_SERVER['DOCUMENT_ROOT']."/index/foot.php";
  }
}
else {
?>
 -->
</div>
</body>
</html>
