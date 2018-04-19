<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/div.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/style.css">
<link rel="stylesheet" media="screen" href="${contextPath}/css/BlueAD/lightbox/lightbox.css" type="text/css">
<script type="text/javascript" src="${contextPath}/js/BlueAD/jquery-1.3.2.min.js"></script>
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
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td>
      <select name="scate" class="bbs_select" onchange="location.href='board.php?bbs_id=<?= $bbs_id ?>&scate='+this.value+'<? if(__ADMIN_ID__ && $bbs_admin == "chk") echo"&bbs_admin=chk"; ?>'">
        <option value="">전체</option>
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
      <!-- -----------------공지리스트 --------------------------->
      <c:forEach items="${list}" var="board" varStatus="status">
      <c:if test="${board.bbs_notice eq 'Y'}">
      <tr height="30">
        <td align="center" bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1">&nbsp;</td>
        <td align="center" bgcolor="#f1f1f1"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/icon_notice.gif" border="0" align="absmiddle"></td>
        <td align="center" bgcolor="#f1f1f1"></td>
        <td bgcolor="#f1f1f1">&nbsp;&nbsp;&nbsp;<span class="bbs_normal"></span>${board.bbs_subject}</td>
        <td align="center" bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1">
          <a href="email_send.php?email=d3ZjaG9pckB3dmNob2lyLm9yLmty" target="email_frm" class="bbs_link"><img src="${contextPath}/images/BlueAD/skin/bbs/1198130437.gif" align="absmiddle"></a>        
        </td>
        <td bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1"><span class="bbs_normal">${board.bbs_date}</span>
        </td>
        <td align="center" bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1"><span class="bbs_normal">${board.bbs_hit}</span></td>
      </tr>
     <tr>
        <td bgcolor="#e6e6e6"></td>
        <td colspan="13" bgcolor="#e6e6e6" height="1"></td>
      </tr>
      </c:if>
      </c:forEach>
      <!-- ----------------공지리스트 --------------------->
       <!-- ----------------------------리스트---------------------------- -->
    <c:forEach items="${list}" var="board" varStatus="status">
      <tr height="30">
        <td align="center"></td>
        <td align="center"><input type="checkbox" name="bbs_no[]" value="${board.bbs_no}" style="cursor:hand"></td>
        <td align="center"><span class="bbs_normal">${board.bbs_no}</span></td>
        <td align="center"></td>
        <td>&nbsp;&nbsp;&nbsp;<a href="#" class="bbs_link">${board.bbs_subject} </a>
        </td>
        <td></td>
        <td align="center">
          <a href="email_send.php?email=d3ZjaG9pckB3dmNob2lyLm9yLmty" target="email_frm" class="bbs_link"><img src="${contextPath}/images/BlueAD/skin/bbs/1198130437.gif" align="absmiddle"></a>        
        </td>
        <td align="center"></td>
        <td align="center"><span class="bbs_normal">${board.bbs_date}</span></td>
        <td align="center"></td>
        <td align="center"><span class="bbs_normal">${board.bbs_hit}</span></td>
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
            <a href="<?= $search_cancel_link ?>"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_list.gif" align="absmiddle" border="0"></a>
            <a href="javascript:All_del();"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_list_sel.gif" align="absmiddle" border="0"></a><? } ?>
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
    <td width="5"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/search_left.gif"></td>
    <td align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/search_bg.gif">

      
      <!-- 검색 -->
        <form action="list">
              <table border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>
          <img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/search_t.gif" align="absmiddle">
          <select name="select" class="txtarea">
            <option value="bbs_subject">제목</option>
            <option value="bbs_content">내용</option>
            <option value="bbs_name">글쓴이</option>
          </select>
          <input type="text" size="50" maxlength="30" name="words" class="bbs_input_search">
     <button type="submit" style="background-color: white; border:0px"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_search.gif" align="absmiddle"/></button>
          </td>
        </tr>
          </table>
        </form>
    
    </td>
    <td width="5"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/search_right.gif"></td>
  </tr>
  <tr>
    <td colspan="3" height="25"></td>
  </tr>
</table>
</div>


</body>
</html>
