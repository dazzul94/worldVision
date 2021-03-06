<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html>
<head>
<title></title>
<script
	src='${contextPath}/node_modules/jquery/dist/jquery.slim.min.js'></script>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/div.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/style.css">
<link rel="stylesheet" media="screen" href="${contextPath}/css/BlueAD/lightbox/lightbox.css" type="text/css">
</head>

<body>
<div id="header">
<jsp:include page="../../top.jsp"/>
</div>
<div id="navigation">
<jsp:include page="../choir_left.jsp"/>
</div>
<div id="content">
<c:set var="c_no" value="${c_no}" />

<!--  회원관리 이미지 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif" align="absmiddle"> CHOIR 지도교사</td>
  </tr>
  <tr>
    <td height="4" background="${contextPath}/images/BlueAD/admin/title_dot_line.gif"></td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</table>
<!-- 카테고릐~ -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr>
  <td style="padding:5 5 5 5;"> <!-- 여기 해야함 -->
	<select name="c_no" id="c_noType" onchange="location.href='list?c_no='+this.value;">
	<option value="all">::전체보기::</option>
	<option value="1">[연주반] 연주반</option>
	<option value="3">[지역반] 강서반</option>
	<option value="4">[지역반] 강남반</option>
	<option value="5">[지역반] 강북반</option>
	<option value="6">[지역반] 일산반</option>
	<option value="7">[연주반] 영재반</option>
	<option value="8">[지역반] 분당반</option>
	<option value="9">[비전싱어즈] 비전싱어즈</option></select>
  </td>
  <td align="right" style="font-size:10Px;font-family:verdana;">
      <font color="">total:</font><font color="red"> ${totalCount}</font>&nbsp;&nbsp;
      <font color="">page:</font><font color="red"> ${pageNo}</font>/<font color="red"> ${lastPageNo}</font>
    </td>
    
</tr>
</table>

<!-- 테이블 시작  -->
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr>
    <td>
      <table border="0" cellspacing="1" cellpadding="0" width="100%" align="center" bgcolor="#cad4e3">
		<tr height="25" align="center">
		  <td width="50" class="field_b">번호</td>
		  <td width="110" class="field_b">이미지</td>
		  <td class="field_b">CHOIR</td>
		  <td width="200" class="field_b">한글이름</td>
		  <td width="250" class="field_b">영문이름</td>
		  <td width="60" class="field_b">정렬</td>
		  <td width="100" class="field_b">등록일</td>
		</tr>
		       
       <!-- 반복문 시작 -->
       <c:forEach items="${list}" var="choirTeacher" varStatus="status">
          <tr bgcolor="#FFFFFF" onMouseOver="this.style.background='#f5f5f5'" onMouseOut="this.style.background='#FFFFFF'">
            <td align="center">${(totalCount - status.index) - ((pageNo - 1) * pageSize)}</td>
            <td align="center" style="padding:5 0 5 0;"><img src="${contextPath}/images/BlueAD/admin/choirTeacher/upload/${choirTeacher.img1_thumbo}" width="80"></td>
		    <td align="center" style="padding:5 0 5 0;"><a href="${choirTeacher.ct_no}">
		    <c:choose>
			       <c:when test="${choirTeacher.c_no == '1'}">
			           [연주반] 연주반
			       </c:when>
			       <c:when test="${choirTeacher.c_no == '3'}">
			           [지역반] 강서반
			       </c:when>
			       <c:when test="${choirTeacher.c_no == '4'}">
			           [지역반] 강남반
			       </c:when>
			       <c:when test="${choirTeacher.c_no == '5'}">
			           [지역반] 강북반
			       </c:when>
			       <c:when test="${choirTeacher.c_no == '6'}">
			           [지역반] 일산반
			       </c:when>
			       <c:when test="${choirTeacher.c_no == '7'}">
			           [연주반] 영재반
			       </c:when>
			       <c:when test="${choirTeacher.c_no == '8'}">
			           [지역반] 분당반
			       </c:when>
			       <c:when test="${choirTeacher.c_no == '9'}">
			           [비전싱어즈] 비전싱어즈
			       </c:when>
			       <c:otherwise>
			          1,2,3 가 아닌 다른거근영...
			       </c:otherwise>
			   </c:choose>
		    
		    </a></td>
		    <td align="center" style="padding:5 0 5 0;"><a href="${choirTeacher.ct_no}">${choirTeacher.kor_name1} / ${choirTeacher.kor_name2}</a></td>
		    <td align="center" style="padding:5 0 5 0;"><a href="${choirTeacher.ct_no}">${choirTeacher.eng_name1} / ${choirTeacher.eng_name2}</a></td>
		    <td align="center">
			<a href="query.php?mode=sort_up&ct_no=37&sort=50&key=&keyword=&c_no=">▲</a><br>
			<a href="query.php?mode=sort_dn&ct_no=37&sort=50&key=&keyword=&c_no=">▼</a>
		    </td>
		    <td align="center" style="padding:5 0 5 0;">${choirTeacher.wdate}</td>
          </tr>
           </c:forEach> 
           <!--  반복문 끝 -->
      </table>
      </td>
      </tr>
      </table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr>
  <td valign="middle" width="300">
    <a href="list?pn=1"><img src="${contextPath}/images/BlueAD/admin/btn_list.gif" style="cursor:pointer"></a>
  </td>
  <td height="50" align="center">
    <div id="paging"></div>
  </td>
  <td align="right" width="300"><img src="${contextPath}/images/BlueAD/admin/btn_write.gif" style="cursor:pointer" onClick="location.href='./write.php?mode=write&page=1&key=&keyword=&c_no=';"></td>
