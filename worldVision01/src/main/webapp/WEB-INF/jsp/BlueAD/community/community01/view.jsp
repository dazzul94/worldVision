<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title></title>
<script type="text/javascript" src="${contextPath}/js/BlueAD/jquery-1.3.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/div.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/style.css">
<link rel="stylesheet" media="screen" href="${contextPath}/css/BlueAD/lightbox/lightbox.css" type="text/css">
</head>




<body>
<div id="header">
<jsp:include page="../../top.jsp"/>
</div>
<div id="navigation">
<jsp:include page="../community_left.jsp"/>
</div>
<div id="content">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif" align="absmiddle"><font color="#5555aa"> 월드</font></td>
  </tr>
  <tr>
    <td height="1" background="${contextPath}/images/BlueAD/admin/title_dot_line.gif"></td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</table>
 

<!-- lightbox(좌,우) -->
<link rel="stylesheet" media="screen" href="/BlueAD/lightbox/css/lightbox.css" type="text/css">
<script src="/BlueAD/lightbox/js/prototype.js" type="text/javascript"></script>
<script src="/BlueAD/lightbox/js/scriptaculous.js?load=effects" type="text/javascript"></script>
<script src="/BlueAD/lightbox/js/lightbox.js" type="text/javascript"></script>

<!-- lightbox+(확대,좌,우)
<link rel="stylesheet" type="text/css" href="/BlueAD/lightbox2/resource/sample.css" media="screen,tv" title="default"/> 
<link rel="stylesheet" type="text/css" href="/BlueAD/lightbox2/resource/lightbox.css" media="screen,tv" />
<script type="text/javascript" charset="euc-kr" src="/BlueAD/lightbox2/resource/lightbox_plus_min.js"></script>-->




   

<script language="javascript" src="/BlueAD/js/new_win.js"></script>
<link rel="stylesheet" type="text/css" href="skin/bbs/bluead_gray/style.css">
<script language="javascript">
<!--
function post_del() {
  if(confirm('삭제 하시겠습니까?')) document.form1.submit();
  else return;
}

function post_del_eng() {
  if(confirm('삭제 하시겠습니까?(eng)')) document.form1.submit();
  else return;
}


function resize_check(){
  var main_table_width = document.get_table_width.width;
  var target_resize_num = document.target_resize.length;
  for(i=0;i<target_resize_num;i++){
    if(document.target_resize[i].width > main_table_width) {
      document.target_resize[i].width = main_table_width;
    }
  }
}

window.onload = resize_check;
//-->
</script>
<script language="javascript" src="/BlueAD/js/common_checking.js"></script>


