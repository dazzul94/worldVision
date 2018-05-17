<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script type="text/javascript"
	src="${contextPath}/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script
	src='${contextPath}/node_modules/jquery/d	ist/jquery.slim.min.js'></script>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/BlueAD/admin/div.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/BlueAD/admin/style.css">
<link rel="stylesheet" media="screen"
	href="${contextPath}/css/BlueAD/lightbox/lightbox.css" type="text/css">
</head>

<body>
	<p id="status"></p>
	<div id="header">
		<jsp:include page="../../top.jsp" />
	</div>
	<div id="navigation">
		<jsp:include page="../choir_left.jsp" />
	</div>
	<div id="content">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="25" class="txt_blue_b"><img
					src="${contextPath}/images/BlueAD/admin/title_icon.gif"
					align="absmiddle"> CHOIR 지도교사</td>
			</tr>
			<tr>
				<td height="4"
					background="${contextPath}/images/BlueAD/admin/title_dot_line.gif"></td>
			</tr>
			<tr>
				<td height="20"></td>
			</tr>
		</table>

		<form name="form" method="post" action="choirUpdate"
			onSubmit="return FormCheckIt();" ENCTYPE="multipart/form-data">
				<input type="hidden" name="ct_no" value="${choirTeacher.ct_no}">
				<input type="hidden" name="img1_micro" value="${choirTeacher.img1_micro}">
				<input type="hidden" name="wdate" value="${choirTeacher.wdate}">
				<input type="hidden" name="sort" value="${choirTeacher.sort}">
				<input name="originalFilename" type="hidden" value="${choirTeacher.img1_thumbo}" size="40">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<table border="0" cellspacing="1" cellpadding="4" width="100%"
							bgcolor="#cad4e3">
							<tr>
								<td width="100" height="35" class="field_b_pad">CHOIR</td>
								<td bgcolor="#FFFFFF" style="padding-left: 10px"> 
									<select id="choirType" name="c_no">
									<c:set var="c_no" value="${choirTeacher.c_no}" />
										<option value="">::선택하세요::</option>
										<option value="1">[연주반] 연주반</option>
										<option value="3">[지역반] 강서반</option>
										<option value="4">[지역반] 강남반</option>
										<option value="5">[지역반] 강북반</option>
										<option value="6">[지역반] 일산반</option>
										<option value="7">[연주반] 영재반</option>
										<option value="8">[지역반] 분당반</option>
										<option value="9">[비전싱어즈] 비전싱어즈</option>
									</select>
								</td>
							</tr>
							<tr>
								<td height="35" class="field_b_pad">이미지</td>
								<td bgcolor="#FFFFFF" style="padding-left: 10px"><img
									src="${contextPath}/images/BlueAD/admin/choirTeacher/upload/${choirTeacher.img1_thumbo}"
									width="80"> <input type="checkbox" name="img_del"
									value="Y"> <font color="red">파일을
										삭제합니다.</font><br>
								<input name="file" type="file" class="b_input" /></td>
							</tr>
							<tr>
								<td height="35" class="field_b_pad">한글 이름</td>
								<td bgcolor="#FFFFFF" style="padding-left: 10px">
								<input type="text" class="b_input" name="kor_name1" value="${choirTeacher.kor_name1}" size="25"> 
								<input type="text" class="b_input" name="kor_name2" value="${choirTeacher.kor_name2}" size="20">
								</td>
							</tr>
							<tr>
								<td height="35" class="field_b_pad">한글 설명</td>
								<td bgcolor="#FFFFFF" style="padding-left: 10px"><textarea
										style="width: 100%; height: 80px;" class="b_input"
										name="kor_contents">${choirTeacher.kor_contents}</textarea></td>
							</tr>
							<tr>
								<td height="35" class="field_b_pad">영문 이름</td>
								<td bgcolor="#FFFFFF" style="padding-left: 10px"><input
									type="text" class="b_input" name="eng_name1" value="${choirTeacher.eng_name1}" size="25">
									<input type="text" class="b_input" name="eng_name2" value="${choirTeacher.eng_name2}"
									size="20"></td>
							</tr>
							<tr>
								<td height="35" class="field_b_pad">영문 설명</td>
								<td bgcolor="#FFFFFF" style="padding-left: 10px"><textarea
										style="width: 100%; height: 80px;" class="b_input"
										name="eng_contents">${choirTeacher.eng_contents}</textarea></td>
							</tr>

						</table>
					</td>
				</tr>
				<tr>
					<td align="center">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
							<td height="50" align="center">
							<img src="${contextPath}/images/BlueAD/admin/btn_list.gif" onclick="location.href='list?pn=1'" style="cursor: pointer"> 
							<input type="image" src="${contextPath}/images/BlueAD/admin/btn_ok.gif" onfocus="this.blur();">
							<img src="${contextPath}/images/BlueAD/admin/btn_del.gif" onFocus="this.blur();" onClick="Go_Del();" style="cursor: pointer;">
							</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>

	</div>
	<script type="text/javascript">
	<!--
		function FormCheckIt() {
			if (!Text_Value_Check('form', 'c_no', 'CHOIR를 선택하세요.'))
				return false;
			return true;
		}

		function Text_Value_Check(f, name, msg) {
			var o = eval('document.' + f + '.' + name);
			if (o.value == "") {
				alert(msg);
				o.focus();
				return false;
			}
			return true;
		}

		function Go_Del() {
			if (!confirm("삭제하시겠습니까??"))
				return false;
			var f = document.form;
			f.mode.value = "delete";
			f.submit();
		}
	//-->
	window.onload = function() {
			var c_no = '<c:out value="${c_no}"/>'; 
			
			if (c_no == '1') {
				$("#choirType option:eq(1)").prop("selected", true);
			} else if (c_no == '3') {
				$("#choirType option:eq(2)").prop("selected", true);
			} else if (c_no == '4') {
				$("#choirType option:eq(3)").prop("selected", true);
			} else if (c_no == '5') {
				$("#choirType option:eq(4)").prop("selected", true);
			} else if (c_no == '6') {
				$("#choirType option:eq(5)").prop("selected", true);
			} else if (c_no == '7') {
				$("#choirType option:eq(6)").prop("selected", true);
			} else if (c_no == '8') {
				$("#choirType option:eq(7)").prop("selected", true);
			} else if (c_no == '9') {
				$("#choirType option:eq(8)").prop("selected", true);
			}
	}
	</script>
</body>
</html>
