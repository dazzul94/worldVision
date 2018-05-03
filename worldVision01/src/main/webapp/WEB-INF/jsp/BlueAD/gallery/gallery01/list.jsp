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
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td>
     </script>
     <!--select 박스 , total,page  -->
     <table border="0" cellspacing="0" cellpadding="0" width="100%">
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
      
      <img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/newhot.gif">
    </td>
     <td align="right" style="font-size:10Px;font-family:verdana;">
      <font color="">total:</font><font color="red"> ${totalCount}</font>&nbsp;&nbsp;
      <font color="">page:</font><font color="red"> ${pageNo}</font>/<font color="red"> ${lastPageNo}</font>
        &nbsp;
    <a href="/BlueAD/rss.php?bbs_id=<?= $bbs_id ?>" target="_blank"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray_0302/rss.gif" alt="RSS Feed" align="absmiddle"></a>
    </td>
  </tr>
  <tr>
    <td height="3" colspan="2"></td>
  </tr>
</table>
 <!--select 박스 , total,page 끝 -->
 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
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
       <a href="${gallery.bbs_no }" class="bbs_link">${gallery.bbs_subject} </a>
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
                 <td  height="30" align="center">
          <div id="paging" ></div>
          </td>
              </tr>
            </table>
          </td>
          <td align="right" width="150">
            <a href="list?pn=1"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write.gif" align="absmiddle" border="0">
          </td>
        </tr>
      </table>
    </td>
  </tr> 
</form>
</table>

<!--  -->
        </tr>
      </tbody>
      </table>
 
</td>  
<br>

 <!-- 검색 -->
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="3" height="25"></td>
  </tr>
  <tr>
    <td width="5"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/search_left.gif"/></td>
    <td align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/search_bg.gif">
 
        <form action="list">
              <table align="center" border="0" cellspacing="0" cellpadding="0">
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
  <!-- -------------------------------bottom ----------------------------------------------------->
</div>
<script>
    var obj = document.getElementsByName('check[]');
    function setNo() {
        var b = false;

        for(var i=0; i<obj.length; i++) {
            if(obj[i].checked == true) {
                b = true;
                break;
            }
        }
          
        if(b == false) {
            alert("선택해 주세요");
            return;
        }


        if(!confirm('선택하신 데이터를 모두 삭제 하시겠습니까?\n\n삭제후 복구는 불가능 합니다.')) return false;
        /* delete */
        var send_array = Array();
        var send_cnt = 0;
        var chkbox = $(".checkSelect");

        for(i=0;i<chkbox.length;i++) {
            if (chkbox[i].checked == true){
                send_array[send_cnt] = chkbox[i].value;
                send_cnt++;
            }
        }
        window.location = "deleteAll?no=" + send_array;
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
</script>

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
</body>
</html>
