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
<script>
	var obj = document.getElementsByName('check[]');
	function setNo() {

	  var cnt = 0;
	  CheckedItems = "";

	  for(var i=0; i<obj.length; i++) {
		if(obj[i].checked == true) {
		 CheckedItems = CheckedItems + obj[i].value + ","
		}
	  }
	  CheckedItems = CheckedItems.substr(0,CheckedItems.length-1);
	  document.del_form.no.value=CheckedItems;
	  
	  if(CheckedItems == "") {
		alert("선택해 주세요");
		return;
	  }

	  else {
		if(confirm('선택하신 데이터를 모두 삭제 하시겠습니까?\n\n삭제후 복구는 불가능 합니다.'))
		
		document.del_form.submit();
		else  return;
	  }
	}

	function Allchange(f) {
	  if(f.checked == true) {
		for(i = 0; i < obj.length; i++) {
		  obj[i].checked = true;
		}
	  }
	  else {
		for(i = 0; i < obj.length; i++) {
		  obj[i].checked = false;
		}
	  }
	}

	function All_del() {
	  var cnt=0;
	  for(var i=0; i<obj.length; i++) {
		if(obj[i].checked == true) {
		  cnt=1;;
		  break;
		}
	  }
	  if(cnt==0) {
		alert("삭제하실 항목을 선택해 주세요");
		return;
	  }
	  if(confirm('선택하신 데이터를 모두 삭제 하시겠습니까?\n\n삭제후 복구는 불가능 합니다.')) document.del_form.submit();
	  else  return;
	}

function sort_k1(k_year){
	form = document.del_form;
	form1 = document.s_form;
	key = form1.key.value;
	keyword = form1.keyword.value;
	bbs_id = form.bbs_id.value;
	year = form.k_year.value;
	month = form.k_month.value;
	date = form.k_date.value;
	location.href('/BlueAD/admin/history/list.php?bbs_id='+bbs_id+'&key='+key+'&keyword='+keyword+'&k_year='+k_year+'&k_month='+month+'&k_date='+date);
}

//달 sort
function sort_k2(k_month){
	form = document.del_form;
	form1 = document.s_form;
	key = form1.key.value;
	keyword = form1.keyword.value;
	bbs_id = form.bbs_id.value;
	year = form.k_year.value;
	month = form.k_month.value;
	date = form.k_date.value;
	location.href('/BlueAD/admin/history/list.php?bbs_id='+bbs_id+'&key='+key+'&keyword='+keyword+'&k_year='+year+'&k_month='+k_month+'&k_date='+date);
}
//일 sort
function sort_k3(k_date){
	form = document.del_form;
	form1 = document.s_form;
	key = form1.key.value;
	keyword = form1.keyword.value;
	bbs_id = form.bbs_id.value;
	year = form.k_year.value;
	month = form.k_month.value;
	date = form.k_date.value;
	location.href('/BlueAD/admin/history/list.php?bbs_id='+bbs_id+'&key='+key+'&keyword='+keyword+'&k_year='+year+'&k_month='+month+'&k_date='+k_date);
}
//시간 sort
function sort_k6(k_time){
	form = document.del_form;
	form1 = document.s_form;
	key = form1.key.value;
	keyword = form1.keyword.value;
	bbs_id = form.bbs_id.value;
	year = form.k_year.value;
	month = form.k_month.value;
	date = form.k_date.value;
	location.href('/BlueAD/admin/history/list.php?bbs_id='+bbs_id+'&key='+key+'&keyword='+keyword+'&k_year='+year+'&k_month='+month+'&k_date='+date);
}
//예약현황 sort
function sort_k4(k_chk){
	form = document.del_form;
	form1 = document.s_form;
	key = form1.key.value;
	keyword = form1.keyword.value;
	bbs_id = form.bbs_id.value;
	year = form.k_year.value;
	month = form.k_month.value;
	date = form.k_date.value;
	location.href('/BlueAD/admin/history/list.php?bbs_id='+bbs_id+'&key='+key+'&keyword='+keyword+'&k_year='+year+'&k_month='+month+'&k_date='+date);
}
//서비스명 sort
function sort_k5(k_servi){
	form = document.del_form;
	form1 = document.s_form;
	key = form1.key.value;
	keyword = form1.keyword.value;
	bbs_id = form.bbs_id.value;
	year = form.k_year.value;
	month = form.k_month.value;
	date = form.k_date.value;
	location.href('/BlueAD/admin/history/list.php?bbs_id='+bbs_id+'&key='+key+'&keyword='+keyword+'&k_year='+year+'&k_month='+month+'&k_date='+date);
}

function keySearch(){
	form1 = document.s_form;
	if(form1.keyword.value == ""){
		alert("검색하실 키워드를 입력하세요");
		return false;
	}

	form1.submit();
}

function key_all(){
	form = document.del_form;
	form1 = document.s_form;
	key = "";
	keyword = "";
	bbs_id = form.bbs_id.value;
	location.href('/BlueAD/admin/history/list.php?bbs_id='+bbs_id+'&key='+key+'&keyword='+keyword);
}

</script>

