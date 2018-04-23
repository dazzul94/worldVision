<? 
include $_SERVER['DOCUMENT_ROOT']."/index/head.php";
include $_SERVER['DOCUMENT_ROOT']."/index/head_top.php";
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_db.php";

$db = new DB();

if($mode=="modify"){ // 회원수정

	$db->Query("select * from BlueAD_member where member_id ='".$_SESSION['MEMBER_ID']."'");
	$row = $db->Fetch();

	$member_name = $row[member_name];
	$member_register1 = $row[member_reg_no1];
	$email = explode("@",$row[member_email]);

	if(!$row){
		echo "<script language='javascript'>";
		echo "alert('로그인이 필요합니다.로그인을 해주세요');";
		echo "location.href='/index/member/login.php';";
		echo "</script>";
		exit;
	}

}else if($mode=="chk_mode"){  // 회원 가입여부


	$email = explode("@",$member_email);


	$db->Query("select * from BlueAD_member_num where member_email='$member_email' and member_num='$member_email_num' order by no desc limit 1");
	$row_e = $db->Fetch();

	if(!$row_e){
		echo "<script language='javascript'>";
		echo "alert('입력한 정보가 일치하지 않습니다.');";
		echo "location.href='/index/member/join_agree.php';";
		echo "</script>";
		exit;
	}

	$db->Query("select * from BlueAD_member where member_email ='$member_email' limit 1");
	$row = $db->Fetch();

	if($row){
		echo "<script language='javascript'>";
		echo "alert('회원가입이 되어있습니다.');";
		echo "location.href='/index/member/id_pass.php';";
		echo "</script>";
		exit;
	}

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
	 
	<? if($mode == chk_mode) { ?>
		
	 if(form.member_id.value.length < 4 || form.member_id.value.length > 10) {
		alert('아이디는 4 ~ 10 이내로 입력하세요.');
		form.member_id.focus();
		return false;
	  }
	  if(form.dup_id.value=="") {
		alert('아이디 중복확인을 해주세요.');
		return false;
	  }

	  /* 닉네임 추가시
	  if(form.member_nick.value.length < 4 || form.member_nick.value.length > 10) {
		alert('닉네임은 4 ~ 10 이내로 입력하세요.');
		form.member_nick.focus();
		return false;
	  }
	  if(form.dup_nick.value=="") {
		alert('닉네임 중복확인을 해주세요.');
		return false;
	  }
	  */

	<? } ?>

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



	  if(form.member_email.value=="") {
		alert('메일주소를 입력해 주세요.');
		form.member_email.focus();
		return false;
	  }

	  if(form.member_zip1.value=="" || form.member_zip2.value=="") {
		alert('우편번호를 입력해 주세요.');    
		return false;
	  }
	  if(form.member_address1.value=="") {
		alert('동까지 주소를 입력해 주세요.');
		form.member_address1.focus();
		return false;
	  }
	  if(form.member_address2.value=="") {
		alert('나머지 주소를 입력해 주세요.');
		form.member_address2.focus();
		return false;
	  }


	return true;
	}

	function id_chk() {
	  var DefinedStr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	  var NumStr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
	  var form = document.form;
	  var strid = form.member_id;  
	  if(strid.value.length < 4 || strid.value.length > 10) {
		alert('아이디는 4 ~ 10 이내로 입력하세요.');
		strid.focus();
		return;
	  }
	  if(strid.value.indexOf(" ")>=0) {
		alert('아이디에는 공백이 포함될수 없습니다.!');
		strid.focus();
		return;
	  }
	  if(NumStr.indexOf(strid.value.substring(0,1))<0) {
		alert('아이디 첫 글자는 영문자만 가능합니다.');
		strid.focus();
		return;
	  }
	  for(i=0; i<strid.length; i++) {
		if(DefinedStr.indexOf(strid.value.substring(i,i+1))<0) {
		  alert('아이디는 영문과 숫자로만 이루어 져야 합니다.');
		  strid.focus();
		  return;
		}
	  }
	  idChk.location.href="chk_id.php?member_id="+strid.value;
	}

	function nick_chk() {
	  var DefinedStr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	  var NumStr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
	  var form = document.form;
	  var strid = form.member_nick;  
	  if(strid.value.length < 4 || strid.value.length > 10) {
		alert('닉네임은 4 ~ 10 이내로 입력하세요.');
		strid.focus();
		return;
	  }
	  if(strid.value.indexOf(" ")>=0) {
		alert('닉네임에는 공백이 포함될수 없습니다.!');
		strid.focus();
		return;
	  }
	  nickChk.location.href="chk_nick.php?member_nick="+strid.value;
	}

	function emailchk(){
	   var f = document.form
		f.member_email2.value = f.member_email3.options[f.member_email3.selectedIndex].value
	 }

