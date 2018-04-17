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
<link rel='stylesheet' href='${contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css'>
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
  <tbody><tr>
    <td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif"> 입단신청</td>
  </tr>
  <tr>
    <td height="4" background="${contextPath}/images/BlueAD/admin/title_dot_line.gif"></td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</tbody></table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tbody><tr>    
    <td align="right" style="font-size:10Px;font-family:verdana;">
      <font color="">total:</font><font color="red"> ${totalCount}</font>&nbsp;&nbsp;
      <font color="">page:</font><font color="red"> ${pageNo}</font>/<font color="red"> ${lastPageNo}</font>
    </td>
  </tr>
</tbody></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<form name="del_form" method="post" action="./check_delete.php">
<input type="hidden" name="bbs_id" value="online">
<input type="hidden" name="page" value="2">
<input type="hidden" name="key" value="">
<input type="hidden" name="keyword" value="">
<input type="hidden" name="mode" value="ALLdel">
<input type="hidden" name="type" value="1">
</form>
  <tbody><tr>    
    <td>
      <table border="0" cellspacing="1" cellpadding="0" width="100%" align="center" bgcolor="#cad4e3">
        <tbody><tr height="25" align="center">
          <td width="40" class="field_b"><input type="checkbox" name="allChk" onclick="Allchange(this)" style="cursor:hand"></td>
          <td width="50" class="field_b">번호</td>
          <td class="field_b">이름 (아이디)</td>
                    <td width="150" class="field_b">이메일</td>
          <td width="120" class="field_b">연락처</td>
          <td width="100" class="field_b">상담상태</td>
          <td width="100" class="field_b">등록일</td>
        </tr>
        <!-- -----------리스트 ------------------- -->
        <c:forEach items="${list}" var="online" varStatus="status">
        <tr height="30" bgcolor="#FFFFFF" onmouseover="this.style.background=&quot;#f5f5f5&quot;" onmouseout="this.style.background=&quot;#ffffff&quot;" style="background: rgb(255, 255, 255);">
          <td align="center"><input type="checkbox" name="check[]" value="${online.no}" style="cursor:pointer"></td>
          <td align="center">${online.no}</td>
          <td align="center" onclick="#" style="cursor:pointer"><b>${online.name} </b> </td>
                    <td align="center" onclick="#" style="cursor:pointer">${online.email}</td>
          <td align="center" onclick="#" style="cursor:pointer">${online.tel1}-${online.tel2}-${online.tel3}</td>
          <td align="center"><select onchange="location.href('/BlueAD/admin/online/list.php?mode=CHK_Change&amp;no=1493&amp;page=2&amp;bbs_id=online&amp;type=1');"><option value="N" style="color:red">접수대기</option><option value="Y" style="color:blue" selected="">처리완료</option></select></td>
          <td align="center" onclick="location.href('view.php?no=1493&amp;page=2&amp;bbs_id=online&amp;type=1')" style="cursor:pointer">${online.wdate}</td>
        </tr>
        </c:forEach>
        <!-- -----------리스트 ------------------- -->
      </tbody></table>
    </td>
  </tr>
  
  <!-- -----------------------------bottom ------------------------------------->
  <!-- 목록, 선택삭제 -->
  <tr>
    <td>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tbody>
        <tr>
          <td valign="middle" width="300">
            <a href="list?pn=1"><img src="${contextPath}/images/BlueAD/admin/btn_list.gif" style="cursor:pointer"></a>
            <img src="${contextPath}/images/BlueAD/admin/btn_seldel.gif" style="cursor:pointer" onclick="setNo()">
          </td>
  <!-- 목록, 선택삭제 -->
  <!------------------ paging ---------------------->
          <td height="50" align="center">
          <div id="paging"></div>
            <a href="list?pn=1"><img src="${contextPath}/images/BlueAD/skin/bbs/common/page_prev10_off.gif" border="0"></a>
            <a href="list?pn=${pageNo-1}"><img src="${contextPath}/images/BlueAD/skin/bbs/common/page_prev_on.gif" border="0"></a>&nbsp;
            <b><a href="list?pn=1" class="bbs_link_page">1</a></b>
            <!-- <b><span class="bbs_list_page">2</span></b> -->
            <b><a href="list?pn=2" class="bbs_link_page">2</a></b>
            <b><a href="list?pn=3" class="bbs_link_page">3</a></b>
            <b><a href="list?pn=4" class="bbs_link_page">4</a></b>
            <b><a href="list?pn=5" class="bbs_link_page">5</a></b>
            <b><a href="list?pn=6" class="bbs_link_page">6</a></b>
            <b><a href="list?pn=7" class="bbs_link_page">7</a></b>
            <b><a href="list?pn=8" class="bbs_link_page">8</a></b>
            <b><a href="list?pn=9" class="bbs_link_page">9</a></b>
            <b><a href="list?pn=10" class="bbs_link_page">10</a></b>
            &nbsp;<a href="list?pn=${pageNo+1}"><img src="${contextPath}/images/BlueAD/skin/bbs/common/page_next_on.gif" border="0"></a>
            <a href="list?pn=${lastPageNo}"><img src="${contextPath}/images/BlueAD/skin/bbs/common/page_next10_on.gif" border="0"></a>
          </td>
          <td align="right" width="300"><!-- 오른쪽 간격 -->
                      </td>
  <!------------- paging ------------------->
        </tr>
      </tbody>
      </table>
    </td>
  </tr>
  
