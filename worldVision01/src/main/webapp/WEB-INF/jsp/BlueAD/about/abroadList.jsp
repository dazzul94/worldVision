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
<jsp:include page="about_left.jsp"/>
</div>
<div id="content">
<h1>국외</h1>
<!--  회원관리 이미지 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif" align="absmiddle">연혁관리</td>
  </tr>
  <tr>
    <td height="4" background="${contextPath}/images/BlueAD/admin/title_dot_line.gif"></td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</table>

<!--국내 국외 토탈.페이지 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
        <td height=30><a href='list'><span >국내</span></a> | <a href='abroadList'><span >국외</span></a></td>
    </tr>
  <tr>    
    <td align="right" style="font-size:10Px;font-family:verdana;">      
     total:<font color="red"> <?= $total_num ?></font>&nbsp;&nbsp;
     page:<font color="red"> <?= $paging->curPage ?></font>/<font color="red"><?= $paging->totalPage ?></font>
   </td>
  </tr>
</table>


<!-- 테이블 시작  -->
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
       
       
       
       
       
       
       
       
       
       
       <!-- 반복문 시작 -->
       <c:forEach items="${list}" var="about" varStatus="status">
            <c:if test="${about.cate eq '2'}"><!-- 국내 국외 조건 -->
          <tr height="30" bgcolor="#FFFFFF" onMouseOver="this.style.background='#f5f5f5'" onMouseOut="this.style.background='#FFFFFF'">
            <td align="center"><input type="checkbox" name="check[]" value="<?= $row[no] ?>" style="cursor:hand" ></td>
            <td align="center">${about.no}</td>
            <td align="center">${about.year}</td>
            <td align="center">${about.month}.${about.date }</td>
            <td onClick="location.href('write.php?bbs_id=<?= $bbs_id ?>&no=<?=$row[no]?>&mode=modify&page=<?= $page ?>&cate=<?=$cate?>&key=<?= $key ?>&keyword=<?= $en_keyword ?>&k_year=<?= $k_year ?>&k_month=<?= $k_month ?>&k_date=<?= $k_date ?>');" style="cursor:hand; padding:10px">
					${about.contents }</td>
            <td align="center">${about.wdate}</td>
          </tr>
           </c:if><!-- 국내 국외 조건문 끝 -->
           </c:forEach> <!--  반복문 끝 -->
      </table>
      
      <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr height="5">
          <td colspan="3"></td>
        </tr>
        <tr>
          <td valign="middle" width="200">
          <img src="${contextPath}/images/BlueAD/admin/btn_list.gif" style="cursor:hand" onClick="location.href='list.php?bbs_id=<?=$bbs_id?>&cate=<?=$cate?>'">
          <img src="${contextPath}/images/BlueAD/admin/btn_seldel.gif" style="cursor:hand" onClick="setNo()">
        </td>
          <td height="50" align="center">
          
          <!--  ?? -->
          </td>
          <td align="right" width="200">
          <img src="${contextPath}/images/BlueAD/admin/btn_write.gif" align="absmiddle" onClick="location.href='write.php?bbs_id=<?=$bbs_id?>&mode=write&cate=<?=$cate?>'" style="cursor:hand">
        </td>
        </tr>
      
      </table>
    </td>
  </tr>
</form>
</table> <!--  테이블 끝 -->


</div>
</body>
</html>