</script>
<div id="popCal">
<iframe name="popFrame1" src="/index/include/calendar.php" frameborder="0" scrolling="no" width="230" height="210" onMouseout="javascript:close()"></iframe>
<SCRIPT event=onclick() for=document>popCal.style.visibility = "hidden";</SCRIPT>
</div>

<table width="710" border="0" cellspacing="0" cellpadding="0">
<form name="form" method="post" action="join_process.php" onsubmit="return chk_sub();">
	<? if($mode=="chk_mode"){ ?>
	<input type="hidden" name="real_id">
	<input type="hidden" name="dup_id">
	<input type="hidden" name="real_nick">
	<input type="hidden" name="dup_nick">
	<input type="hidden" name="member_name" value="<?= $member_name ?>">
	<input type="hidden" name="member_register1" value="<?= $member_register1 ?>">
	<input type="hidden" name="member_register2" value="<?= $member_register2 ?>">
	<? } ?>
	<input type="hidden" name="mode" value="<?= $mode ?>">
  <tr>
    <td><img src="images/info_title.gif"></td>
  </tr>
  <tr>
    <td>
      <table width="730" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="2" colspan="3" bgcolor="#9d75ad"></td><!-- =========bgcolor는 사이트 컬러에 맞게 수정할 것 -->
        </tr>
        <tr>
          <td width="135" bgcolor="#f7f7f7"><img src="images/field_name.gif"></td><!-- 이름 -->
          <td width="1" bgcolor="e4e4e4"></td>
          <td style="padding:10px"><?= $member_name ?></td>
        </tr>
