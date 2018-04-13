<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<?
session_start();

include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_db.php";
$db = new DB();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/define.php";
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_paging.php";
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/fun/function.php";

if(!$page) $page = 1;
$en_keyword = urlencode($keyword);
$Query_Where = " WHERE 1";
if ($member_join_type) $Query_Where .= " and member_join_type='$member_join_type'";
if(eregi("[^[:space:]]+",$keyword)) {
	 $Query_Where .= " and $key LIKE '%$keyword%'";
}
if($mode=="lev_chn"){
	$db->Query("
              UPDATE
                BlueAD_member
              SET
				member_join_type  = '$lev'
              WHERE
                no  = '$no'
	 "); 
}

$db->Query("SELECT * FROM BlueAD_member".$Query_Where);
$total_num = $db->recordNum();
$paging = new PAGING($total_num, $page, 20, 10, 'common');
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link href="../style.css" rel="stylesheet" type="text/css">
<script language="javascript">
	function chn_lev(lev,url){
		location.href = url + "&mode=lev_chn&lev="+lev;
	}
</script>
</head>
<body>
<? include "title.php" ?>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>    
    <td style="padding:2;"><select onchange="location.href='<?=$PHP_SELF?>?member_join_type='+this.value">
	  <option value="">:: 전체보기 ::</option>
        <option value="1"<?if($member_join_type=="1"){echo " selected";}?>>후원자</option>
        <option value="2" style="color:blue;"<?if($member_join_type=="2"){echo " selected";}?>>기타</option>
		<option value="3" style="color:green;"<?if($member_join_type=="3"){echo " selected";}?>>합창단 교사/직원</option>
		<option value="5" style="color:#660000;"<?if($member_join_type=="5"){echo " selected";}?>>단원/자모</option>
		<option value="10" style="color:red;"<?if($member_join_type=="10"){echo " selected";}?>>동문</option>
	</select></td>
	<td align="right" style="font-size:10Px;font-family:verdana;">
      total:<font color="red"> <?= $total_num ?>
      </font>&nbsp;&nbsp;
      page:<font color="red"> <?= $paging->curPage ?>
      </font>/<font color="red"><?= $paging->totalPage ?>
      </font>    </td>
  </tr>
</table>
<table border="0" cellspacing="1" cellpadding="4" width="100%" bgcolor="#cad4e3">
  <tr height="25" align="center">
    <td width="50" class="field_b">번호</td>    
    <td width="100" class="field_b">이름</td>
    <td width="100" class="field_b">아이디</td>    
    <td class="field_b">주 소</td>
    <td width="120" class="field_b">연락처</td>   
    <td width="100" class="field_b">가입일</td>
	<td width="150" class="field_b">합창단과의 관계</td>
  </tr>
<?
$db->Query("SELECT * FROM BlueAD_member".$Query_Where." ORDER BY member_join_date DESC LIMIT $paging->first, $paging->pageSize");
$article_num = $total_num - 20 * ($paging->curPage - 1);
if($total_num > 0) {
  while($row = $db->Fetch()) {
?>
  <tr bgcolor="#ffffff" height="30" onMouseOver=this.style.background="#f5f5f5" onMouseOut=this.style.background="#ffffff">
    <td align="center"><?= $article_num ?></td>    
    <td align="center" onclick="location.href('view.php?no=<?= $row["no"] ?>&bbs_id=member&page=<?= $page ?>&key=<?= $key?>&keyword=<?= $en_keyword ?>');" style="cursor:hand"><?= $row["member_name"] ?></td>
    <td align="center" onclick="location.href('view.php?no=<?= $row["no"] ?>&bbs_id=member&page=<?= $page ?>&key=<?= $key?>&keyword=<?= $en_keyword ?>');" style="cursor:hand"><?= $row["member_id"] ?></td>
    <td align="center" onclick="location.href('view.php?no=<?= $row["no"] ?>&bbs_id=member&page=<?= $page ?>&key=<?= $key?>&keyword=<?= $en_keyword ?>');" style="cursor:hand"><?= $row["member_address1"] ?></td>
    <td align="center" onclick="location.href('view.php?no=<?= $row["no"] ?>&bbs_id=member&page=<?= $page ?>&key=<?= $key?>&keyword=<?= $en_keyword ?>');" style="cursor:hand"><?= $row["member_tel1"] ?> - <?= $row["member_tel2"] ?> - <?= $row["member_tel3"] ?></td>        
    <td align="center" onclick="location.href('view.php?no=<?= $row["no"] ?>&bbs_id=member&page=<?= $page ?>&key=<?= $key?>&keyword=<?= $en_keyword ?>');" style="cursor:hand"><?= Date_Cut($row["member_join_date"],'/','L'); ?></td>
	<td align="center">
      <select name="level" onChange="chn_lev(this.value,'<?=$PHP_SELF?>?no=<?= $row["no"] ?>&page=<?=$page?>&key=<?=$key?>&keyword=<?=$keyword?>&member_join_type=<?=$member_join_type?>');">
        <option value="1"<?if($row["member_join_type"]=="1"){echo " selected";}?>>후원자</option>
        <option value="2" style="color:blue;"<?if($row["member_join_type"]=="2"){echo " selected";}?>>기타</option>
		<option value="3" style="color:green;"<?if($row["member_join_type"]=="3"){echo " selected";}?>>합창단 교사/직원</option>
		<option value="5" style="color:#660000;"<?if($row["member_join_type"]=="5"){echo " selected";}?>>단원/자모</option>
		<option value="10" style="color:red;"<?if($row["member_join_type"]=="10"){echo " selected";}?>>동문</option>
      </select>
    </td>
  </tr>
<?
  $article_num--;
  }
}
else {
  echo"<tr><td height=\"27\" bgcolor=\"#FFFFFF\" align=\"center\" colspan=\"9\">등록된 게시물이 없습니다.</td></tr>\n";
}
?>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td valign="middle" width="100"><input type="image" src="/BlueAD/admin/images/btn_list.gif" onfocus="this.blur();" onClick="location.href='list.php'"></td>
    <td align="center" height="50">
	<?
      $page_link = "&key=$key&keyword=$en_keyword&member_join_type=$member_join_type";
      if($total_num > 0) {
        $paging->addQueryString($page_link);
        $paging->showPage();
      }
      else {
        echo"&nbsp;\n";
      }
      ?>
	</td>
    <td align="right" width="100"></td>
  </tr>
</table>
<br>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<form method="post" action="<?=$PHP_SELF?>">
<input type="hidden" name="member_join_type" value="<?=$member_join_type?>">
  <tr>
    <td align="center">
      <select name="key">
      <option value="member_name" <?if($key=="member_name"){echo "selected";}?>>이름</option>
      <option value="member_id" <?if($key=="member_id"){echo "selected";}?>>아이디</option>
      </select>
      <input type="text" size="20" maxlength="30" name="keyword" value="<?= $keyword ?>" class="b_input">
      <input type="image" src="/BlueAD/admin/images/btn_search.gif" align="absmiddle" onfocus="this.blur();">
    </td>
  </tr>
</form>
</table>
</body>
</html>
<?

$db->Close();
?>