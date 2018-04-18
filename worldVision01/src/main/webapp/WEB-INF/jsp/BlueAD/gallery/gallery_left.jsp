<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html>
<head>
<title>메뉴</title>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/style.css">
<script language="javascript">
<!--
function go_chk(url,no,tot) {
  var obj = document.getElementById;
  
  parent.frames['main'].location.href=url;
}

function autoBlur(){
  if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG")
  document.body.focus();
}
document.onfocusin=autoBlur;
//-->
</script>
</head>
<body class="top_left">
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" background="${contextPath}/images/BlueAD/admin/left_bg.gif" style="background-repeat:repeat-y; padding-top:10px">
      <table width="180" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>
            <table width="180" border="0" cellspacing="0" cellpadding="0">
							              <tbody><tr>
                <td height="24" class="left_mn" id="td_no0" onclick="go_chk('/BlueAD/board.php?bbs_id=wv_community01&amp;bbs_admin=chk',0,1);" style="cursor:hand"><img src="${contextPath}/images/BlueAD/admin/left_dot.gif" align="absmiddle"> <a href="../gallery01/list"> 음악감상실</a></td>
              </tr>
              <tr>
                <td height="3" background="${contextPath}/images/BlueAD/admin/left_dot_line.gif" style="background-repeat:no-repeat"></td>
              </tr>
							              <tr>
                <td height="24" class="left_mn" id="td_no1" onclick="go_chk('/BlueAD/board.php?bbs_id=wv_community03&amp;bbs_admin=chk',1,1);" style="cursor:hand"><img src="${contextPath}/images/BlueAD/admin/left_dot.gif" align="absmiddle"> <a href="../gallery02/list"> 영상갤러리</a></td>
              </tr>
              <tr>
                <td height="3" background="${contextPath}/images/BlueAD/admin/left_dot_line.gif" style="background-repeat:no-repeat"></td>
              </tr>
							              <tr>
                <td height="24" class="left_mn" id="td_no2" onclick="go_chk('/BlueAD/board.php?bbs_id=wv_community04&amp;bbs_admin=chk',2,1);" style="cursor:hand"><img src="${contextPath}/images/BlueAD/admin/left_dot.gif" align="absmiddle"> <a href="../community04/list04"> 사진갤러리</a></td>
              </tr>
              <tr>
                <td height="3" background="${contextPath}/images/BlueAD/admin/left_dot_line.gif" style="background-repeat:no-repeat"></td>
              </tr>
							              <tr>
                <td height="24" class="left_mn" id="td_no3" onclick="go_chk('/BlueAD/board.php?bbs_id=wv_community05&amp;bbs_admin=chk',3,1);" style="cursor:hand"><img src="${contextPath}/images/BlueAD/admin/left_dot.gif" align="absmiddle"> <a href="../gallery04/list"> 포스터/이미지</a></td>
              </tr>
              <tr>
                <td height="3" background="${contextPath}/images/BlueAD/admin/left_dot_line.gif" style="background-repeat:no-repeat"></td>
              </tr>
							            </tbody></table>
          </td>
        </tr>
        <tr>
          <td height="60"></td>
        </tr>
        <tr>
          <td align="center">
            <table width="164" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="19"><img src="${contextPath}/images/BlueAD/admin/left_line.gif"></td>
              </tr>
              <tr>
                <td height="20" align="right" valign="bottom" background="${contextPath}/images/BlueAD/admin/ftp_bar.gif" style="padding-right:10px"><b><?= $total_size = substr((Folder_Size($_SERVER['DOCUMENT_ROOT']) / 1024/ 1024),0,4); ?></b> MB</td>
              </tr>
              <tr>
                <td height="5"></td>
              </tr>
              <tr>
                <td height="20" align="right" valign="bottom"  background="${contextPath}/images/BlueAD/admin/db_bar.gif" style="padding-right:10px"><b><?= $total_size = substr((MySQL_Size() / 1024/ 1024),0,4); ?></b> MB</td>
              </tr>
              <tr>
                <td height="19"><img src="${contextPath}/images/BlueAD/admin/left_line.gif"></td>
              </tr>
              <tr>
                <td height="40" align="right" valign="bottom" background="${contextPath}/images/BlueAD/admin/design_bar.gif" class="txt_gray_s" style="padding-right:10px">
                <b><?=$mng_info[0]?> <?=$mng_info[1]?>김은채 사원</b><br>
                070-8611-9944<?=$mng_info[2]?></td>
              </tr>
              <tr>
                <td height="5"></td>
              </tr>
              <tr>
                <td height="40" align="right" valign="bottom" background="${contextPath}/images/BlueAD/admin/program_bar.gif" class="txt_gray_s" style="padding-right:10px">
                <b><?=$mng_info[3]?> <?=$mng_info[4]?>최수지 주임</b><br>
                <?=$mng_info[5]?>070-8611-9945</td>
              </tr>
              <tr>
                <td height="15"></td>
              </tr>
              <tr>
                <td><img src="${contextPath}/images/BlueAD/admin/bluead_tel.gif"></td>
              </tr>
              <tr>
                <td background="${contextPath}/images/BlueAD/admin/bluead_tel2.gif" height="143" valign="top" style="padding:14 5 0 0px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="right"><a href="http://www.bluead.co.kr/indexs/client_login.php" target="_blank"><img src="${contextPath}/images/BlueAD/admin/btn_client.gif"></a></td>
                </tr>
                <tr>
                    <td style="padding:62 0 0 30px;" class="txt_gray_s">wvchoirs</td>
                </tr>
                <tr>
                    <td style="padding:0 0 0 30px;" class="txt_gray_s"><?=$mng_info[7]?>1803</td>
                </tr>
                </table></td>
              </tr>
              <tr>
                <td height="20"></td>
              </tr>
              <tr>
                <td height="40" align="right" valign="bottom" background="${contextPath}/images/BlueAD/admin/notice_bar.gif" class="txt_gray_s" style="padding:25px 10px 10px 0px;"><iframe src="http://bluead.co.kr/notice_list.php" width="90%" height="85" scrolling="no" frameborder="0" allowTransparency="true"></iframe></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>>