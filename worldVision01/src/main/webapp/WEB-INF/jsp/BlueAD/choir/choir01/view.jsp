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
<script src='${contextPath}/node_modules/jquery/d	ist/jquery.slim.min.js'></script>
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
		<form method="post" action="choirUpdate"
			onSubmit="return FormCheckIt();" ENCTYPE="multipart/form-data">
			<input type="hidden" name="c_no" value="${choir01.c_no}"> <input
				type="hidden" name="wdate" value="${choir01.wdate}"> <input
				type="hidden" name="img1_thumb" value="${choir01.img1_thumb}">
			<input name="originalFilename" type="hidden"
				value="${choir01.img1_micro}" size="40">
			<table border="0" cellspacing="1" cellpadding="4" width="100%"
				bgcolor="#cad4e3">
				<tr>
					<td width="200" height="35" class="field_b_pad">분류</td>

					<td bgcolor="#FFFFFF" style="padding-left: 10px"><input
						type="radio" name="type" value="1" onClick="Tr_Display('1');">
						연주반&nbsp;&nbsp;&nbsp; <input type="radio" name="type" value="2"
						onClick="Tr_Display('2');"> 지역반&nbsp;&nbsp;&nbsp; <input
						type="radio" name="type" value="3" onClick="Tr_Display('3');">
						비전싱어즈&nbsp;&nbsp;&nbsp;</td>
				</tr>
				<tr>
					<td height="35" class="field_b_pad">제목</td>
					<td bgcolor="#FFFFFF" style="padding-left: 10px"><input
						type="text" class="b_input" name="title" value="${choir01.title}"
						size="50"></td>
				</tr>
				<tr>
					<td height="35" class="field_b_pad">내용</td>
					<td bgcolor="#FFFFFF" style="padding-left: 10px"><textarea
							name="contents" id="ir1" rows="20" cols="150">${choir01.contents}</textarea>
				</tr>

				<tr>
					<td height="35" class="field_b_pad">이미지</td>
					<td bgcolor="#FFFFFF" style="padding-left: 10px">
						<div id="holder">
							<img
								src="${contextPath}/images/BlueAD/admin/choir/upload/${choir01.img1_micro}"
								width="300px" height="200">
						</div> <input type="checkbox" name="img_del" value="Y"> <font
						color="red">파일을 삭제합니다.</font><br> <input name="file"
						type="file" class="b_input" id="prevv" />
					</td>
				</tr>
				<tr id="tr1">
					<td height="35" class="field_b_pad">연습장소</td>
					<td bgcolor="#FFFFFF" style="padding-left: 10px"><input
						type="text" class="b_input" name=y_place
						value="${choir01.y_place}" size="50"></td>
				</tr>
				<tr id="tr2">
					<td height="35" class="field_b_pad">연습시간</td>
					<td bgcolor="#FFFFFF" style="padding-left: 10px"><input
						type="text" class="b_input" name="y_time"
						value="${choir01.y_time}" size="50"></td>
				</tr>
				<tr id="tr3">
					<td height="35" class="field_b_pad">주소</td>
					<td bgcolor="#FFFFFF" style="padding-left: 10px"><input
						type="text" class="b_input" name="addr" value="${choir01.addr}"
						size="50"></td>
				</tr>
				<tr id="tr4">
					<td height="35" class="field_b_pad">약도주소[네이버지도연동]</td>
					<td bgcolor="#FFFFFF" style="padding-left: 10px"><input
						type="text" class="b_input" name="map_addr"
						value="${choir01.map_addr}" size="50"></td>

				</tr>

			</table>

			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="50" align="center"><a href="list?pn=1"><img
							src="${contextPath}/images/BlueAD/admin/btn_list.gif"
							style="cursor: pointer"></a> <input type="image"
						src="${contextPath}/images/BlueAD/admin/btn_ok.gif"
						onclick="sendSub()"></td>
				</tr>
			</table>

		</form>
	</div>
	<c:set var="type" value="${choir01.type}" />
	<script type="text/javascript">
		function FormCheckIt() {
			var f = document.form;
			editor_wr_ok();
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

		function Tr_Display(t) {
			if (t == '1' || t == '3') {
				tr1.style.display = "none";
				tr2.style.display = "none";
				tr3.style.display = "none";
				tr4.style.display = "none";
			} else {
				tr1.style.display = "block";
				tr2.style.display = "block";
				tr3.style.display = "block";
				tr4.style.display = "block";
			}
		}

		function Go_Del() {
			if (!confirm("삭제하시겠습니까??"))
				return false;
			var f = document.form;
			f.mode.value = "delete";
			f.submit();
		}

		window.onload = function() {
			var type = '<c:out value="${type}"/>'; 
			/* window.alert(type); */
			if (type == '1') {
				$("input:radio[name='type']:radio[value='1']").prop("checked",
						true);
			} else if (type == '2') {
				$("input:radio[name='type']:radio[value='2']").prop("checked",
						true);
			} else if (type == '3') {
				$("input:radio[name='type']:radio[value='3']").prop("checked",
						true);
			}
			Tr_Display(type);
		}
	</script>


	<script type="text/javascript">
		var oEditors = [];

		nhn.husky.EZCreator.createInIFrame({

			oAppRef : oEditors,

			elPlaceHolder : "ir1",

			sSkinURI : "${contextPath}/se2/SmartEditor2Skin.html",

			fCreator : "createSEditor2"

		});
		function sendSub() {
			oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
			window.alert(document.getElementById("ir1").value);
			try {
				form.submit();
			} catch (e) {
			}
		}

		var upload = document.getElementById('prevv'), holder = document
				.getElementById('holder'), state = document
				.getElementById('status');

		if (typeof window.FileReader === 'undefined') {
			state.className = 'fail';
		} else {
			state.className = 'success';
		}

		upload.onchange = function(e) {
			e.preventDefault();

			var file = upload.files[0], reader = new FileReader();
			reader.onload = function(event) {
				var img = new Image();
				img.src = event.target.result;
				// note: no onload required since we've got the dataurl...I think! :)
				img.height = 200;
				img.width = 300;
				holder.innerHTML = '';
				holder.appendChild(img);
			};
			reader.readAsDataURL(file);

			return false;
		};
	</script>
</body>
</html>
