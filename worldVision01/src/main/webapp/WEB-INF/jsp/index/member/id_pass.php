<? 
include $_SERVER['DOCUMENT_ROOT']."/index/head.php";
include $_SERVER['DOCUMENT_ROOT']."/index/head_top.php";
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_db.php";
$db_id = new DB();
$db_pwd = new DB();

include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/define.php";
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/fun/function.php";

?>

<script language="javascript">
	function chk_idpass(form){

	if(!form.member_name.value){
		alert("이름을 입력해 주세요.");
		form.member_name.focus();
		return false;
	}

	if(!form.member_email.value){
		alert("이메일을 입력해 주세요.");
		form.member_email.focus();
		return false;
	}
}

function chk_idpass_set(form){

	if(!form.member_name.value){
		alert("이름을 입력해 주세요.");
		form.member_name.focus();
		return false;
	}

	if(!form.member_email.value){
		alert("이메일을 입력해 주세요.");
		form.member_email.focus();
		return false;
	}
	
	if(!form.member_id.value){
		alert("아이디를 입력해 주세요.");
		form.member_id.focus();
		return false;
	}
	if(!form.member_num.value){
		alert("인증번호를 입력해 주세요.");
		form.member_num.focus();
		return false;
	}
	window.open("","_pw_change","width=500px,height=300px;");
	form.target = "_pw_change";
	form.action = "./id_pw_change.php";
}

//인증번호받기
function funEmail()	{
	var DefinedStr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	  var emailEx1 = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	  var form = document.search_pw;

	  if(form.member_name.value=="") {
		 alert('이름을 입력을 하세요.');
		 form.member_name.focus();
		 return false;
	  }
	  if(form.member_name.value.indexOf(" ")>=0) {
		alert('이름에는 공백이 포함될수 없습니다.');
		form.member_name.focus();
		return false;
	  }
	  for(i=0;i<form.member_name.value.length;i++) {
		var a=form.member_name.value.charCodeAt(i);
		if (a < 128) {
		  alert('이름은 한글만 가능합니다.');
		  form.member_name.focus();
		  return false;
		}
	  }	
	  
	  if(form.member_id.value=="") {
		 alert('아이디를 입력을 하세요.');
		 form.member_id.focus();
		 return false;
	  }
		if(form.member_email.value=="") {
		 alert('이메일주소를 입력을 하세요.');
		 form.member_email.focus();
		 return false;
	  }

	form.action = "join_email_num2.php";
	form.target = "emailChk";
	form.submit();

}

</script>

