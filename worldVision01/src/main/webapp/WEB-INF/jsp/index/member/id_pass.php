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
		alert("�̸��� �Է��� �ּ���.");
		form.member_name.focus();
		return false;
	}

	if(!form.member_email.value){
		alert("�̸����� �Է��� �ּ���.");
		form.member_email.focus();
		return false;
	}
}

function chk_idpass_set(form){

	if(!form.member_name.value){
		alert("�̸��� �Է��� �ּ���.");
		form.member_name.focus();
		return false;
	}

	if(!form.member_email.value){
		alert("�̸����� �Է��� �ּ���.");
		form.member_email.focus();
		return false;
	}
	
	if(!form.member_id.value){
		alert("���̵� �Է��� �ּ���.");
		form.member_id.focus();
		return false;
	}
	if(!form.member_num.value){
		alert("������ȣ�� �Է��� �ּ���.");
		form.member_num.focus();
		return false;
	}
	window.open("","_pw_change","width=500px,height=300px;");
	form.target = "_pw_change";
	form.action = "./id_pw_change.php";
}

//������ȣ�ޱ�
function funEmail()	{
	var DefinedStr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	  var emailEx1 = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	  var form = document.search_pw;

	  if(form.member_name.value=="") {
		 alert('�̸��� �Է��� �ϼ���.');
		 form.member_name.focus();
		 return false;
	  }
	  if(form.member_name.value.indexOf(" ")>=0) {
		alert('�̸����� ������ ���Եɼ� �����ϴ�.');
		form.member_name.focus();
		return false;
	  }
	  for(i=0;i<form.member_name.value.length;i++) {
		var a=form.member_name.value.charCodeAt(i);
		if (a < 128) {
		  alert('�̸��� �ѱ۸� �����մϴ�.');
		  form.member_name.focus();
		  return false;
		}
	  }	
	  
	  if(form.member_id.value=="") {
		 alert('���̵� �Է��� �ϼ���.');
		 form.member_id.focus();
		 return false;
	  }
		if(form.member_email.value=="") {
		 alert('�̸����ּҸ� �Է��� �ϼ���.');
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
          <!-- ���̵� -->
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
                        <!-- ���̵� ã�� �� -->
                        <table width="390" border="0" cellspacing="0" cellpadding="0">
                        <form name="search_id" method="post" onsubmit="return chk_idpass(this)"  action="<?=$PHP_SELF?>">
                        <input type="hidden" name="mode" value="search_id">
                          <tr>
                            <td width="70" height="22"><img src="images/find_name.gif"></td>
                            <td class="txt_s">
                              <input name="member_name" type="text" class="b_input" size="15">
                              �Ǹ����� ������� ��Ȯ�� �Է����ּ���.
                            </td>
                          </tr>
                          <tr>
                            <td height="22"><img src="images/find_email.gif" alt="�̸���"></td>
                            <td>
                            <input name="member_email" type="text" class="b_input" size="23">
                            </td>
                          </tr>
                          <tr>
                            <td height="22"></td>
                            <td class="txt_s">���Խ� �Է��Ͻ� ������ ��Ȯ�� �Է����ּ���.</td>
                          </tr>
                          <tr>
                            <td></td>
                            <td><input type="image" src="images/btn_ok.gif"></td>
                          </tr>
                        </form>
                        </table>
                        <!-- ���̵� �� �� -->
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
          <!-- �����ȣ -->
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
                        <!-- ��� ã�� �� -->
                        <table width="390" border="0" cellspacing="0" cellpadding="0">
                        <form name="search_pw" method="post" onsubmit="return chk_idpass_set(this)" action="./id_pw_change.php">
                        <input type="hidden" name="mode" value="search_pass">
                          <tr>
                            <td width="70" height="22"><img src="images/find_name.gif"></td>
                            <td class="txt_s">
                              <input name="member_name" type="text" class="b_input" size="12">
                              �Ǹ����� ������� ��Ȯ�� �Է����ּ���.
                            </td>
                          </tr>
                          <tr>
                            <td width="70" height="22"><img src="images/find_id.gif"></td>
                            <td class="txt_s">
                              <input name="member_id" type="text" class="b_input" size="12">
                              ���Ե� ���̵� ��Ȯ�� �Է����ּ���.
                            </td>
                          </tr>
                          <tr>
                            <td height="22"><img src="images/find_email.gif" alt="�̸���"></td>
                            <td><input name="member_email" type="text" class="b_input" size="23"> <img src="images/auth_num_re.gif" onclick="funEmail();" style="cursor:hand"></td>
                          </tr>
                          <tr>
                            <td height="22"><img src="images/find_email2.gif" alt="������ȣ"></td>
                            <td><input name="member_num" type="text" class="b_input" size="23"></td>
                          </tr>
                          <tr>
                            <td height="22"></td>
                            <td class="txt_s">���Խ� �Է��Ͻ� ������ ��Ȯ�� �Է����ּ���.</td>
                          </tr>
                          <tr>
                            <td></td>
                            <td><input type="image" src="images/btn_ok.gif"></td>
                          </tr>
                        </form>
                        </table>
                        <!-- ��� �� �� -->
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
		echo "alert(\"$row[member_email]�� ���̵� �߼��߽��ϴ�.\")";
		echo "</script>";
	} else {
		echo "<script language='javascript'>";
		echo "alert(\"���ǿ� �ش��ϴ� ���̵� �˻����� ���߽��ϴ�.\")";
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
		echo "alert(\"$row[member_email]�� ��й�ȣ�� �߼��߽��ϴ�.\")";
		echo "</script>";
	} else {
		echo "<script language='javascript'>";
		echo "alert(\"���ǿ� �ش��ϴ� ���̵� �˻����� ���߽��ϴ�.\")";
		echo "</script>";
	}
	Location('/index/member/id_pass.php','');
}
*/
?>
