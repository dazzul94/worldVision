<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html>
<head>
<title></title>
<script type="text/javascript" src="${contextPath}/js/BlueAD/jquery-1.3.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/div.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/style.css">
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
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center"><tbody>
    <tr>
        <td height=30><a href='list'><span >국내</span></a> | <a href='abroadList'><span >국외</span></a></td>
    </tr>
  <tr>    
    <td align="right" style="font-size:10Px;font-family:verdana;">
      <font color="">total:</font><font color="red"> ${totalCount}</font>&nbsp;&nbsp;
      <font color="">page:</font><font color="red"> ${pageNo}</font>/<font color="red"> ${lastPageNo}</font>
    </td>
  </tr>
</tbody></table>


<!-- 테이블 시작  -->
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr>
    <td>
      <table border="0" cellspacing="1" cellpadding="0" width="100%" align="center" bgcolor="#cad4e3">
        <tr height="25" align="center">
          <td width="40" class="field_b"><input type="checkbox" name="allChk" onClick="Allchange(this)" style="cursor:pointer" ></td>
          <td width="50" class="field_b">번호</td>
          <td width="80" class="field_b">년도</td>
          <td width="80" class="field_b">월 / 일</td>
          <td class="field_b">내용</td>
          <td width="100" class="field_b">등록일</td>
        </tr>
       
       <!-- 반복문 시작 -->
       <c:forEach items="${list}" var="about" varStatus="status">
          <tr height="30" bgcolor="#FFFFFF" onMouseOver="this.style.background='#f5f5f5'" onMouseOut="this.style.background='#FFFFFF'">
            <td align="center"><input type="checkbox" id="check" name="check[]" class="checkSelect" value="${about.no}" style="cursor:pointer"></td>
            <td align="center">${(totalCount - status.index) - ((pageNo - 1) * pageSize)}</td>
            <td align="center">${about.year}</td>
            <td align="center">${about.month}.${about.date }</td>
            <td onclick="window.location='${about.no}'" style="cursor:pointer; padding:10px">
                    ${about.contents }</td>
            <td align="center">${about.wdate}</td>
          </tr>
           </c:forEach> <!--  반복문 끝 -->
      </table>
      <!--  목록 버튼 , 선택삭제 버튼 -->
      <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr height="5">
          <td colspan="3"></td>
        </tr>
        <tr>
          <td valign="middle" width="200">
          <a href="abroadList?pn=1"><img src="${contextPath}/images/BlueAD/admin/btn_list.gif" style="cursor:pointer"></a>
          <img src="${contextPath}/images/BlueAD/admin/btn_seldel.gif" style="cursor:pointer" onClick="setNo()">
        </td>
         <!------------------ paging ---------------------->
 <td width="300"></td>
          <td height="50" align="center">
          <div id="paging"></div>
          </td>
          <td align="right" width="300"><!-- 오른쪽 간격 -->
                      </td>
  <!------------- paging ------------------->
          <td align="right" width="200">
          <img src="${contextPath}/images/BlueAD/admin/btn_write.gif" align="absmiddle" onClick="location.href='abroadForm'" style="cursor:pointer">
        </td>
        </tr>
      
      </table>
      <!--  목록버튼 ,선택삭제 버튼 -->
    </td>
  </tr>
</table> <!--  테이블 끝 -->
<!-- 검색 -->
<form action="abroadList">
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">

<%-- <input type="hidden" name="member_join_type" value="<?=$member_join_type?>"> --%>
  <tr>
    <td align="center">
      <select name="select">
      <option selected value="contents">내용</option>
      </select>
      <input type="text" size="20" maxlength="30" name="words" onFocus="this.select()">
     <button type="submit" style="background-color: white; border:0px"><img src="${contextPath}/images/BlueAD/admin/btn_search.gif" align="absmiddle" onFocus="this.blur();"/></button>
    </td>
  </tr>
  </table>
</form>


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
            html += "<a href='abroadList?pn=" + beforePrev + "&select="+ select +"&words="+ words +"' id='beforePrev'><img src='${contextPath}/images/BlueAD/skin/bbs/common/page_prev10_on.gif' border='0'></a> ";
        }else {
            html += "<img src='${contextPath}/images/BlueAD/skin/bbs/common/page_prev10_off.gif' border='0'> ";
        }
        if(currentPage > 1) {
            html += "<a href='abroadList?pn=" + prev + "&select="+ select +"&words="+ words + "' id='beforePrev'><img src='${contextPath}/images/BlueAD/skin/bbs/common/page_prev_on.gif' border='0'></a>&nbsp; ";
        } else {
            html += "<img src='${contextPath}/images/BlueAD/skin/bbs/common/page_prev_off.gif' border='0'>&nbsp; ";
        }
        for(var i=first; i <= last; i++){
            html += "<b><a href='abroadList?pn="+ i + "&select="+ select +"&words="+ words + "' id=" + i + " class='bbs_link_page'>" + i + "</a></b> ";
        }
        if(currentPage < totalPage) {
            html += "&nbsp;<a href='abroadList?pn=" + next + "&select="+ select +"&words="+ words + "' id='beforePrev'><img src='${contextPath}/images/BlueAD/skin/bbs/common/page_next_on.gif' border='0'></a> ";
        } else {
            html += "&nbsp;<img src='${contextPath}/images/BlueAD/skin/bbs/common/page_next_off.gif' border='0'> ";
        }
        if(last < totalPage) {
            html += "<a href='abroadList?pn=" + afterNext + "&select="+ select +"&words="+ words + "' id='afterNext'><img src='${contextPath}/images/BlueAD/skin/bbs/common/page_next10_on.gif' border='0'></a>";
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
