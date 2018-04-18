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
</head>

<body>
<body>
<div id="header">
<jsp:include page="../../top.jsp"/>
</div>
<div id="navigation">
<jsp:include page="../../left.jsp"/>
</div>
<div id="content">

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" class="txt_blue_b"><img src="${contextPath}/images/BlueAD/admin/title_icon.gif" align="absmiddle"><font color="#5555aa"> 월드 </font></td>
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
<script language="javascript" src="/BlueAD/js/common_checking.js"></script>
<script language="javascript">
<!--
var emailEx1 = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
function checkIt(bbs_admin,CFG_USE_FILTERING) {
  var form=document.form; 
  
  if(form.bbs_email.value) {
    if(!emailEx1.test(form.bbs_email.value)) {
      alert('이메일 주소를 정확시 입력하세요!');
      form.bbs_email.focus();
      return;
    }
  }
  if(textBox_chk('bbs_subject', '제목을') == false) return;
  // if(textBox_chk('bbs_content', '내용을') == false) return;
 document.form.bbs_content.value = SubmitHTML(); 

 if(document.form.bbs_content.value == false) { 
	alert('내용을 입력해 주세요.'); 
	  gmFrame.focus(); 
	  return;
  } 

  if(CFG_USE_FILTERING=="Y"){
		if(bbs_admin!="chk"){
			var cfg_filtering = form.CFG_FILTERING.value;
			var filtering_txt = cfg_filtering.split('/');
			var bbs_content = form.bbs_content.value;

			for(i=0;i<filtering_txt.length;i++){
				//alert(filtering_txt[i]);
				var filter_index = bbs_content.indexOf(filtering_txt[i]);
				if(filter_index!="-1"){
					alert(filtering_txt[i] + "은(는) 사용할수 없는 단어 입니다.");
					return;
				}
			}
		}
	}

	
	
	editor_wr_ok();
	form.submit();	
}




//-->
</script>
<table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#cbcbcb">
  <tr>
    <td align="center" bgcolor="#f3f3f3">
      <table border="0" cellspacing="0" cellpadding="0" width="98%">
      <form name="form" method="post" action="write_ok.php" enctype="multipart/form-data">
      <input type="hidden" name="bbs_id" value="wv_community01">
      <input type="hidden" name="bbs_no" value="307">
      <input type="hidden" name="page" value="1">
      <input type="hidden" name="key" value="">
      <input type="hidden" name="keyword" value="">
      <input type="hidden" name="fid" value="307">
      <input type="hidden" name="thread" value="A">
      <input type="hidden" name="act" value="modify">
      <input type="hidden" name="CFG_FILTERING" value="성인/대출/광고/야동/양아치/세끼/꼴에/미친/새끼/똘아이/병신/씨발/씨바야/시발/좃까튼/조까튼/좃/꼴통/니나/미친X/젓가튼/젓같은/싸가지/4가지/개자식/개.새.끼/성추행">
      <input type="hidden" name="bbs_admin" value="chk">
              <tr>
          <td width="100" height="30" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write_name.gif"></td>
          <td class="bbs_padding_left">
          <input type="text" name="bbs_name" size="20" class="bbs_input" value="관리자">          </td>
        </tr>
        <tr>
          <td height="1" colspan="2" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_line.gif"></td>
        </tr>
        <tr>
          <td height="30" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write_mail.gif"></td>
          <td class="bbs_padding_left">
          <input type="text" name="bbs_email" size="35" class="bbs_input" value="wvchoir@wvchoir.or.kr">          <span class="txt_s">자주 사용하는 이메일을 기입해주세요.</span></td>
        </tr>
        <tr>
          <td height="1" colspan="2" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_line.gif"></td>
        </tr>
        <tr>
          <td height="30" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write_sbj.gif"></td>
          <td class="bbs_padding_left">
            <input type="text" name="bbs_subject" size="50" class="bbs_input" value="2017년도 연주반 승단 대상자 사전교육">
            <input type="checkbox" name="bbs_notice" value="Y" ><span class="txt_s">공지글
          (체크하시면 항상 최상위에 등록되어 있습니다.)</span>           </td>
        </tr>
        <tr>
          <td height="1" colspan="2" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_line.gif"></td>
        </tr>
              <tr>
          <td height="30" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write_cnt.gif"></td>
          <td class="bbs_padding_all">
            <table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
                            <tr>
                <td>
                  <script language='javascript' src='./editor/languages/euc-kr/java.lang.js'></script>
<script language="javascript">
<!--
var _editor_url = "./editor";
var _contentValue = "bbs_content";
var _contentName = "form";
var _i_uploaded = "";
var _m_uploaded = "";