<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
	<tr>
		<td height=30><a href='./list.php?bbs_id=history&cate=1'><span <?=($cate=="1")?"class='tab_bold'":""?>>국내</span></a> | <a href='./list.php?bbs_id=history&cate=2'><span <?=($cate=="2")?"class='tab_bold'":""?>>국외</span></a></td>
	</tr>
  <tr>    
    <td align="right" style="font-size:10Px;font-family:verdana;">		
     total:<font color="red"> <?= $total_num ?></font>&nbsp;&nbsp;
     page:<font color="red"> <?= $paging->curPage ?></font>/<font color="red"><?= $paging->totalPage ?></font>
   </td>
  </tr>
</table>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<form name="del_form" method="post" action="check_delete.php">
<input type="hidden" name="bbs_id" value="<?= $bbs_id ?>">
<input type="hidden" name="page" value="<?= $page ?>">
<input type="hidden" name="key" value="<?= $key ?>">
<input type="hidden" name="keyword" value="<?= $en_keyword ?>">
<input type="hidden" name="no" value="">
<input type="hidden" name="del_form" value="del_form">
<input type="hidden" name="cate" value="<?=$cate?>">
  <tr>
    <td>
      <table border="0" cellspacing="1" cellpadding="0" width="100%" align="center" bgcolor="#cad4e3">
        <tr height="25" align="center">
          <td width="40" class="field_b"><input type="checkbox" name="allChk" onClick="Allchange(this)" style="cursor:hand" ></td>
          <td width="50" class="field_b">번호</td>
          <td width="80" class="field_b">년도</td>
          <td width="80" class="field_b">월 / 일</td>
          <td class="field_b">내용</td>
          <td width="100" class="field_b">등록일</td>
        </tr>
        <?
        //게시물출력
        if((!eregi("[^[:space:]]+",$keyword))){								
            $db->Query("SELECT * FROM BlueAD_$bbs_id where cate='$cate' ORDER BY year DESC,month DESC,date DESC LIMIT $paging->first, $paging->pageSize");
        }else{
                $db->Query("SELECT * FROM BlueAD_$bbs_id WHERE cate='$cate' and  $key_sql ORDER BY year DESC,month DESC,date DESC LIMIT $paging->first, $paging->pageSize");
        }
        
        $article_num = $total_num - 20 * ($paging->curPage - 1);
        
        if($total_num > 0) {
          while($row = $db->Fetch()) {
        ?>
          <tr height="30" bgcolor="#FFFFFF" onMouseOver="this.style.background='#f5f5f5'" onMouseOut="this.style.background='#FFFFFF'">
            <td align="center"><input type="checkbox" name="check[]" value="<?= $row[no] ?>" style="cursor:hand" ></td>
            <td align="center"><?= $article_num ?></td>
            <td align="center"><?= $row[year] ?></td>
            <td align="center"><?= $row[month] ?> . <?= $row[date] ?></td>
            <td onClick="location.href('write.php?bbs_id=<?= $bbs_id ?>&no=<?=$row[no]?>&mode=modify&page=<?= $page ?>&cate=<?=$cate?>&key=<?= $key ?>&keyword=<?= $en_keyword ?>&k_year=<?= $k_year ?>&k_month=<?= $k_month ?>&k_date=<?= $k_date ?>');" style="cursor:hand; padding:10px">
						<!--?= stripslashes(string_cut($row[contents],"74","...")) ?--><?= nl2br($row[contents]) ?></td>
            <td align="center"><?= Date_Cut($row[wdate],'/','L') ?></td>
          </tr>
        <?
          $article_num--;
          }
        } else {
          echo"<tr><td height=\"27\" bgcolor=\"#ffffff\" align=\"center\" colspan=\"9\">등록된 게시물이 없습니다.</td></tr>\n";
        }
        ?>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr height="5">
          <td colspan="3"></td>
        </tr>
        <tr>
          <td valign="middle" width="200">
          <img src="/BlueAD/admin/images/btn_list.gif" style="cursor:hand" onClick="location.href='list.php?bbs_id=<?=$bbs_id?>&cate=<?=$cate?>'">
          <img src="/BlueAD/admin/images/btn_seldel.gif" style="cursor:hand" onClick="setNo()">
        </td>
          <td height="50" align="center">
          <?
            $page_link = "&key=$key&keyword=$en_keyword&bbs_id=$bbs_id&cate=$cate";
            if($total_num > 0) {
              $paging->addQueryString($page_link);
              $paging->showPage();
            }
            else {
              echo"&nbsp;\n";
            }
          ?>          </td>
          <td align="right" width="200">
          <img src="/BlueAD/admin/images/btn_write.gif" align="absmiddle" onClick="location.href='write.php?bbs_id=<?=$bbs_id?>&mode=write&cate=<?=$cate?>'" style="cursor:hand">
        </td>
        </tr>
      
      </table>
    </td>
  </tr>
</form>
</table>
<br>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<form name="s_form" method="post" action="list.php">
<input type="hidden" name="bbs_id" value="<?=$bbs_id?>">
<input type="hidden" name="cate" value="<?=$cate?>">
 <tr>
  <td align="center">
   <select name="key">
     <option value="contents" <? if($key=="contents") echo"selected"; ?>>내용</option>
   </select>
   <input type="text" size="20" maxlength="30" name="keyword" value="<?= $keyword ?>" onFocus="this.select()">
   <input type="image" src="/BlueAD/admin/images/btn_search.gif" align="absmiddle" onFocus="this.blur();" onClick="keySearch()">
   <!--input type="button" value="초기화" class="input_btn" onClick="key_all()"-->
  </td>
 </tr>
 
</form>

</table>

</body>
</html>