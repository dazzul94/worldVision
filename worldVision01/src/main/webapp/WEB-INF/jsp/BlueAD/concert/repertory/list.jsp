<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/div.css?ver=1">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/style.css?ver=1">
<link rel="stylesheet" media="screen" href="${contextPath}/css/BlueAD/lightbox/lightbox.css" type="text/css">
<script type="text/javascript" src="${contextPath}/js/BlueAD/jquery-1.3.2.min.js"></script>

</head>

<body>
<div id="header">
<jsp:include page="../../top.jsp"/>
</div>
<div id="navigation">
<jsp:include page="../concert_left.jsp"/>
</div>
<div id="content">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif" align="absmiddle"> 월드</td>
  </tr>
  <tr>
    <td height="4" background="${contextPath}/images/BlueAD/admin/title_dot_line.gif"></td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</tbody></table>
<!--  dd -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tbody><tr>    
   <td>
      <img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/newhot.gif">
    </td>
    <td align="right" style="font-size:10Px;font-family:verdana;">
      <font color="">total:</font><font color="red"> ${totalCount}</font>&nbsp;&nbsp;
      <font color="">page:</font><font color="red"> ${pageNo}</font>/<font color="red"> ${lastPageNo}</font>
    </td>
  </tr>
</tbody></table>

<tr>
<td>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="1" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_left.gif"></td>
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
      <c:forEach items="${list}" var="community01" varStatus="status">
      <c:if test="${community01.bbs_notice eq 'Y'}">
      <tr height="30">
        <td align="center" bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1">&nbsp;</td>
        <td align="center" bgcolor="#f1f1f1"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/icon_notice.gif" border="0" align="absmiddle"></td>
        <td align="center" bgcolor="#f1f1f1"></td>
        <td bgcolor="#f1f1f1">&nbsp;&nbsp;&nbsp;<a href="${community01.bbs_no}" class="bbs_link">${community01.bbs_subject}</a></td>
        <td align="center" bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1">
          <a href="email_send.php?email=d3ZjaG9pckB3dmNob2lyLm9yLmty" target="email_frm" class="bbs_link"><img src="${contextPath}/images/BlueAD/skin/bbs/1198130437.gif" align="absmiddle"></a>        
        </td>
        <td bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1"><span class="bbs_normal">${community01.bbs_date}</span>
        </td>
        <td align="center" bgcolor="#f1f1f1"></td>
        <td align="center" bgcolor="#f1f1f1"><span class="bbs_normal">${community01.bbs_hit}</span></td>
      </tr>
     <tr>
        <td bgcolor="#e6e6e6"></td>
        <td colspan="13" bgcolor="#e6e6e6" height="1"></td>
      </tr>
      </c:if>
      </c:forEach>
      <!-- ----------------공지리스트 --------------------->
       <!-- ----------------------------리스트---------------------------- -->
    <c:forEach items="${list}" var="community01" varStatus="status">
      <tr height="30">
        <td align="center"></td>
        <td align="center"><input type="checkbox" name="bbs_no[]" value="${community01.bbs_no}" style="cursor:hand"></td>
        <td align="center"><span class="bbs_normal">${community01.bbs_no}</span></td>
        <td align="center"></td>
        <td>&nbsp;&nbsp;&nbsp;<a href="${community01.bbs_no}" class="bbs_link">${community01.bbs_subject} </a>
        </td>
        <td></td>
        <td align="center">
          <a href="email_send.php?email=d3ZjaG9pckB3dmNob2lyLm9yLmty" target="email_frm" class="bbs_link"><img src="${contextPath}/images/BlueAD/skin/bbs/1198130437.gif" align="absmiddle"></a>        
        </td>
        <td align="center"></td>
        <td align="center"><span class="bbs_normal">${community01.bbs_date}</span></td>
        <td align="center"></td>
        <td align="center"><span class="bbs_normal">${community01.bbs_hit}</span></td>
        <td align="center"></td>
      </tr>
      <tr>
        <td bgcolor="#e6e6e6"></td>
        <td colspan="13" bgcolor="#e6e6e6" height="1"></td>
      </tr>
      </c:forEach>
           </tbody></table>
    </td>
  </tr>
  <!-- 목록, 선택삭제 -->
    <td>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tbody>
        <tr>
    <td valign="middle" width="300">
            <a href="list?pn=1"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_list.gif" style="cursor:pointer"></a>
           <img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_list_sel.gif"  style="cursor:pointer" onclick="setNo()">
          </td>
  <!-- 목록, 선택삭제 -->
  <!------------------ paging ---------------------->
    <!--  <td width="165"></td>  -->
          <td  height="30" align="center">
          <div id="paging" ></div>
          </td>
          <td align="right" width="300">
          <!--  쓰기  -->
           <a href="list?pn=1"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write.gif" align="absmiddle" border="0">
         </a>
                      </td>
  <!------------- paging ------------------->
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
          <input type="text" size="50" maxlength="30" name="words" onFocus="this.select()">
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
