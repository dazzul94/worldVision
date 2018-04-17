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
<link rel='stylesheet' href='${contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css'>
<script language="javascript">
	function chn_lev(lev,url){
		location.href = url + "&mode=lev_chn&lev="+lev;
	}
</script>
</head>
<body>
<div id="header">
<jsp:include page="../top.jsp"/>
</div>
<div id="navigation">
<jsp:include page="../left.jsp"/>
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
	  <option value="">:: 전체보기 ::</option>
        <option value="1"<?if($member_join_type=="1"){echo " selected";}?>>후원자</option>
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
        <option value="1"<?if($row["member_join_type"]=="1"){echo " selected";}?>>후원자</option>
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
    <td align="center" height="50">
	 페이징
     
	</td>
    <td align="right" width="100"></td>
  </tr>
</table>
<br>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<form method="post" action="<?=$PHP_SELF?>">
<input type="hidden" name="member_join_type" value="<?=$member_join_type?>">
  <tr>
    <td align="center">
      <select name="key">
      <option value="member_name">이름</option>
      <option value="member_id">아이디</option>
      </select>
      <input type="text" size="20" maxlength="30" name="keyword"class="b_input">
      <input type="image" src="${contextPath}/images/BlueAD/admin/btn_search.gif" align="absmiddle" onfocus="this.blur();">
    </td>
  </tr>
</form>
</table>
</div>
<jsp:include page="../../jslib.jsp"/>
</body>
</html>
<!--  
<?

$db->Close();
?>
 -->