<? 
include $_SERVER['DOCUMENT_ROOT']."/index/head.php";
include $_SERVER['DOCUMENT_ROOT']."/index/head_top.php";

include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_db.php";
$db_c = new DB();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/define.php";
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/fun/function.php";

$db_c -> Query("SELECT * FROM BlueAD_terms WHERE no = '1'");
$row_c = $db_c->Fetch();

if($_SESSION['MEMBER_ID']){
	echo "<script language='javascript'>";
	echo "alert('�̹� �α��� �Ǿ��ֽ��ϴ�.');";
	echo "location.href='/index/';";
	echo "</script>";
}

?>


<script language="javascript">
	function OpenZip(url,w,h) {
	  window.open(url, "StartWindow", "scrollbars=yes, toolbar=no, location=no, directories=no, width="+w+",height="+h+",resizable=no,mebar=no,left=0,top=0");
	}

	function chk_sub() {
	  var DefinedStr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	  var emailEx1 = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	  var form = document.form;

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

		if(form.member_email.value=="") {
		 alert('�̸����ּҸ� �Է��� �ϼ���.');
		 form.member_email.focus();
		 return false;
	  }

		if(form.member_email_num.value=="") {
		 alert('������ȣ�� �Է��� �ϼ���.');
		 form.member_email_num.focus();
		 return false;
	  }
	  

	  if(form.agree_chk.checked==false) {
		alert('ȸ�����Ծ���� ���� �ϼž� ȸ�������� �ϽǼ� �ֽ��ϴ�.');
		form.agree_chk.focus();
		return false;
	  }  

	  if(form.agree_chk1.checked==false) {
		alert('����������ȣ��å�� ���� �ϼž� ȸ�������� �ϽǼ� �ֽ��ϴ�.');
		form.agree_chk.focus();
		return false;
	  } 
		form.action = "join.php";
		form.target = "";
		form.submit();

	return true;
	}
//������ȣ�ޱ�
function funEmail()	{
	var DefinedStr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	  var emailEx1 = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	  var form = document.form;

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

		if(form.member_email.value=="") {
		 alert('�̸����ּҸ� �Է��� �ϼ���.');
		 form.member_email.focus();
		 return false;
	  }

	form.action = "join_email_num.php";
	form.target = "emailChk";
	form.submit();

}
</script>
</div>


<table width="730" border="0" cellspacing="0" cellpadding="0">
<form name="form" method="post" >
	<input type="hidden" name="mode" value="chk_mode">
	<input type="hidden" name="mode_type" value="email">

	
  <tr>
    <td><img src="images/real_title.gif"></td>
  </tr>
  <tr>
    <td>
      <!-- �Ǹ����� -->
      <table width="730" border="0" cellspacing="0" cellpadding="0" >
        <tr>
          <td><img src="images/join_box_top.gif"></td>
        </tr>
        <tr>
          <td align="center" background="images/join_box_bg.gif" >
            <table border="0" cellspacing="0" cellpadding="0" >
              <tr>
                <td width="100" height="25"><img src="images/fd1.gif"></td>
                <td><input name="member_name" type="text" class="b_input" size="28"></td>
              </tr>
              
							<tr>
                <td width="100" height="25"><img src="images/fd3.gif"></td>
                <td><input name="member_email" type="text" class="b_input" size="28"> <img src="images/auth_num_re.gif" onclick="funEmail();" style="cursor:hand"></td>
              </tr>
							<tr>
                <td width="100" height="25"><img src="images/fd4.gif"></td>
                <td><input name="member_email_num" type="text" class="b_input" size="28"></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td><img src="images/join_box_foot.gif"></td>
        </tr>
      </table>
      <!-- �Ǹ����� �� -->
    </td>
  </tr>
  <tr>
    <td height="45"></td>
  </tr>
  <tr>
    <td><img src="images/agree_title1.gif"></td>
  </tr>
  <tr>
    <td>
      <!-- ��� -->
      <table width="730" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="images/join_box_top.gif"></td>
        </tr>
        <tr>
          <td background="images/join_box_bg.gif" style="padding:10px;">
            <div id="agree">
				<?= $row_c[contents1] ?>
            </div>
          </td>
        </tr>
        <tr>
          <td><img src="images/join_box_foot.gif"></td>
        </tr>
        <tr>
          <td align="right" style="padding-right:10px"><img src="images/agree_check1.gif" align="absmiddle">
            <input type="checkbox" name="agree_chk" value="ok" >
          </td>
        </tr>
      </table>
      <!-- ��� �� -->
    </td>
  </tr>
  <tr>
    <td height="30"></td>
  </tr>
  <tr>
    <td><img src="images/agree_title2.gif"></td>
  </tr>
  <tr>
    <td>
      <!-- ���κ�ȣ��å -->
      <table width="730" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="images/join_box_top.gif"></td>
        </tr>
        <tr>
          <td background="images/join_box_bg.gif" style="padding:10px">
            <div id="agree">
              <?= $row_c[contents2] ?>
            </div>
          </td>
        </tr>
        <tr>
          <td><img src="images/join_box_foot.gif"></td>
        </tr>
        <tr>
          <td align="right" style="padding-right:10px"><img src="images/agree_check2.gif" align="absmiddle">
            <input type="checkbox" name="agree_chk1" value="ok">
          </td>
        </tr>
      </table>
      <!-- ������å �� -->
    </td>
  </tr>
  <tr>
    <td height="15"></td>
  </tr>
  <tr>
    <td align="center"><img src="images/btn_next.gif" onclick="chk_sub();" style="cursor:hand"></td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</form>
</table>

<iframe name="idChk" style="display:none;"></iframe>
<iframe name="emailChk" style="display:none;"></iframe>


<? 
include $_SERVER['DOCUMENT_ROOT']."/index/foot_top.php";
include $_SERVER['DOCUMENT_ROOT']."/index/foot.php";
?>