<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%" height="29" align="center" colspan="6">
    
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="4"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_left.gif"></td>
          <td width="70" height="29" align="center" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_sbj.gif"></td>
          <td background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_bg.gif" style="padding-left:10"><span class="bbs_normal">${community.bbs_subject } </span></td>
          <td width="4"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_right.gif"></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td height="27" align="center" colspan="6">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="70" height="27" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_name.gif"></td>
          <td style="padding-left:10">
            <a href="email_send.php?email=d3ZjaG9pckB3dmNob2lyLm9yLmty" target="email_frm" class="bbs_link"><img src="${contextPath}/images/BlueAD/skin/bbs/1198130437.gif" align="absmiddle"></a>          </td>
          <td width="70" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_date.gif"></td>
          <td width="120" align="center"><span class="bbs_normal">2016-09-19 17:13</span></td>
          <td width="70" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_hit.gif"></td>
          <td width="45" align="center"><span class="bbs_normal">120</span></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
  <td height="1" colspan="6" bgcolor="#e6e6e6"></td>
  </tr>
	  <tr>
    <td height="27" align="center" colspan="6">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="70" height="27" align="center"><span class="bbs_normal"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_file2.gif"></span></td>
          <td colspan="3" style="padding-left:10"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/hwp.gif" align="absmiddle">&nbsp;<a href="download.php?bbs_id=wv_community01&bbs_no=307&bbs_admin=chk&file_no=2" class="bbs_link">2017년도_연주반_승단대상자_사전교육_커뮤니티용.hwp</a>&nbsp;<span class="bbs_normal">(0.02M)</span></td>
          <td width="70" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_down.gif"></td>
          <td width="45" align="center"><span class="bbs_normal">48</span></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td height="1" colspan="6" bgcolor="#e6e6e6"></td>
  </tr>
	  <tr>
    <td colspan="6" style="padding:10px">
      <table border="0" cellspacing="0" cellpadding="0" width="100%" height="1">        <tr>
          <td><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/t.gif" border="0" width="100%" height="1" name="get_table_width"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/t.gif" border="0" name="target_resize" width="1" height="1"></td>
        </tr>
        <tr>
          <td>
                        <span class="bbs_normal"><head><style>body{font-family: Tahoma,Verdana,Arial;font-size: 11px;color: #555555;margin: 0px}td{font-size :11px; font-family: Tahoma,Verdana,Arial;}p{margin-top:1px;margin-bottom:1px;}</style>

<style>body{font-family: Tahoma,Verdana,Arial;font-size: 11px;color: #555555;margin: 0px}td{font-size :11px; font-family: Tahoma,Verdana,Arial;}p{margin-top:1px;margin-bottom:1px;}</style>


</head><body><p>안녕하세요</p><p>2017년도 연주반 승단 대상자 사전교육과 관련하여 자세한 사항은 첨부파일을 참조해주시기 바랍니다.</p><p>** 9월 24일 오리엔테이션은 취소되었습니다. 10월 1일 교육 첫날 오리엔테이션을 겸하게 되었으니 착오 없으시길 바랍니다.</p><p><br></p><p>감사합니다.</p><p>월드비전 음악원 드림.</p>
</body></span>
          </td>
        </tr>
      </table>
    </td>
  </tr>
    <tr>
    <td height="15" colspan="6" class="bbs_padding_right" align="right"><span class="bbs_small_1">IP : 106.253.62.231</span></td>
  </tr>
    <tr>
    <td height="5"></td>
  </tr>
  <tr>
    <td height="1" bgcolor="#e6e6e6"></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<form name="form1" method="post" action="write_ok.php">
<input type="hidden" name="bbs_id" value="wv_community01">
<input type="hidden" name="bbs_no" value="307">
<input type="hidden" name="page" value="1">
<input type="hidden" name="key" value="">
<input type="hidden" name="keyword" value="">
<input type="hidden" name="bbs_admin" value="chk">
<input type="hidden" name="act" value="delete">
  <tr>
    <td height="40" width="70">
      <a href="board.php?bbs_id=wv_community01&page=1&key=&keyword=&bbs_admin=chk"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_list.gif" align="absmiddle" border="0"></a>
    </td>
    <td align="right">
    <a href="board.php?bbs_id=wv_community01&mode=write&act=modify&bbs_no=307&page=1&key=&keyword=&bbs_admin=chk"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_modify.gif" align="absmiddle" border="0"></a>
<a href="javascript:post_del()"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_del.gif" align="absmiddle" border="0"></a>
<a href="board.php?bbs_id=wv_community01&mode=write&page=1&key=&keyword=&bbs_admin=chk"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write.gif" align="absmiddle" border="0"></a>
    </td>
  </tr>
</form>
</table>
<script language="JavaScript">
function checkIt() {
	var form=document.form;
		if(textBox_chk('comm_content', '내용을') == false) return;
	form.submit();
	}

function checkIt2(frm) {
	if(frm.comm_content.value==""){
		alert("내용을 입력하세요");
		frm.comm_content.focus();
		return false;
	}
	return true;
}

function comm_del(comm_no) {
	var form=document.form_comm_del;
	if(confirm('삭제 하시겠습니까?')) {
		form.comm_no.value=comm_no;
		form.submit();
	}
	return;
}

var old='';
function reply_com(no){

	submenu = document.getElementById('re'+no).style

	if(old!=submenu){
	if(old!=''){old.display = 'none';}
	submenu.display = 'block';
	old = submenu;
	}
	else
	{
	submenu.display = 'none';
	old='';
	}
}
</script>
<br>
<table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#dedede">
  <tr>
	  <td bgcolor="#FFFFFF">
			<table width="100%" border="0" cellpadding="10" cellspacing="0" bgcolor="#f5f5f5">
			  <tr>
				  <td>
            <table border="0" cellspacing="0" cellpadding="0" width="100%">
              <form action="comment_ok.php" method="post" name="form" id="form">
                <input type="hidden" name="bbs_id" value="wv_community01">
<input type="hidden" name="bbs_no" value="307">
<input type="hidden" name="page" value="1">
<input type="hidden" name="key" value="">
<input type="hidden" name="keyword" value="">
<input type="hidden" name="bbs_admin" value="chk">
                <input type="hidden" name="comm_emot" value="1">
                <tr>
                  <td align="center"  bgcolor="#ffffff"><table width="100%" border="0" cellpadding="0" cellspacing="0" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_reply_icon.gif" style="background-repeat:no-repeat; background-position:top left">
                    <tr>
                      <td height="30" align="center">&nbsp;</td>
                      <td align="right" style="padding-top:5">
                      &nbsp;					</td>
                      <td align="center">&nbsp;</td>
                    </tr>
                    <tr>
                      <td width="80" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_cmnt_title.gif"></td>
                      <td style="padding:0 0 10 0"><textarea id="comm_content" name="comm_content" rows="3" style="width:100%" class="txtarea"></textarea></td>
                      <td width="70" align="center"><a href="javascript:checkIt();"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_cmnt_ok.gif" align="absmiddle" border="0" /></a></td>
                    </tr>
                  </table>
                 </td>
                </tr>
              </form>
            </table>
            			<!-- board.php?bbs_id=wv_gallery03&mode=write&act=reply&bbs_no=1174&page=1&key=&keyword=&bbs_admin=chk -->
            <br><br>
            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                        <form name="form_comm_del" method="post" action="comment_ok.php">
            <input type="hidden" name="bbs_id" value="wv_community01">
<input type="hidden" name="bbs_no" value="307">
<input type="hidden" name="page" value="1">
<input type="hidden" name="key" value="">
<input type="hidden" name="keyword" value="">
<input type="hidden" name="bbs_admin" value="chk">
            <input type="hidden" name="comm_no" value="">
                                        <tr>
                <td height="1" bgcolor="#e6e6e6"></td>
              </tr>
              <tr>
                <td bgcolor="#f1f1f1">
					                  <table border="0" cellspacing="0" cellpadding="0" width="100%">
                    <tr>
                      <td width="80" height="20" bgcolor="#f9f9f9" style="padding-left:10"><b>지예슬</b></td>
                      <td bgcolor="#f9f9f9" style="padding:10"><span class="txt_s">
                        감사합니다. -분당반 지서윤 입니다.                      </span></span></td>
                      <td width="100" align="right" bgcolor="#f9f9f9" class="t" >
                      <span class="txt_s"><font color="#999999">2016-09-21</font></span>&nbsp;&nbsp;
                        <a href="javascript:comm_del(415956);"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_cmtdel.gif" align="absmiddle" border="0" alt="코멘트 삭제"></a>&nbsp;<a href="javascript:reply_com(415956);"><img src="/index/images/bluead_r.gif" align="absmiddle" border="0" alt="코멘트 덧글"></a>                        </td>
                    </tr>
                  </table>
                </td>
              </tr>
			                </form>
              			
			  <tr style="display:none" id="re415956">
				<td bgcolor="#f1f1f1">
					<table border="0" cellspacing="0" cellpadding="0" width="100%">
						<form action="comment_ok.php" method="post" name="form415956" id="form415956" onsubmit="return checkIt2(this);">
						<input type="hidden" name="bbs_id" value="wv_community01">
<input type="hidden" name="bbs_no" value="307">
<input type="hidden" name="page" value="1">
<input type="hidden" name="key" value="">
<input type="hidden" name="keyword" value="">
<input type="hidden" name="bbs_admin" value="chk">

						<input type="hidden" name="comm_emot" value="1">
						<input type="hidden" name="comm_no" value="415956">
						<input type="hidden" name="comm_mode" value="reply">
						<input type="hidden" name="fid" value="415956">
						<input type="hidden" name="thread" value="A">
						<tr>
							<td align="center"  bgcolor="#ffffff">
								<table width="100%" border="0" cellpadding="0" cellspacing="0" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_reply_icon.gif" style="background-repeat:no-repeat; background-position:top left">
									<tr>
										<td height="30" align="center">&nbsp;</td>
										<td align="right" style="padding-top:5">
											&nbsp;					</td>
										<td align="center">&nbsp;</td>
									</tr>
									<tr>
										<td width="80" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_cmnt_title.gif"></td>
										<td style="padding:0 0 10 0"><textarea id="comm_content" name="comm_content" rows="3" style="width:100%" class="txtarea"></textarea></td>
										<td width="70" align="center"><input type="image" src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_cmnt_ok.gif" align="absmiddle" border="0" /></td>
									</tr>
								</table>
							</td>
						</tr>
						</form>
					</table>
				</td>
			  </tr>


                            <tr>
                <td height="15" class="t" align="right"><span class="txt_es">IP : 210.97.37.238</span></td>
              </tr>
                                          <tr>
                <td height="1" bgcolor="#e6e6e6"></td>
              </tr>
              <tr>
                <td bgcolor="#f1f1f1">
					                  <table border="0" cellspacing="0" cellpadding="0" width="100%">
                    <tr>
                      <td width="80" height="20" bgcolor="#f9f9f9" style="padding-left:10"><b>관리자</b></td>
                      <td bgcolor="#f9f9f9" style="padding:10"><span class="txt_s">
                        9월 24일 오리엔테이션이 있을 예정이었으나 10월 1일 교육 첫날 오리엔테이션을 겸하게 되었습니다. 착오 없으시길 바랍니다.                      </span></span></td>
                      <td width="100" align="right" bgcolor="#f9f9f9" class="t" >
                      <span class="txt_s"><font color="#999999">2016-09-20</font></span>&nbsp;&nbsp;
                        <a href="javascript:comm_del(415955);"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_cmtdel.gif" align="absmiddle" border="0" alt="코멘트 삭제"></a>&nbsp;<a href="javascript:reply_com(415955);"><img src="/index/images/bluead_r.gif" align="absmiddle" border="0" alt="코멘트 덧글"></a>                        </td>
                    </tr>
                  </table>
                </td>
              </tr>
			                </form>
              			
			  <tr style="display:none" id="re415955">
				<td bgcolor="#f1f1f1">
					<table border="0" cellspacing="0" cellpadding="0" width="100%">
						<form action="comment_ok.php" method="post" name="form415955" id="form415955" onsubmit="return checkIt2(this);">
						<input type="hidden" name="bbs_id" value="wv_community01">
<input type="hidden" name="bbs_no" value="307">
<input type="hidden" name="page" value="1">
<input type="hidden" name="key" value="">
<input type="hidden" name="keyword" value="">
<input type="hidden" name="bbs_admin" value="chk">

						<input type="hidden" name="comm_emot" value="1">
						<input type="hidden" name="comm_no" value="415955">
						<input type="hidden" name="comm_mode" value="reply">
						<input type="hidden" name="fid" value="415955">
						<input type="hidden" name="thread" value="A">
						<tr>
							<td align="center"  bgcolor="#ffffff">
								<table width="100%" border="0" cellpadding="0" cellspacing="0" background="skin/bbs/bluead_gray/images/bluead_reply_icon.gif" style="background-repeat:no-repeat; background-position:top left">
									<tr>
										<td height="30" align="center">&nbsp;</td>
										<td align="right" style="padding-top:5">
											&nbsp;					</td>
										<td align="center">&nbsp;</td>
									</tr>
									<tr>
										<td width="80" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_cmnt_title.gif"></td>
										<td style="padding:0 0 10 0"><textarea id="comm_content" name="comm_content" rows="3" style="width:100%" class="txtarea"></textarea></td>
										<td width="70" align="center"><input type="image" src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_cmnt_ok.gif" align="absmiddle" border="0" /></td>
									</tr>
								</table>
							</td>
						</tr>
						</form>
					</table>
				</td>
			  </tr>


                            <tr>
                <td height="15" class="t" align="right"><span class="txt_es">IP : 106.253.62.231</span></td>
              </tr>
                                          <tr>
                <td height="1" bgcolor="#e6e6e6"></td>
              </tr>
              <tr>
                <td bgcolor="#f1f1f1">
					                  <table border="0" cellspacing="0" cellpadding="0" width="100%">
                    <tr>
                      <td width="80" height="20" bgcolor="#f9f9f9" style="padding-left:10"><b>안서연</b></td>
                      <td bgcolor="#f9f9f9" style="padding:10"><span class="txt_s">
                        감사합니다 확인했습니다 -강남반안서진-                      </span></span></td>
                      <td width="100" align="right" bgcolor="#f9f9f9" class="t" >
                      <span class="txt_s"><font color="#999999">2016-09-20</font></span>&nbsp;&nbsp;
                        <a href="javascript:comm_del(415954);"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_cmtdel.gif" align="absmiddle" border="0" alt="코멘트 삭제"></a>&nbsp;<a href="javascript:reply_com(415954);"><img src="/index/images/bluead_r.gif" align="absmiddle" border="0" alt="코멘트 덧글"></a>                        </td>
                    </tr>
                  </table>
                </td>
              </tr>
			                </form>
              			
			  <tr style="display:none" id="re415954">
				<td bgcolor="#f1f1f1">
					<table border="0" cellspacing="0" cellpadding="0" width="100%">
						<form action="comment_ok.php" method="post" name="form415954" id="form415954" onsubmit="return checkIt2(this);">
						<input type="hidden" name="bbs_id" value="wv_community01">
<input type="hidden" name="bbs_no" value="307">
<input type="hidden" name="page" value="1">
<input type="hidden" name="key" value="">
<input type="hidden" name="keyword" value="">
<input type="hidden" name="bbs_admin" value="chk">

						<input type="hidden" name="comm_emot" value="1">
						<input type="hidden" name="comm_no" value="415954">
						<input type="hidden" name="comm_mode" value="reply">
						<input type="hidden" name="fid" value="415954">
						<input type="hidden" name="thread" value="A">
						<tr>
							<td align="center"  bgcolor="#ffffff">
								<table width="100%" border="0" cellpadding="0" cellspacing="0" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_reply_icon.gif" style="background-repeat:no-repeat; background-position:top left">
									<tr>
										<td height="30" align="center">&nbsp;</td>
										<td align="right" style="padding-top:5">
											&nbsp;					</td>
										<td align="center">&nbsp;</td>
									</tr>
									<tr>
										<td width="80" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_cmnt_title.gif"></td>
										<td style="padding:0 0 10 0"><textarea id="comm_content" name="comm_content" rows="3" style="width:100%" class="txtarea"></textarea></td>
										<td width="70" align="center"><input type="image" src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_cmnt_ok.gif" align="absmiddle" border="0" /></td>
									</tr>
								</table>
							</td>
						</tr>
						</form>
					</table>
				</td>
			  </tr>


                            <tr>
                <td height="15" class="t" align="right"><span class="txt_es">IP : 1.224.2.47</span></td>
              </tr>
                                          <tr>
                <td height="1" bgcolor="#e6e6e6"></td>
              </tr>
              
            </table>
						          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<br><br>
</div>
</body>
</html>
