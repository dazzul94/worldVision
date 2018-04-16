<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<?
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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title></title>
<link rel="stylesheet" type="text/css" href="/BlueAD/admin/style.css">
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" class="txt_blue_b"><img src="<?= __ADMIN_IMG_DIR__ ?>/title_icon.gif" align="absmiddle"><font color="#5555aa"> <?= $CFG_NAME ?> </font></td>
  </tr>
  <tr>
    <td height="1" background="<?= __ADMIN_IMG_DIR__ ?>/title_dot_line.gif"></td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</table>
 
<?
}
?>

<!-- lightbox(좌,우) -->
<link rel="stylesheet" media="screen" href="/BlueAD/lightbox/css/lightbox.css" type="text/css">
<script src="/BlueAD/lightbox/js/prototype.js" type="text/javascript"></script>
<script src="/BlueAD/lightbox/js/scriptaculous.js?load=effects" type="text/javascript"></script>
<script src="/BlueAD/lightbox/js/lightbox.js" type="text/javascript"></script>

<!-- lightbox+(확대,좌,우)
<link rel="stylesheet" type="text/css" href="/BlueAD/lightbox2/resource/sample.css" media="screen,tv" title="default"/> 
<link rel="stylesheet" type="text/css" href="/BlueAD/lightbox2/resource/lightbox.css" media="screen,tv" />
<script type="text/javascript" charset="euc-kr" src="/BlueAD/lightbox2/resource/lightbox_plus_min.js"></script>-->

<?
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
</body>
</html>
<?
}
$db->Close();
?>