<? /*
				<? if(!$mode_type)	{ ?>
        <tr>
          <td height="1" colspan="3" bgcolor="e4e4e4"></td>
        </tr>
        <tr>
          <td bgcolor="#f7f7f7"><img src="images/field_regist.gif"></td><!-- 주민등록번호 -->
          <td width="1" bgcolor="e4e4e4"></td>
          <td style="padding:10px"><?= $member_register1 ?>- *******</td>
        </tr>
				<? } ?>
*/ ?>
        <tr>
          <td height="1" colspan="3" bgcolor="e4e4e4"></td>
        </tr>
        <tr>
          <td bgcolor="#f7f7f7"><img src="images/field_id.gif"></td><!-- 아이디 -->
          <td width="1" bgcolor="e4e4e4"></td>
          <td style="padding:10px">

          <? if($mode=="modify"){ ?>
	          <?=$_SESSION['MEMBER_ID']?>
          <? }else{ ?>
		      <input name="member_id" type="text" class="b_input" size="20"> <a href="javascript:id_chk()"><img src="images/btn_dup.gif" align="absmiddle"></a>
          <? } ?>

        </td>
        </tr>
		<!-- 닉네임 사용시
        <tr>
          <td height="1" colspan="3" bgcolor="e4e4e4"></td>
        </tr>
        <tr>
          <td bgcolor="#f7f7f7"><img src="images/field_nick.gif"></td>  
          <td width="1" bgcolor="e4e4e4"></td>
          <td style="padding:10px">
		  
          <? if($mode=="modify"){ ?>
	          <?=$row['member_nick']?>
          <? }else{ ?>
		      <input name="member_nick" type="text" class="b_input" size="20"> <a href="javascript:nick_chk()"><img src="images/btn_dup.gif" align="absmiddle"></a>
          <? } ?>

		  </td>
        </tr>
		-->
        <tr>
          <td height="1" colspan="3" bgcolor="e4e4e4"></td>
        </tr>
        <tr>
          <td bgcolor="#f7f7f7"><img src="images/field_pw.gif"></td><!-- 비밀번호 -->
          <td width="1" bgcolor="e4e4e4"></td>
          <td style="padding:10px" class="txt_s"><input name="member_pass" type="password" class="b_input"  size="20"> *영문,숫자조합의 4~10자리(공백입력불가)</td>
        </tr>
        <tr>
          <td height="1" colspan="3" bgcolor="e4e4e4"></td>
        </tr>
        <tr>
          <td bgcolor="#f7f7f7"><img src="images/field_pw_ok.gif"></td><!-- 비밀번호확인 -->
          <td width="1" bgcolor="e4e4e4"></td>
          <td style="padding:10px"><input name="member_repass" type="password" class="b_input"  size="20"></td>
        </tr>
        <tr>
          <td height="1" colspan="3" bgcolor="e4e4e4"></td>
        </tr>
        <tr>
          <td bgcolor="#f7f7f7"><img src="images/field_birth.gif"></td><!-- 생년월일 -->
          <td width="1" bgcolor="e4e4e4"></td>
          <td style="padding:10px">
          <input name="member_birth1" type="text" class="b_input" size="20" onclick="popFrame1.fPopCalendar(member_birth1,member_birth1,popCal);return false" readonly  style="cursor:pointer" value="<?= $row[member_birth1] ?>">&nbsp;&nbsp;
          <input name="member_birth2" type="radio" value="양력" <? if($row[member_birth2]=="양력"){echo "checked";} ?> >양력&nbsp;&nbsp;
          <input name="member_birth2" type="radio" value="음력" <? if($row[member_birth2]=="음력"){echo "checked";} ?> >음력 </td>
        </tr>
        <tr>
          <td height="1" colspan="3" bgcolor="e4e4e4"></td>
        </tr>
				<? if($mode_type == "email" || $mode=="modify" )	{ ?>
        <tr>
          <td height="1" colspan="3" bgcolor="e4e4e4"></td>
        </tr>
        <tr>
          <td bgcolor="#f7f7f7"><img src="images/field_mail.gif"></td><!-- 이메일 -->
          <td width="1" bgcolor="e4e4e4"></td>
          <td style="padding:10px">
            <input name="member_email" type="text" class="b_input"  size="18" value="<?=$email[0]?>" readonly>
            @
            <input name="member_email2" type="text" class="b_input"  size="18" value="<?=$email[1]?>" readonly>
            <select name="member_email3" onchange="emailchk();" disabled>
            <option value="" <? if($email[1] == ""){echo "selected";} ?>>선 택</option>			
			<option value='naver.com' <? if($email[1] == "naver.com"){echo "selected";} ?> >naver.com</option>
			<option value='hanmail.net' <? if($email[1] == "hanmail.net"){echo "selected";} ?>>hanmail.net</option>
			<option value='hotmail.com' <? if($email[1] == "hotmail.com"){echo "selected";} ?>>hotmail.com</option>
			<option value='nate.com' <? if($email[1] == "nate.com"){echo "selected";} ?>>nate.com</option>
			<option value='yahoo.co.kr' <? if($email[1] == "yahoo.co.kr"){echo "selected";} ?>>yahoo.co.kr</option>
			<option value='empas.com' <? if($email[1] == "empas.com"){echo "selected";} ?>>empas.com</option>
			<option value='dreamwiz.com' <? if($email[1] == "dreamwiz.com"){echo "selected";} ?>>dreamwiz.com</option>
			<option value='freechal.com' <? if($email[1] == "freechal.com"){echo "selected";} ?>>freechal.com</option>
			<option value='lycos.co.kr' <? if($email[1] == "lycos.co.kr"){echo "selected";} ?>>lycos.co.kr</option>
			<option value='korea.com' <? if($email[1] == "korea.com"){echo "selected";} ?>>korea.com</option>
			<option value='gmail.com' <? if($email[1] == "gmail.com"){echo "selected";} ?>>gmail.com</option>
			<option value='hanmir.com' <? if($email[1] == "hanmir.com"){echo "selected";} ?>>hanmir.com</option>
			<option value='paran.com' <? if($email[1] == "paran.com"){echo "selected";} ?>>paran.com</option>
            </select>
          </td>
        </tr>
				<? } else  {?>
        <tr>
          <td height="1" colspan="3" bgcolor="e4e4e4"></td>
        </tr>
        <tr>
          <td bgcolor="#f7f7f7"><img src="images/field_mail.gif"></td><!-- 이메일 -->
          <td width="1" bgcolor="e4e4e4"></td>
          <td style="padding:10px">
            <input name="member_email" type="text" class="b_input"  size="18" value="<?=$email[0]?>">
            @
            <input name="member_email2" type="text" class="b_input"  size="18" value="<?=$email[1]?>">
            <select name="member_email3" onchange="emailchk();">
            <option value="" <? if($email[1] == ""){echo "selected";} ?>>선 택</option>			
			<option value='naver.com' <? if($email[1] == "naver.com"){echo "selected";} ?> >naver.com</option>
			<option value='hanmail.net' <? if($email[1] == "hanmail.net"){echo "selected";} ?>>hanmail.net</option>
			<option value='hotmail.com' <? if($email[1] == "hotmail.com"){echo "selected";} ?>>hotmail.com</option>
			<option value='nate.com' <? if($email[1] == "nate.com"){echo "selected";} ?>>nate.com</option>
			<option value='yahoo.co.kr' <? if($email[1] == "yahoo.co.kr"){echo "selected";} ?>>yahoo.co.kr</option>
			<option value='empas.com' <? if($email[1] == "empas.com"){echo "selected";} ?>>empas.com</option>
			<option value='dreamwiz.com' <? if($email[1] == "dreamwiz.com"){echo "selected";} ?>>dreamwiz.com</option>
			<option value='freechal.com' <? if($email[1] == "freechal.com"){echo "selected";} ?>>freechal.com</option>
			<option value='lycos.co.kr' <? if($email[1] == "lycos.co.kr"){echo "selected";} ?>>lycos.co.kr</option>
			<option value='korea.com' <? if($email[1] == "korea.com"){echo "selected";} ?>>korea.com</option>
			<option value='gmail.com' <? if($email[1] == "gmail.com"){echo "selected";} ?>>gmail.com</option>
			<option value='hanmir.com' <? if($email[1] == "hanmir.com"){echo "selected";} ?>>hanmir.com</option>
			<option value='paran.com' <? if($email[1] == "paran.com"){echo "selected";} ?>>paran.com</option>
            </select>
          </td>
        </tr>
				<? } ?>
        <tr>
          <td height="1" colspan="3" bgcolor="e4e4e4"></td>
        </tr>
        <tr>
          <td bgcolor="#f7f7f7"><img src="images/field_addr.gif"></td><!-- 주소 -->
          <td width="1" bgcolor="e4e4e4"></td>
          <td style="padding:10px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="25">
                  <input name="member_zip1" id="member_zip1" type="text" class="b_input" size="10" onClick="OpenZip('/index/search_zip.php?f_name=form&zip1=member_zip1&zip2=member_zip2&addr1=member_address1&addr2=member_address2',433,395);" maxlength="3" readonly  value="<?= $row[member_zip1] ?>">
                  -
                  <input name="member_zip2" id="member_zip2" type="text" class="b_input" size="10" onClick="OpenZip('/index/search_zip.php?f_name=form&zip1=member_zip1&zip2=member_zip2&addr1=member_address1&addr2=member_address2',433,395);" readonly  value="<?= $row[member_zip2] ?>">
                  <a href="javascript:;" onClick="OpenZip('/index/search_zip.php?f_name=form&zip1=member_zip1&zip2=member_zip2&addr1=member_address1&addr2=member_address2',433,395);" ><img src="images/btn_post.gif" align="absmiddle"></a>
                </td>
              </tr>
              <tr>
                <td height="25"><input name="member_address1" id="member_address1" type="text" class="b_input" style="width:100%"  value="<?= $row[member_address1] ?>" onClick="OpenZip('/index/search_zip.php?f_name=form&zip1=member_zip1&zip2=member_zip2&addr1=member_address1&addr2=member_address2',433,395);" ></td>
              </tr>
              <tr>
                <td height="25"><input name="member_address2" id="member_address2" type="text" class="b_input" style="width:100%"  value="<?= $row[member_address2] ?>"></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="1" colspan="3" bgcolor="e4e4e4"></td>
        </tr>
        <tr>
          <td bgcolor="#f7f7f7"><img src="images/field_tel.gif"></td><!-- 연락처 -->
          <td width="1" bgcolor="e4e4e4"></td>
          <td style="padding:10px">
            <input name="member_tel1" type="text" class="b_input"  size="6" maxlength="4" onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;" style="IME-MODE:disabled;"  value="<?= $row[member_tel1] ?>">
            -
            <input name="member_tel2" type="text" class="b_input"  size="6" maxlength="4" onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;" style="IME-MODE:disabled;"  value="<?= $row[member_tel2] ?>">
            -
            <input name="member_tel3" type="text" class="b_input"  size="6" maxlength="4" onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;" style="IME-MODE:disabled;"  value="<?= $row[member_tel3] ?>">
          </td>
        </tr>
        <tr>
          <td height="1" colspan="3" bgcolor="e4e4e4"></td>
        </tr>
        <tr>
          <td bgcolor="#f7f7f7"><img src="images/field_hp.gif"></td><!-- 휴대폰 -->
          <td width="1" bgcolor="e4e4e4"></td>
          <td style="padding:10px">
            <input name="member_htel1" type="text" class="b_input"  size="6" maxlength="4" onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;" style="IME-MODE:disabled;" value="<?= $row[member_htel1] ?>">
            -
            <input name="member_htel2" type="text" class="b_input"  size="6" maxlength="4" onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;" style="IME-MODE:disabled;" value="<?= $row[member_htel2] ?>">
            -
            <input name="member_htel3" type="text" class="b_input"  size="6" maxlength="4" onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;" style="IME-MODE:disabled;" value="<?= $row[member_htel3] ?>">
          </td>
        </tr>
        <tr>
          <td height="1" colspan="3" bgcolor="e4e4e4"></td>
        </tr>

		<? if ($mode=="chk_mode") { ?>
        <tr>
          <td bgcolor="#f7f7f7"><img src="images/field_hab.gif" alt="합창단과의 관계"></td>
          <td width="1" bgcolor="e4e4e4"></td>
          <td style="padding:10px">
            <input type="radio" name="member_join_type" value="1" checked> 후원자&nbsp;&nbsp;
			<input type="radio" name="member_join_type" value="2"> 기타&nbsp;&nbsp;
			<input type="radio" name="member_join_type" value="3"> 합창단 교사/직원&nbsp;&nbsp;
			<input type="radio" name="member_join_type" value="5"> 단원/자모&nbsp;&nbsp;
			<input type="radio" name="member_join_type" value="10"> 동문
          </td>
        </tr>
        <tr>
          <td height="1" colspan="3" bgcolor="e4e4e4"></td>
        </tr>
		<? } else {
?>
        <tr>
          <td bgcolor="#f7f7f7"><img src="images/field_hab.gif" alt="합창단과의 관계"></td>
          <td width="1" bgcolor="e4e4e4"></td>
          <td style="padding:10px"><?
	if ($row[member_join_type]==1) echo "후원자";
	else if ($row[member_join_type]==2) echo "기타";
	else if ($row[member_join_type]==3) echo "합창단 교사/직원";
	else if ($row[member_join_type]==5) echo "단원/자모";
	else if ($row[member_join_type]==10) echo "동문";
			?></td>
        </tr>
        <tr>
          <td height="1" colspan="3" bgcolor="e4e4e4"></td>
        </tr>
<?
		} ?>
      </table>
    </td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
  <tr>
    <td align="center"><input name="image" type="image" src="images/join_ok<?=($mode=="modify")?"2":""?>.gif"> <img src="images/join_cancel.gif" onclick="form.reset();"  style="cursor:pointer"></td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</form>
</table>

<iframe name="nickChk" style="display:none;"></iframe>
<iframe name="idChk" style="display:none;"></iframe>
<iframe name="juminChk" style="display:none;"></iframe>

<? 
include $_SERVER['DOCUMENT_ROOT']."/index/foot_top.php";
include $_SERVER['DOCUMENT_ROOT']."/index/foot.php";
?>
