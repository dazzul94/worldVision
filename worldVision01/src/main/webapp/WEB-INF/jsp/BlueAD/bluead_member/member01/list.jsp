<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html>
<head>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/div.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/style.css">
<script type="text/javascript" src="${contextPath}/js/BlueAD/jquery-1.3.2.min.js"></script>
<script language="javascript">
	function chn_lev(lev,url){
		location.href = url + "&mode=lev_chn&lev="+lev;
	}
</script>
</head>
<body>
<div id="header">
<jsp:include page="../../top.jsp"/>
</div>
<div id="navigation">
<jsp:include page="../../left.jsp"/>
</div>
<div id="content">
<!--  회원관리 이미지 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif" align="absmiddle"> 회원관리</td>
  </tr>
  <tr>
    <td height="4" background="${contextPath}/images/BlueAD/admin/title_dot_line.gif"></td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</table>


<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>    
    <td style="padding:2;"><select onchange="location.href='<?=$PHP_SELF?>?member_join_type='+this.value">
	  <option value="select">:: 전체보기 ::</option>
        <option value="member_join_type">후원자</option>
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
  

   
   
   <c:forEach items="${list}" var="member" varStatus="status">
  <tr bgcolor="#ffffff" height="30" onMouseOver=this.style.background="#f5f5f5" onMouseOut=this.style.background="#ffffff">
    <td align="center" style="cursor:hand" onclick="location.href('view.jsp?no=<?= $row["no"] >${member.no}</td>
    <td align="center" style="cursor:hand" onclick="location.href('view.jsp?member_name=<?= $row["member_name"]>${member.member_name}</td>
    <td align="center" style="cursor:hand" onclick="location.href('view.php?member_id=<?= $row["member_id"] >${member.member_id}</td>
    <td align="center" style="cursor:hand" onclick="location.href('view.php?member_address=<?= $row["member_address1"]- >${member.member_address1}${member.member_address2}</td>
    <td align="center" style="cursor:hand" onclick="location.href('view.php?no=<?= $row["member_tel1"]-["member_tel2"] >${member.member_tel1}-${member.member_tel2}-${member.member_tel3}</td>
     <td align="center" style="cursor:hand" onclick="location.href('view.php?no=<?= $row["member_join_date"] >${member.member_join_date}</td>
 <td align="center">
      <select name="level" onChange="chn_lev(this.value,'<?=$PHP_SELF?>?no=<?= $row["no"] ?>&page=<?=$page?>&key=<?=$key?>&keyword=<?=$keyword?>&member_join_type=<?=$member_join_type?>');">
        <option value="member_join_type">후원자</option>
        <option value="2" style="color:blue;"<?if($row["member_join_type"]=="2"){echo " selected";}?>>기타</option>
		<option value="3" style="color:green;"<?if($row["member_join_type"]=="3"){echo " selected";}?>>합창단 교사/직원</option>
		<option value="5" style="color:#660000;"<?if($row["member_join_type"]=="5"){echo " selected";}?>>단원/자모</option>
		<option value="10" style="color:red;"<?if($row["member_join_type"]=="10"){echo " selected";}?>>동문</option>
      </select>
    </td>  
  </tr>
 </c:forEach> 
</table> 

<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td valign="middle" width="100"><input type="image" src="${contextPath}/images/BlueAD/admin/btn_list.gif" onfocus="this.blur();" onClick="location.href='list.php'"></td>
 <!------------------ paging ---------------------->
 <td width="195"></td>
          <td height="50" align="center">
          <div id="paging"></div>
          </td>
          <td align="right" width="300"><!-- 오른쪽 간격 -->
                      </td>
  <!------------- paging ------------------->
  </tr>
</table>
<br>

<!-- 검색 -->
<form action="list">
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">

<%-- <input type="hidden" name="member_join_type" value="<?=$member_join_type?>"> --%>
  <tr>
    <td align="center">
      <select name="select">
      <option selected value="member_name">이름</option>
      <option value="member_id">아이디</option>
      </select>
      <input type="text" size="20" maxlength="30" name="words" onFocus="this.select()">
     <button type="submit" style="background-color: white; border:0px"><img src="${contextPath}/images/BlueAD/admin/btn_search.gif" align="absmiddle" onFocus="this.blur();"/></button>
    </td>
  </tr>
  </table>
</form>


</div>
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
