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
<script type="text/javascript" src="${contextPath}/js/BlueAD/jquery-1.3.2.min.js"></script>
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
<c:if test="${not empty about}">
<form name="form" action="update" onsubmit="return checkIt();" method='post' enctype="multipart/form-data">
<table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td>
      <table width="100%" align="center" bgcolor="#cad4e3" border="0" cellspacing="1" cellpadding="10">
        <tbody><tr>
          <td width="100" height="30" class="field_b_pad">년 / 월 / 일</td>
          <td class="pad_left" bgcolor="#ffffff">
          <input name="no" type="hidden" value="${about.no}">
           <select name="year">
           <option value="">선택</option>
                                                     <option value="1962"<c:if test="${about.year eq '1962'}">selected</c:if>>1962</option>
                                                         <option value="1963"<c:if test="${about.year eq '1963'}">selected</c:if>>1963</option>
                                                         <option value="1964"<c:if test="${about.year eq '1964'}">selected</c:if>>1964</option>
                                                         <option value="1965"<c:if test="${about.year eq '1965'}">selected</c:if>>1965</option>
                                                         <option value="1966"<c:if test="${about.year eq '1966'}">selected</c:if>>1966</option>
                                                         <option value="1967"<c:if test="${about.year eq '1967'}">selected</c:if>>1967</option>
                                                         <option value="1968"<c:if test="${about.year eq '1968'}">selected</c:if>>1968</option>
                                                         <option value="1969"<c:if test="${about.year eq '1969'}">selected</c:if>>1969</option>
                                                         <option value="1970"<c:if test="${about.year eq '1970'}">selected</c:if>>1970</option>
                                                         <option value="1971"<c:if test="${about.year eq '1971'}">selected</c:if>>1971</option>
                                                         <option value="1972"<c:if test="${about.year eq '1972'}">selected</c:if>>1972</option>
                                                         <option value="1973"<c:if test="${about.year eq '1973'}">selected</c:if>>1973</option>
                                                         <option value="1974"<c:if test="${about.year eq '1974'}">selected</c:if>>1974</option>
                                                         <option value="1975"<c:if test="${about.year eq '1975'}">selected</c:if>>1975</option>
                                                         <option value="1976"<c:if test="${about.year eq '1976'}">selected</c:if>>1976</option>
                                                         <option value="1977"<c:if test="${about.year eq '1977'}">selected</c:if>>1977</option>
                                                         <option value="1978"<c:if test="${about.year eq '1978'}">selected</c:if>>1978</option>
                                                         <option value="1979"<c:if test="${about.year eq '1979'}">selected</c:if>>1979</option>
                                                         <option value="1980"<c:if test="${about.year eq '1980'}">selected</c:if>>1980</option>
                                                         <option value="1981"<c:if test="${about.year eq '1981'}">selected</c:if>>1981</option>
                                                         <option value="1982"<c:if test="${about.year eq '1982'}">selected</c:if>>1982</option>
                                                         <option value="1983"<c:if test="${about.year eq '1983'}">selected</c:if>>1983</option>
                                                         <option value="1984"<c:if test="${about.year eq '1984'}">selected</c:if>>1984</option>
                                                         <option value="1985"<c:if test="${about.year eq '1985'}">selected</c:if>>1985</option>
                                                         <option value="1986"<c:if test="${about.year eq '1986'}">selected</c:if>>1986</option>
                                                         <option value="1987"<c:if test="${about.year eq '1987'}">selected</c:if>>1987</option>
                                                         <option value="1988"<c:if test="${about.year eq '1988'}">selected</c:if>>1988</option>
                                                         <option value="1989"<c:if test="${about.year eq '1989'}">selected</c:if>>1989</option>
                                                         <option value="1990"<c:if test="${about.year eq '1990'}">selected</c:if>>1990</option>
                                                         <option value="1991"<c:if test="${about.year eq '1991'}">selected</c:if>>1991</option>
                                                         <option value="1992"<c:if test="${about.year eq '1992'}">selected</c:if>>1992</option>
                                                         <option value="1993"<c:if test="${about.year eq '1993'}">selected</c:if>>1993</option>
                                                         <option value="1994"<c:if test="${about.year eq '1994'}">selected</c:if>>1994</option>
                                                         <option value="1995"<c:if test="${about.year eq '1995'}">selected</c:if>>1995</option>
                                                         <option value="1996"<c:if test="${about.year eq '1996'}">selected</c:if>>1996</option>
                                                         <option value="1997"<c:if test="${about.year eq '1997'}">selected</c:if>>1997</option>
                                                         <option value="1998"<c:if test="${about.year eq '1998'}">selected</c:if>>1998</option>
                                                         <option value="1999"<c:if test="${about.year eq '1999'}">selected</c:if>>1999</option>
                                                         <option value="2000"<c:if test="${about.year eq '2000'}">selected</c:if>>2000</option>
                                                         <option value="2001"<c:if test="${about.year eq '2001'}">selected</c:if>>2001</option>
                                                         <option value="2002"<c:if test="${about.year eq '2002'}">selected</c:if>>2002</option>
                                                         <option value="2003"<c:if test="${about.year eq '2003'}">selected</c:if>>2003</option>
                                                         <option value="2004"<c:if test="${about.year eq '2004'}">selected</c:if>>2004</option>
                                                         <option value="2005"<c:if test="${about.year eq '2005'}">selected</c:if>>2005</option>
                                                         <option value="2006"<c:if test="${about.year eq '2006'}">selected</c:if>>2006</option>
                                                         <option value="2007"<c:if test="${about.year eq '2007'}">selected</c:if>>2007</option>
                                                         <option value="2008"<c:if test="${about.year eq '2008'}">selected</c:if>>2008</option>
                                                         <option value="2009"<c:if test="${about.year eq '2009'}">selected</c:if>>2009</option>
                                                         <option value="2010"<c:if test="${about.year eq '2010'}">selected</c:if>>2010</option>
                                                         <option value="2011"<c:if test="${about.year eq '2011'}">selected</c:if>>2011</option>
                                                         <option value="2012"<c:if test="${about.year eq '2012'}">selected</c:if>>2012</option>
                                                         <option value="2013"<c:if test="${about.year eq '2013'}">selected</c:if>>2013</option>
                                                         <option value="2014"<c:if test="${about.year eq '2014'}">selected</c:if>>2014</option>
                                                         <option value="2015"<c:if test="${about.year eq '2015'}">selected</c:if>>2015</option>
                                                         <option value="2016"<c:if test="${about.year eq '2016'}">selected</c:if>>2016</option>
                                                         <option value="2017"<c:if test="${about.year eq '2017'}">selected</c:if>>2017</option>
                                                         <option value="2018"<c:if test="${about.year eq '2018'}">selected</c:if>>2018</option>
                                   </select> 
           년 &nbsp;&nbsp;
           <select name="month">
             <option value="">선택</option>
             <option value="01"<c:if test="${about.month eq '01'}">selected</c:if>>01</option>
             <option value="02"<c:if test="${about.month eq '02'}">selected</c:if>>02</option>
             <option value="03"<c:if test="${about.month eq '03'}">selected</c:if>>03</option>
             <option value="04"<c:if test="${about.month eq '04'}">selected</c:if>>04</option>
             <option value="05"<c:if test="${about.month eq '05'}">selected</c:if>>05</option>
             <option value="06"<c:if test="${about.month eq '06'}">selected</c:if>>06</option>
             <option value="07"<c:if test="${about.month eq '07'}">selected</c:if>>07</option>
             <option value="08"<c:if test="${about.month eq '08'}">selected</c:if>>08</option>
             <option value="09"<c:if test="${about.month eq '09'}">selected</c:if>>09</option>
             <option value="10"<c:if test="${about.month eq '10'}">selected</c:if>>10</option>
             <option value="11"<c:if test="${about.month eq '11'}">selected</c:if>>11</option>
             <option value="12"<c:if test="${about.month eq '12'}">selected</c:if>>12</option>
           </select> 월 &nbsp;&nbsp;
           <select name="date">
             <option value="">선택</option>
             <option value="01"<c:if test="${about.date eq '01'}">selected</c:if>>01</option>
             <option value="02"<c:if test="${about.date eq '02'}">selected</c:if>>02</option>
             <option value="03"<c:if test="${about.date eq '03'}">selected</c:if>>03</option>
             <option value="04"<c:if test="${about.date eq '04'}">selected</c:if>>04</option>
             <option value="05"<c:if test="${about.date eq '05'}">selected</c:if>>05</option>
             <option value="06"<c:if test="${about.date eq '06'}">selected</c:if>>06</option>
             <option value="07"<c:if test="${about.date eq '07'}">selected</c:if>>07</option>
             <option value="08"<c:if test="${about.date eq '08'}">selected</c:if>>08</option>
             <option value="09"<c:if test="${about.date eq '09'}">selected</c:if>>09</option>
             <option value="10"<c:if test="${about.date eq '10'}">selected</c:if>>10</option>
             <option value="11"<c:if test="${about.date eq '11'}">selected</c:if>>11</option>
             <option value="12"<c:if test="${about.date eq '12'}">selected</c:if>>12</option>
             <option value="13"<c:if test="${about.date eq '13'}">selected</c:if>>13</option>
             <option value="14"<c:if test="${about.date eq '14'}">selected</c:if>>14</option>
             <option value="15"<c:if test="${about.date eq '15'}">selected</c:if>>15</option>
             <option value="16"<c:if test="${about.date eq '16'}">selected</c:if>>16</option>
             <option value="17"<c:if test="${about.date eq '17'}">selected</c:if>>17</option>
             <option value="18"<c:if test="${about.date eq '18'}">selected</c:if>>18</option>
             <option value="19"<c:if test="${about.date eq '19'}">selected</c:if>>19</option>
             <option value="20"<c:if test="${about.date eq '20'}">selected</c:if>>20</option>
             <option value="21"<c:if test="${about.date eq '21'}">selected</c:if>>21</option>
             <option value="22"<c:if test="${about.date eq '22'}">selected</c:if>>22</option>
             <option value="23"<c:if test="${about.date eq '23'}">selected</c:if>>23</option>
             <option value="24"<c:if test="${about.date eq '24'}">selected</c:if>>24</option>
             <option value="25"<c:if test="${about.date eq '25'}">selected</c:if>>25</option>
             <option value="26"<c:if test="${about.date eq '26'}">selected</c:if>>26</option>
             <option value="27"<c:if test="${about.date eq '27'}">selected</c:if>>27</option>
             <option value="28"<c:if test="${about.date eq '28'}">selected</c:if>>28</option>
             <option value="29"<c:if test="${about.date eq '29'}">selected</c:if>>29</option>
             <option value="30"<c:if test="${about.date eq '30'}">selected</c:if>>30</option>
             <option value="31"<c:if test="${about.date eq '31'}">selected</c:if>>31</option>
           </select> 일
           </td>
        </tr>
        <tr>
          <td width="100" class="field_b_pad">내용</td>
          <td class="pad_left" bgcolor="#ffffff"><textarea name="contents" class="b_textarea" style="width: 100%;" rows="10">${about.contents}</textarea>
          <input name="cate" type="hidden" value="1">
          <input type="hidden" name="etc" value="">
          </td>
          
        </tr>
      </tbody></table>
      <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
        <tbody><tr>
          <td height="50" align="center" valign="bottom">
                        <input onfocus="this.blur();" onclick="window.alert('수정되었습니다')" type="image" src="${contextPath}/images/BlueAD/admin/btn_ok.gif">
            <img style="cursor: pointer;" onclick="location.href='list?pn=1'" src="${contextPath}/images/BlueAD/admin/btn_list.gif">
            <img style="cursor: pointer;" onclick="really(${about.no})" src="${contextPath}/images/BlueAD/admin/btn_del.gif">
                                  </td>
        </tr>
      </tbody></table>
    </td>
  </tr>
  
</tbody>
</table>
</form>
</c:if>
</div>
<script type="text/javascript">
function checkIt(){
    var form = document.form;

    if(form.year.value==""){
        alert("[년/월/일]을 입력하세요.");
        form.year.focus();
        return false
    }

    if(form.month.value==""){
        alert("[년/월/일]을 입력하세요.");
        form.month.focus();
        return false
    }

    if(form.contents.value==""){
        alert("내용을 입력하세요.");
        form.contents.focus();
        return false
    }

  return true;
}
function really(no){
    if (confirm("정말 삭제하시겠습니까??") == true){    //확인
            window.location = "delete?no=" + no;
            window.alert("삭제되었습니다");
    }else{   //취소
        return;
    }
}
</script>
</body>
</html>