</tbody>
</table>
<br>
<!---- 아래는 검색 ----->
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<form method="post" action="<?=$PHP_SELF?>">
<input type="hidden" name="bbs_id" value="<?=$bbs_id?>">
<input type="hidden" name="type" value="<?=$type?>">
 <tr>
  <td align="center">
   <select name="key">
     <option value="1"<? if($key=="1") echo" selected"; ?>>이름</option>
     <option value="2"<? if($key=="2") echo" selected"; ?>>회원ID</option>
     <option value="3"<? if($key=="3") echo" selected"; ?>>이메일</option>
     <option value="4"<? if($key=="4") echo" selected"; ?>>문의내용</option>
   </select>
   <input type="text" size="20" maxlength="30" name="keyword" value="<?= $keyword ?>" onFocus="this.select()">
   <input type="image" src="${contextPath}/images/BlueAD/admin/btn_search.gif" align="absmiddle" onFocus="this.blur();">
  </td>
 </tr>
</form>
</table>
  <!-- -------------------------------bottom ----------------------------------------------------->
</div>
<script>
    var obj = document.getElementsByName('check[]');
    function setNo() {
        var cnt = 0;
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
        
        document.del_form.submit();
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
    var pageCount = 10;        // 한 화면에 나타낼 페이지 수
    function paging(totalData, dataPerPage, pageCount, currentPage){
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
            html += "<a href=list?pn=" + beforePrev + " id='beforePrev'><img src='${contextPath}/images/BlueAD/skin/bbs/common/page_prev10_on.gif' border='0'></a> ";
        }else {
            html += "<img src='${contextPath}/images/BlueAD/skin/bbs/common/page_prev10_off.gif' border='0'> ";
        }
        if(currentPage > 1) {
            html += "<a href=list?pn=" + prev + " id='beforePrev'><img src='${contextPath}/images/BlueAD/skin/bbs/common/page_prev_on.gif' border='0'></a>&nbsp; ";
        } else {
            html += "<img src='${contextPath}/images/BlueAD/skin/bbs/common/page_prev_off.gif' border='0'>&nbsp; ";
        }
        for(var i=first; i <= last; i++){
            html += "<b><a href='list?pn="+ i + "' id=" + i + " class='bbs_link_page'>" + i + "</a></b> ";
        }
        if(currentPage < totalPage) {
            html += "&nbsp;<a href=list?pn=" + next + " id='beforePrev'><img src='${contextPath}/images/BlueAD/skin/bbs/common/page_next_on.gif' border='0'></a> ";
        } else {
            html += "&nbsp;<img src='${contextPath}/images/BlueAD/skin/bbs/common/page_next_off.gif' border='0'> ";
        }
        if(last < totalPage) {
            html += "<a href=list?pn=" + afterNext + " id='afterNext'><img src='${contextPath}/images/BlueAD/skin/bbs/common/page_next10_on.gif' border='0'></a>";
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