</tr>
</table>
<form action="list">
<input type="hidden" name="c_no" value="${c_no}">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center">
      <select name="select">
      <option value="kor_name2">한글이름</option>
      <option value="eng_name2">영문이름</option>
      </select>
      <input type="text" size="20" maxlength="30" name="words" value="" class="b_input">
      <input type="image" src="${contextPath}/images/BlueAD/admin/btn_search.gif" align="absmiddle" onfocus="this.blur();">
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
    var c_no = '<c:out value="${c_no}"/>'; //c_no
    function paging(totalData, dataPerPage, pageCount, currentPage){
        console.log("(카테고리)select: " + select);
        console.log("(위에 카테고리)c_no: " + c_no);
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
            html += "<a href='list?pn=" + beforePrev + "&select="+ select +"&words="+ words  + "&c_no="+ c_no +"' id='beforePrev'><img src='${contextPath}/images/BlueAD/skin/bbs/common/page_prev10_on.gif' border='0'></a> ";
        }else {
            html += "<img src='${contextPath}/images/BlueAD/skin/bbs/common/page_prev10_off.gif' border='0'> ";
        }
        if(currentPage > 1) {
            html += "<a href='list?pn=" + prev + "&select="+ select +"&words="+ words + "&c_no="+ c_no + "' id='beforePrev'><img src='${contextPath}/images/BlueAD/skin/bbs/common/page_prev_on.gif' border='0'></a>&nbsp; ";
        } else {
            html += "<img src='${contextPath}/images/BlueAD/skin/bbs/common/page_prev_off.gif' border='0'>&nbsp; ";
        }
        for(var i=first; i <= last; i++){
            html += "<b><a href='list?pn="+ i + "&select="+ select +"&words="+ words + "&c_no="+ c_no + "' id=" + i + " class='bbs_link_page'>" + i + "</a></b> ";
        }
        if(currentPage < totalPage) {
            html += "&nbsp;<a href='list?pn=" + next + "&select="+ select +"&words="+ words + "&c_no="+ c_no + "' id='beforePrev'><img src='${contextPath}/images/BlueAD/skin/bbs/common/page_next_on.gif' border='0'></a> ";
        } else {
            html += "&nbsp;<img src='${contextPath}/images/BlueAD/skin/bbs/common/page_next_off.gif' border='0'> ";
        }
        if(last < totalPage) {
            html += "<a href='list?pn=" + afterNext + "&select="+ select +"&words="+ words + "&c_no="+ c_no + "' id='afterNext'><img src='${contextPath}/images/BlueAD/skin/bbs/common/page_next10_on.gif' border='0'></a>";
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
        var c_no = '<c:out value="${c_no}"/>'; //c_no
        if (c_no == '1') {
			$("#c_noType option:eq(1)").prop("selected", true);
		} else if (c_no == '3') {
			$("#c_noType option:eq(2)").prop("selected", true);
		} else if (c_no == '4') {
			$("#c_noType option:eq(3)").prop("selected", true);
		} else if (c_no == '5') {
			$("#c_noType option:eq(4)").prop("selected", true);
		} else if (c_no == '6') {
			$("#c_noType option:eq(5)").prop("selected", true);
		} else if (c_no == '7') {
			$("#c_noType option:eq(6)").prop("selected", true);
		} else if (c_no == '8') {
			$("#c_noType option:eq(7)").prop("selected", true);
		} else if (c_no == '9') {
			$("#c_noType option:eq(8)").prop("selected", true);
		}
    });
</script>
</body>
</html>
