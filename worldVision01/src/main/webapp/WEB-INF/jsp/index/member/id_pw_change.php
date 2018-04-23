<?
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_db.php";
$db = new DB();

include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/define.php";
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/fun/function.php";

$db->Query("SELECT * FROM BlueAD_member where member_id = '$member_id' AND member_name ='$member_name' AND member_email = '$member_email'");
$row = $db->Fetch();
if(!$row[member_id]) ErrorMsg("회원정보를 찾을 수 없습니다.", "close");

$db->Query("select * from BlueAD_member_num where member_email='$member_email' and member_name='$member_name' and member_num='$member_num' order by no desc limit 1");
$erow = $db->Fetch();
if(!$erow[no]) ErrorMsg("인증번호가 틀렸습니다.", "close");

if ($mode=="ok") {
	$db->Query("UPDATE BlueAD_member SET member_pass='".sql_password($member_pass)."' WHERE member_id='$member_id'");
?>
<script type="text/javascript">
<!--

alert('비밀번호 변경이 완료되었습니다.');
opener.location.href="/index/member/login.php";
self.close();

//-->
</script>
<?
	exit;
}
?>
<link href="/index/include/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
<!--
	
	function FormSUbmit() {
		var form = document.form;
		var DefinedStr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	  if(form.member_pass.value.length < 4 || form.member_pass.value.length > 10) {
		alert('비밀번호는 4 ~ 10 이내로 입력하세요.');
		form.member_pass.focus();
		return false;
	  }
	  if(form.member_repass.value=="") {
		alert('비밀번호 확인란을 입력하세요.');
		form.member_repass.focus()
		return false;
	  }

	  for(i=0; i<form.member_pass.value.length; i++) {
		if(DefinedStr.indexOf(form.member_pass.value.substring(i,i+1))<0) {
		  alert('비밀번호에 허용할 수 없는 문자가 입력되었습니다\n\n다시 입력해 주세요.');
		  form.member_pass.focus();
		  return false;
		}
	  }
	  if(form.member_pass.value != form.member_repass.value){
		alert('비밀번호가 일치하지 않습니다.\n\n다시 확인해 주세요.');
		form.member_pass.focus()
		return false;
	  }
	  return true;
	}


//-->
</script>
<table width="450" border="0" cellspacing="0" cellpadding="0" style="margin:20px;">
<form method="post" name="form" action="<?=$PHP_SELF?>" onsubmit="return FormSUbmit();">
<input type="hidden" name="mode" value="ok">
<input type="hidden" name="member_id" value="<?=$member_id?>">
<input type="hidden" name="member_name" value="<?=$member_name?>">
<input type="hidden" name="member_email" value="<?=$member_email?>">
<input type="hidden" name="member_num" value="<?=$member_num?>">
  <tr>
	<td colspan="3"><img src="images/pass_title01.gif"></td>
  </tr>
  <tr>
	<td colspan="3" height="20"></td>
  </tr>
  <tr>
    <td height="2" colspan="3" bgcolor="#555555"></td> <!-- =========bgcolor는 사이트 컬러에 맞게 수정할 것 -->
  </tr>
  <tr>
    <td width="135" bgcolor="#f7f7f7" style="border-left:solid 1px #e4e4e4;"><img src="images/field_name.gif"></td><!-- 이름 -->
    <td width="1" bgcolor="#e4e4e4"></td>
    <td style="padding:10px; border-right:solid 1px #e4e4e4;"><?=$row[member_name]?></td>
  </tr>
  <tr>
   <td height="1" colspan="3" bgcolor="#e4e4e4"></td>
  </tr>
  <tr>
    <td width="135" bgcolor="#f7f7f7" style="border-left:solid 1px #e4e4e4;"><img src="images/field_pass01.gif"></td><!-- 패스워드 -->
    <td width="1" bgcolor="#e4e4e4"></td>
    <td style="padding:10px; border-right:solid 1px #e4e4e4;"><input name="member_pass" type="password" size="26" class="b_input"></td>
  </tr>
  <tr>
    <td height="1" colspan="3" bgcolor="#e4e4e4"></td>
  </tr>
  <tr>
    <td width="135" bgcolor="#f7f7f7" style="border-left:solid 1px #e4e4e4;"><img src="images/field_pass02.gif"></td><!-- 변경할패스워드 -->
    <td width="1" bgcolor="#e4e4e4"></td>
    <td style="padding:10px; border-right:solid 1px #e4e4e4;"><input name="member_repass" type="password" size="26" class="b_input"></td>
  </tr>
  <tr>
    <td height="1" colspan="3" bgcolor="#e4e4e4"></td>
  </tr>
  <tr>
    <td height="20" colspan="3"></td>
  </tr>
  <tr>
    <td colspan="3" align="center"><table border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><input type="image" src="images/join_ok2.gif"></td>
        <td width="5"></td>
        <td><img src="images/join_cancel.gif" onClick="window.close();" style="cursor:pointer;"></td>
      </tr>
    </table>
    </td>
  </tr>
</form>
</table>
