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
<script type="text/javascript" src="${contextPath}/js/BlueAD/jquery-1.3.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/div.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/style.css">
<link rel="stylesheet" media="screen" href="${contextPath}/css/BlueAD/lightbox/lightbox.css" type="text/css">
</head>

<body>


<script type="text/javascript">
    var totalData = '<c:out value="${totalCount}"/>';    // 총 데이터 수
    var dataPerPage = '<c:out value="${pageSize}"/>';    // 한 페이지에 나타낼 데이터 수
    var lastPageNo = '<c:out value="${lastPageNo}"/>';
    var select = '<c:out value="${select}"/>';
    var words = '<c:out value="${words}"/>';
    var pageCount = 10;        // 한 화면에 나타낼 페이지 수
    function paging(totalData, dataPerPage, pageCount, currentPage){
        console.log("(카테고리)select: " + select);
        console.log("(검색어)words: " + words);
        console.log("(전체데이터개수)totalData: " + totalData);
        console.log("(한 페이지에 나타낼 데잍터 수)dataPerPage: " + dataPerPage);
        console.log("(보이는 페이지 개수무조건 열개!)pageCount: " + pageCount);
        console.log("(현재 페이지)currentPage : " + currentPage);
        var next = Number(currentPage) + 1;
        var prev = Number(currentPage) - 1;
        console.log("(이전 페이지 번호)prev : " + prev);
        console.log("(다음 페이지 번호)next : " + next);
        var totalPage = Math.ceil(totalData/dataPerPage);    // 총 페이지 수
        var pageGroup = Math.ceil(currentPage/pageCount);    // 페이지 그룹
        
        console.log("(현재 페이지 그룹)pageGroup : " + pageGroup);
        
        var last = pageGroup * pageCount;    // 화면에 보여질 마지막 페이지 번호
        if(last > totalPage)
            last = totalPage;
        var first = last - (pageCount-1);    // 화면에 보여질 첫번째 페이지 번호
        if(first < 1) {first=1;last=lastPageNo;}
        var afterNext = last+1;
        var beforePrev = first-1;
        console.log("(총 페이지 수)totalPage:" + totalPage);        
        console.log("(화면에 보여질 마지막 페이지 번호)last : " + last);
        console.log("(화면에 보여질 첫번쨰 페이지 번호)first : " + first);
        console.log("(>누르면 갈페이지 번호)afterNext : " + afterNext);
        console.log("(<누르면 갈 페이지 번호)beforePrev : " + beforePrev);
        
        console.log("-------------------------------------")
        var html = "";
        if(beforePrev > 0) {
            html += "<a href='list?pn=" + beforePrev + "&select="+ select +"&words="+ words +"' id='beforePrev'><img src='${contextPath}/images/BlueAD/skin/bbs/common/page_prev10_on.gif' border='0'></a> ";
        }else {
            html += "<img src='${contextPath}/images/BlueAD/skin/bbs/common/page_prev10_off.gif' border='0'> ";
        }
        if(currentPage > 1) {
            html += "<a href='list?pn=" + prev + "&select="+ select +"&words="+ words + "' id='beforePrev'><img src='${contextPath}/images/BlueAD/skin/bbs/common/page_prev_on.gif' border='0'></a>&nbsp; ";
        } else {
            html += "<img src='${contextPath}/images/BlueAD/skin/bbs/common/page_prev_off.gif' border='0'>&nbsp; ";
        }
        for(var i=first; i <= last; i++){
            html += "<b><a href='list?pn="+ i + "&select="+ select +"&words="+ words + "' id=" + i + " class='bbs_link_page'>" + i + "</a></b> ";
        }
        if(currentPage < totalPage) {
            html += "&nbsp;<a href='list?pn=" + next + "&select="+ select +"&words="+ words + "' id='beforePrev'><img src='${contextPath}/images/BlueAD/skin/bbs/common/page_next_on.gif' border='0'></a> ";
        } else {
            html += "&nbsp;<img src='${contextPath}/images/BlueAD/skin/bbs/common/page_next_off.gif' border='0'> ";
        }
        if(last < totalPage) {
            html += "<a href='list?pn=" + afterNext + "&select="+ select +"&words="+ words + "' id='afterNext'><img src='${contextPath}/images/BlueAD/skin/bbs/common/page_next10_on.gif' border='0'></a>";
        } else {
            html += "<img src='${contextPath}/images/BlueAD/skin/bbs/common/page_next10_off.gif' border='0'> ";
        }
        $("#paging").html(html);    // 페이지 목록 생성
        $("#paging a").css("color", "#6C6C6C");
        $("#paging a#" + currentPage).css({"text-decoration":"none", 
                                           "color":"red", 
                                           "font-weight":"bold"});    // 현재 페이지 표시
                                           
        $("#paging a").click(function(){
            
            var $item = $(this);
            var $id = $item.attr("id");
            var selectedPage = $item.text();
            
            if($id == "afterNext")    selectedPage = afterNext;
            if($id == "beforePrev")    selectedPage = beforePrev;
            
            paging(totalData, dataPerPage, pageCount, selectedPage);
        });
                                           
    }
    
    
    $("document").ready(function(){        
        paging(totalData, dataPerPage, pageCount, '<c:out value="${pageNo}"/>');
        
    });
