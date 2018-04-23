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
	echo "alert('이미 로그인 되어있습니다.');";
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
		
	 if(form.member_register1.value.length != 6) {
		alert('주민등록번호가 제대로 기입되지 않았습니다.');
		form.member_register1.focus();
		 return false;
	  }
	  else if(form.member_register2.value.length != 7) {
		alert('주민등록번호가 제대로 기입되지 않았습니다.');
		form.member_register2.focus();
		 return false;
	  } else {
		var str_serial1 = form.member_register1.value;
		var str_serial2 = form.member_register2.value;
		var digit=0
		for(var i=0;i<str_serial1.length;i++){
		  var str_dig=str_serial1.substring(i,i+1);
		  if (str_dig<'0' || str_dig>'9') {
			digit=digit+1
		  }
		}
		if((str_serial1 == '') || ( digit != 0 )){
		  alert('잘못된 주민등록번호입니다.\n\n다시 확인하시고 입력해 주세요.');
		  form.member_register1.focus();
		   return false;
		}
		var digit1=0
		for(var i=0;i<str_serial2.length;i++){
		  var str_dig1=str_serial2.substring(i,i+1);
		  if (str_dig1<'0' || str_dig1>'9'){
			digit1=digit1+1
		  }
		}
		if((str_serial2 == '') || ( digit1 != 0 )){
		  alert('잘못된 주민등록번호입니다.\n\n다시 확인하시고 입력해 주세요.');
		  form.member_register2.focus();
		   return false;
		}
		if(str_serial1.substring(2,3) > 1){
		  alert('잘못된 주민등록번호입니다.\n\n다시 확인하시고 입력해 주세요.');
		  form.member_register1.focus();
		   return false;
		}
		if(str_serial1.substring(4,5) > 3){
		  alert('잘못된 주민등록번호입니다.\n\n다시 확인하시고 입력해 주세요.');
		  form.member_register1.focus();
		   return false;
		}
		if(str_serial2.substring(0,1) > 4 || str_serial2.substring(0,1) == 0){
		  alert('잘못된 주민등록번호입니다.\n\n다시 확인하시고 입력해 주세요.');
		  form.member_register2.focus();
		   return false;
		}
		var a1=str_serial1.substring(0,1)
		var a2=str_serial1.substring(1,2)
		var a3=str_serial1.substring(2,3)
		var a4=str_serial1.substring(3,4)
		var a5=str_serial1.substring(4,5)
		var a6=str_serial1.substring(5,6)
		var check_digit=a1*2+a2*3+a3*4+a4*5+a5*6+a6*7
		var b1=str_serial2.substring(0,1)
		var b2=str_serial2.substring(1,2)
		var b3=str_serial2.substring(2,3)
		var b4=str_serial2.substring(3,4)
		var b5=str_serial2.substring(4,5)
		var b6=str_serial2.substring(5,6)
		var b7=str_serial2.substring(6,7)
		var check_digit=check_digit+b1*8+b2*9+b3*2+b4*3+b5*4+b6*5
			check_digit = check_digit%11
			check_digit = 11 - check_digit
			check_digit = check_digit%10
		if(check_digit != b7){
		  alert('잘못된 주민등록번호입니다.\n\n다시 확인하시고 입력해 주세요.');
		  form.member_register2.focus();
		   return false;
		}
	  }

	  if(form.agree_chk.checked==false) {
		alert('회원가입약관에 동의 하셔야 회원가입을 하실수 있습니다.');
		form.agree_chk.focus();
		return false;
	  }  

	  if(form.agree_chk1.checked==false) {
		alert('개인정보보호정책에 동의 하셔야 회원가입을 하실수 있습니다.');
		form.agree_chk.focus();
		return false;
	  }  

	return true;
	}

</script>
</div>


<table width="730" border="0" cellspacing="0" cellpadding="0">
<form name="form" method="post" action="join.php" onsubmit="return chk_sub();">
	<input type="hidden" name="mode" value="chk_mode">
  <tr>
    <td><img src="images/real_title.gif"></td>
  </tr>
  <tr>
    <td>
      <!-- 실명인증 -->
      <table width="730" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="images/join_box_top.gif"></td>
        </tr>
        <tr>
          <td align="center" background="images/join_box_bg.gif">
            <table border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100" height="25"><img src="images/real_name.gif"></td>
                <td><input name="member_name" type="text" class="b_input" size="28"></td>
              </tr>
              <tr>
                <td height="25"><img src="images/real_regist.gif"></td>
                <td>
                  <input name="member_register1" type="text" class="b_input" size="12" maxlength="6" onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;" style="IME-MODE:disabled;" onkeyup="checkInput(form.member_register1,form.member_register2,6);">
                  -
                  <input name="member_register2" type="password" class="b_input" size="12"  maxlength="7" onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;" style="IME-MODE:disabled;"></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td><img src="images/join_box_foot.gif"></td>
        </tr>
      </table>
      <!-- 실명인증 끝 -->
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
      <!-- 약관 -->
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
      <!-- 약관 끝 -->
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
      <!-- 개인보호정책 -->
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
      <!-- 개인정책 끝 -->
    </td>
  </tr>
  <tr>
    <td height="15"></td>
  </tr>
  <tr>
    <td align="center"><input type="image" src="images/btn_next.gif"></td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</form>
</table>

<iframe name="idChk" style="display:none;"></iframe>
<iframe name="juminChk" style="display:none;"></iframe>

<? 
include $_SERVER['DOCUMENT_ROOT']."/index/foot_top.php";
include $_SERVER['DOCUMENT_ROOT']."/index/foot.php";
?>