<table width="730" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="right" background="images/mb_img.gif" style="background-repeat:no-repeat; padding-top:15px">
      <table width="570" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>
          <!-- 아이디 -->
            <table width="570" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><img src="images/find_id_title.gif"></td>
              </tr>
              <tr>
                <td><img src="images/box_top.gif"></td>
              </tr>
              <tr>
                <td align="center" background="images/box_bg2.gif">
                  <table width="520" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="130" valign="top"><img src="images/img_id.gif"></td>
                      <td valign="top">
                        <!-- 아이디 찾기 폼 -->
                        <table width="390" border="0" cellspacing="0" cellpadding="0">
                        <form name="search_id" method="post" onsubmit="return chk_idpass(this)"  action="<?=$PHP_SELF?>">
                        <input type="hidden" name="mode" value="search_id">
                          <tr>
                            <td width="70" height="22"><img src="images/find_name.gif"></td>
                            <td class="txt_s">
                              <input name="member_name" type="text" class="b_input" size="15">
                              실명으로 공백없이 정확히 입력해주세요.
                            </td>
                          </tr>
                          <tr>
                            <td height="22"><img src="images/find_email.gif" alt="이메일"></td>
                            <td>
                            <input name="member_email" type="text" class="b_input" size="23">
                            </td>
                          </tr>
                          <tr>
                            <td height="22"></td>
                            <td class="txt_s">가입시 입력하신 사항을 정확히 입력해주세요.</td>
                          </tr>
                          <tr>
                            <td></td>
                            <td><input type="image" src="images/btn_ok.gif"></td>
                          </tr>
                        </form>
                        </table>
                        <!-- 아이디 폼 끝 -->
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td><img src="images/box_foot.gif"></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="45"></td>
        </tr>
        <tr>
          <td>
          <!-- 비빌번호 -->
            <table width="570" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><img src="images/find_pw_title.gif"></td>
              </tr>
              <tr>
                <td><img src="images/box_top.gif"></td>
              </tr>
              <tr>
                <td align="center" background="images/box_bg2.gif">
                  <table width="520" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="130" valign="top"><img src="images/img_pw.gif"></td>
                      <td valign="top">
                        <!-- 비번 찾기 폼 -->
                        <table width="390" border="0" cellspacing="0" cellpadding="0">
                        <form name="search_pw" method="post" onsubmit="return chk_idpass_set(this)" action="./id_pw_change.php">
                        <input type="hidden" name="mode" value="search_pass">
                          <tr>
                            <td width="70" height="22"><img src="images/find_name.gif"></td>
                            <td class="txt_s">
                              <input name="member_name" type="text" class="b_input" size="12">
                              실명으로 공백없이 정확히 입력해주세요.
                            </td>
                          </tr>
                          <tr>
                            <td width="70" height="22"><img src="images/find_id.gif"></td>
                            <td class="txt_s">
                              <input name="member_id" type="text" class="b_input" size="12">
                              가입된 아이디를 정확히 입력해주세요.
                            </td>
                          </tr>
                          <tr>
                            <td height="22"><img src="images/find_email.gif" alt="이메일"></td>
                            <td><input name="member_email" type="text" class="b_input" size="23"> <img src="images/auth_num_re.gif" onclick="funEmail();" style="cursor:hand"></td>
                          </tr>
                          <tr>
                            <td height="22"><img src="images/find_email2.gif" alt="인증번호"></td>
                            <td><input name="member_num" type="text" class="b_input" size="23"></td>
                          </tr>
                          <tr>
                            <td height="22"></td>
                            <td class="txt_s">가입시 입력하신 사항을 정확히 입력해주세요.</td>
                          </tr>
                          <tr>
                            <td></td>
                            <td><input type="image" src="images/btn_ok.gif"></td>
                          </tr>
                        </form>
                        </table>
                        <!-- 비번 폼 끝 -->
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td><img src="images/box_foot.gif"></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</table>

<iframe name="emailChk" style="display:none;"></iframe>

<?
include $_SERVER['DOCUMENT_ROOT']."/index/foot_top.php";
include $_SERVER['DOCUMENT_ROOT']."/index/foot.php";
	

if($mode == "search_id"){
	$db_id->Query("SELECT * FROM BlueAD_member where member_name ='$member_name' AND member_email = '$member_email'");
	$row = $db_id->Fetch();

	if($row) {
		include $_SERVER['DOCUMENT_ROOT']."/index/member/search_result_email.php";		
		echo "<script language='javascript'>";
		echo "alert(\"$row[member_email]로 아이디를 발송했습니다.\")";
		echo "</script>";
	} else {
		echo "<script language='javascript'>";
		echo "alert(\"조건에 해당하는 아이디를 검색하지 못했습니다.\")";
		echo "</script>";
	}
	Location('/index/member/id_pass.php','');

}
/*else if($mode == "search_pass"){

	$db_pwd->Query("SELECT * FROM BlueAD_member where member_id = '$member_id' AND member_name ='$member_name' AND member_email = '$member_email'");
	$row = $db_pwd->Fetch();
	if($row) {
		include $_SERVER['DOCUMENT_ROOT']."/index/member/search_result_email.php";

		echo "<script language='javascript'>";
		echo "alert(\"$row[member_email]로 비밀번호를 발송했습니다.\")";
		echo "</script>";
	} else {
		echo "<script language='javascript'>";
		echo "alert(\"조건에 해당하는 아이디를 검색하지 못했습니다.\")";
		echo "</script>";
	}
	Location('/index/member/id_pass.php','');
}
*/
?>