function editor_wr_ok(){
	document.form.bbs_content.value = SubmitHTML();
	document.form.submit();
}
//-->
</script>
		<TABLE BORDER="1" WIDTH=100% cellspacing="0" bordercolor="#EFEFEF" bordercolordark="white" bordercolorlight="#DBDBDB">
			<TR>
				<TD>
					<table align="center" border="0" cellpadding="1" cellspacing="3" width="100%">
						<tr>
							<td bgcolor="#EFEFEF">
							<script language="javascript">
							<!--
							document.write('<table border="0" cellpadding="5" cellspacing="0" width="100%"><tr><td height="2"></td></tr><tr><td><table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td height="20"><img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/edit_4.gif" border="0" align="absmiddle" ONCLICK="newDoc()" TITLE="' + editor_lang[0] + '"> <img style="cursor:hand;" src="' + _editor_url + '/img/edit_1.gif" border="0" align="absmiddle" ONCLICK="htmlfalse(\'cut\')" TITLE="' + editor_lang[1] + '"> <img style="cursor:hand;" src="' + _editor_url + '/img/edit_2.gif" border="0" align="absmiddle" ONCLICK="htmlfalse(\'copy\')" TITLE="' + editor_lang[2] + '"> <img style="cursor:hand;" src="' + _editor_url + '/img/edit_3.gif" border="0" align="absmiddle" ONCLICK="htmlfalse(\'paste\')" TITLE="' + editor_lang[3] + '"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/edit_5.gif" border="0" align="absmiddle" ONCLICK="htmlfalse(\'outdent\')" TITLE="' + editor_lang[4] + '"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/edit_6.gif" border="0" align="absmiddle" ONCLICK="htmlfalse(\'indent\')" TITLE="' + editor_lang[5] + '"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/edit_7.gif" border="0" align="absmiddle" NCLICK="htmlfalse(\'superscript\')" TITLE="' + editor_lang[6] + '"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/edit_8.gif" border="0" align="absmiddle" ONCLICK="htmlfalse(\'subscript\')" TITLE="' + editor_lang[7] + '"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/edit_9.gif" border="0" align="absmiddle" ONCLICK="htmlfalse(\'undo\')" TITLE="' + editor_lang[8] + '"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/edit_10.gif" border="0" align="absmiddle" ONCLICK="htmlfalse(\'redo\')" TITLE="' + editor_lang[9] + '"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_5.gif" border="0" TITLE="' + editor_lang[10] + '" ONCLICK="htmlfalse(\'justifyleft\')" align="absmiddle"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_6.gif" border="0" TITLE="' + editor_lang[11] + '" ONCLICK="htmlfalse(\'justifycenter\')" align="absmiddle"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_7.gif" border="0" TITLE="' + editor_lang[12] + '" ONCLICK="htmlfalse(\'justifyright\')" align="absmiddle"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_10.gif" border="0" TITLE="' + editor_lang[13] + '" ONCLICK="htmlfalse(\'insertorderedlist\')" align="absmiddle"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_11.gif" border="0" TITLE="' + editor_lang[14] + '" ONCLICK="htmlfalse(\'insertunorderedlist\')" align="absmiddle"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_18.gif" align="absmiddle" border="0" oNCLICK="htmlfalse(\'inserthorizontalrule\');" title="' + editor_lang[15] + '"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/edit_11.gif" border="0" TITLE="' + editor_lang[16] + '" ONCLICK="createHTML(\'fontname\',4);" align="absmiddle"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/edit_12.gif" border="0" TITLE="' + editor_lang[17] + '" ONCLICK="createHTML(\'fontsize\',7);" align="absmiddle"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_1.gif" name="item_1" border="0" TITLE="' + editor_lang[18] + '" ONCLICK="htmlfalse(\'bold\');" align="absmiddle"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_2.gif" border="0" TITLE="' + editor_lang[19] + '" ONCLICK="htmlfalse(\'italic\')" align="absmiddle"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_3.gif" border="0" TITLE="' + editor_lang[20] + '" ONCLICK="htmlfalse(\'strikethrough\')" align="absmiddle"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_4.gif" border="0" TITLE="' + editor_lang[21] + '" ONCLICK="htmlfalse(\'underline\')" align="absmiddle"></td></tr><tr><td height="20"><img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_8.gif" border="0" TITLE="' + editor_lang[22] + '" onclick="createHTML(\'forecolor\',5);" align="absmiddle"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_9.gif" border="0" TITLE="' + editor_lang[23] + '" onclick="createHTML(\'hilitecolor\',6);" align="absmiddle"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_12.gif" border="0" TITLE="' + editor_lang[24] + '" ONCLICK="createHTML(\'CreateLink\',8);" align="absmiddle"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_16.gif" border="0" onclick="createHTML(\'\',1);" align=absmiddle title="' + editor_lang[25] + '"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_19.gif" align="absmiddle" border="0" title="' + editor_lang[26] + '" onclick="createHTML(\'\',2);"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_20.gif" align="absmiddle" border="0" title="' + editor_lang[27] + '" onclick="createHTML(\'InsertImage\',3);"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_13.gif" border="0" TITLE="' + editor_lang[28] + '" onclick="file_upload(0,\'upfile\');" align="absmiddle"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_14.gif" border="0" TITLE="' + editor_lang[29] + '" onclick="file_upload(1,\'media\');" align="absmiddle"> <span id="zoomin" style="position:absolute;"></span> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_17.gif" border="0" TITLE="' + editor_lang[30] + '" onclick="editor_html();" align="absmiddle"> <img style="cursor:hand;cursor:pointer;" src="' + _editor_url + '/img/item_21.gif" border="0" TITLE="' + editor_lang[31] + '" onclick="editor_view();" align="absmiddle"></td></tr><tr><td height="2"></td></tr></table></td></tr></table>');
							//-->
							</script>
							</td>
						</tr>
						<tr>
							<td>
							<iframe id="gmEditor" WIDTH="100%" HEIGHT="200" scrolling="auto" border=1 frameborder=0 framespacing=0 hspace=0 marginheight=0 marginwidth=0 vspace=0></iframe>
							<textarea cols=0 rows=0 style="display:none;" wrap='physical' name="bbs_content">&lt;head&gt;&lt;style&gt;body{font-family: Tahoma,Verdana,Arial;font-size: 11px;color: #555555;margin: 0px}td{font-size :11px; font-family: Tahoma,Verdana,Arial;}p{margin-top:1px;margin-bottom:1px;}&lt;/style&gt;

&lt;style&gt;body{font-family: Tahoma,Verdana,Arial;font-size: 11px;color: #555555;margin: 0px}td{font-size :11px; font-family: Tahoma,Verdana,Arial;}p{margin-top:1px;margin-bottom:1px;}&lt;/style&gt;


&lt;/head&gt;&lt;body&gt;&lt;p&gt;안녕하세요&lt;/p&gt;&lt;p&gt;2017년도 연주반 승단 대상자 사전교육과 관련하여 자세한 사항은 첨부파일을 참조해주시기 바랍니다.&lt;/p&gt;&lt;p&gt;** 9월 24일 오리엔테이션은 취소되었습니다. 10월 1일 교육 첫날 오리엔테이션을 겸하게 되었으니 착오 없으시길 바랍니다.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;감사합니다.&lt;/p&gt;&lt;p&gt;월드비전 음악원 드림.&lt;/p&gt;
&lt;/body&gt;</textarea>
							<input type="hidden" name="editor_url" id="editor_url" value="./editor">
							<input type="hidden" name="editor_stom" id="editor_stom" value="euc-kr">
							<script language="javascript" src='./editor/gmEditor.js'></script>
							</td>
						</tr>
					</table>
				</TD>
			</TR>
		</TABLE>
                        <!-- <textarea name="bbs_content" id="bbs_content" rows="20" style="width:100%" class="bbs_textarea"><head><style>body{font-family: Tahoma,Verdana,Arial;font-size: 11px;color: #555555;margin: 0px}td{font-size :11px; font-family: Tahoma,Verdana,Arial;}p{margin-top:1px;margin-bottom:1px;}</style>

<style>body{font-family: Tahoma,Verdana,Arial;font-size: 11px;color: #555555;margin: 0px}td{font-size :11px; font-family: Tahoma,Verdana,Arial;}p{margin-top:1px;margin-bottom:1px;}</style>


</head><body><p>안녕하세요</p><p>2017년도 연주반 승단 대상자 사전교육과 관련하여 자세한 사항은 첨부파일을 참조해주시기 바랍니다.</p><p>** 9월 24일 오리엔테이션은 취소되었습니다. 10월 1일 교육 첫날 오리엔테이션을 겸하게 되었으니 착오 없으시길 바랍니다.</p><p><br></p><p>감사합니다.</p><p>월드비전 음악원 드림.</p>
</body></textarea> -->
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="1" colspan="2" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_line.gif"></td>
        </tr>
              <tr>
          <td height="30" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write_file1.gif"></td>
          <td class="bbs_padding_side">
            <input type="file" name="bbs_file[]" style="width:100%" class="bbs_input">          </td>
        </tr>
        <tr>
          <td height="1" colspan="2" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_line.gif"></td>
        </tr>
              <tr>
          <td height="30" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write_file2.gif"></td>
          <td class="bbs_padding_side">
            <input type="file" name="bbs_file[]" style="width:100%" class="bbs_input"><br><span class="bbs_normal">[2017년도_연주반_승단대상자_사전교육_커뮤니티용.hwp] 파일이 등록되어 있습니다.<input type="checkbox" name="del_file[]" value="2" class="input_no_border"> 삭제</span>          </td>
        </tr>
        <tr>
          <td height="1" colspan="2" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_line.gif"></td>
        </tr>
              <tr>
          <td height="30" align="center"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_write_file3.gif"></td>
          <td class="bbs_padding_side">
            <input type="file" name="bbs_file[]" style="width:100%" class="bbs_input">          </td>
        </tr>
        <tr>
          <td height="1" colspan="2" background="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_view_line.gif"></td>
        </tr>
            </form>
      </table>
    </td>
  </tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr height="50">
    <td align="center">
      <a href="javascript:checkIt('chk','Y');"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_ok.gif" align="absmiddle" border="0"></a>&nbsp;
      <a href="board.php?bbs_id=wv_community01&page=1&key=&keyword=&bbs_admin=chk"><img src="${contextPath}/images/BlueAD/skin/bbs/bluead_gray/bluead_cancel.gif" align="absmiddle" border="0"></a>
    </td>
  </tr>

</table>
</div>
</body>
</html>