</script>
<div id="header">
<jsp:include page="../../top.jsp"/>
</div>
<div id="navigation">
<jsp:include page="../community_left.jsp"/>
</div>
<div id="content">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif" align="absmiddle"><font color="#5555aa"> 월드</font></td>
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
      <c:forEach items="${list}" var="community" varStatus="status">
      <c:if test="${community.bbs_notice eq 'Y'}">
      <tr height="30">
        <td align="center" bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1">&nbsp;</td>
        <td align="center" bgcolor="#f1f1f1"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/icon_notice.gif" border="0" align="absmiddle"></td>
        <td align="center" bgcolor="#f1f1f1"></td>
        <td bgcolor="#f1f1f1">&nbsp;&nbsp;&nbsp;<span class="bbs_normal">${community.bbs_subject }</span></td>
         <td align="center" bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1">
          <a href="email_send.php?email=d3ZjaG9pckB3dmNob2lyLm9yLmty" target="email_frm" class="bbs_link"><img src="${contextPath}/images/BlueAD/skin/bbs/1198130437.gif" align="absmiddle"></a>        
        </td>
        <td bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1"><span class="bbs_normal">${community.bbs_date}</span>
        </td>
        <td align="center" bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1"><span class="bbs_normal">${community.bbs_hit}</span></td>
      </tr>
     <tr>
        <td bgcolor="#e6e6e6"></td>
        <td colspan="13" bgcolor="#e6e6e6" height="1"></td>
      </tr>
      </c:if>
      </c:forEach>
      <!-- ----------------공지리스트 --------------------->
       <!-- ----------------------------리스트---------------------------- -->
<c:forEach items="${list}" var="community" varStatus="status">
      <tr height="30">
        <td align="center"></td>
                <td align="center"><input type="checkbox" name="bbs_no[]" value="133" style="cursor:hand"></td>
                <td align="center"><span class="bbs_normal">${community.bbs_no }</span>
</td>
        <td align="center"></td>
                <td>
          &nbsp;&nbsp;&nbsp;<a href="${community.bbs_no }" class="bbs_link">${community.bbs_subject} </a>
                                         
        </td>
        <td></td>
        <td align="center">
          <a href="email_send.php?email=d3ZjaG9pckB3dmNob2lyLm9yLmty" target="email_frm" class="bbs_link"><!-- <img src="./upload/1198130437.gif" align="absmiddle"> --></a>  ${community.bbs_name }   </td>
        <td align="center"></td>
        <td align="center"><span class="bbs_normal">${community.bbs_date }</span></td>
        <td align="center"></td>
        <td align="center"><span class="bbs_normal">${community.bbs_hit }</span></td>
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
          <!-- 목록 버튼 -->  <a href="list"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_list.gif" align="absmiddle" border="0"></a>
           <!-- 선택 --> <a href="javascript:All_del();"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_list_sel.gif" align="absmiddle" border="0"></a><? } ?>
          </td>
          
          
         <!------------------ paging ---------------------->
          <td width="195"></td>
          <td height="50" align="center">
          <div id="paging"></div>
          </td>
          <td align="right" width="300">
                      </td>
                         <!------------- paging ------------------->
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