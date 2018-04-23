<?
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_db.php";
$db = new DB();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/fun/function.php";
?>
<html>
<head>
<title>우편번호 검색</title>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<link href="/index/include/style.css" rel="stylesheet" type="text/css">
<script language="Javascript">
	<!--
	function reSize(x,y){
	  resizeTo(x,y);
	}




	function Setting(post_no1,post_no2,address,type) {  

		if(type=="online"){

			opener.document.form.zip1.value = post_no1;
			opener.document.form.zip2.value = post_no2;
			opener.document.form.address1.value = address;
			opener.document.form.address2.focus();
			self.close();

		}else if(type=="map"){

			opener.document.form.zip1.value = post_no1;
			opener.document.form.zip2.value = post_no2;
			opener.document.form.address1.value = address;
			opener.document.form.address2.focus();
			self.close();

		}else{

			opener.document.form.member_zip1.value = post_no1;
			opener.document.form.member_zip2.value = post_no2;
			opener.document.form.member_address1.value = address;
			opener.document.form.member_address2.focus();
			self.close();

		}
		
	}



	function Check(form) {
	  if(!form.zip.value) {
		alert("동 이름을 입력하세요.");
		form.zip.focus();
		return false;
	  }
	  form.check_mode.value="ok";
	  return true;
	}

	function focusIt() {
	  document.form.zip.focus();
	}
	//-->
</script>
</head>
<body bgcolor="#ffffff" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" <? if($check_mode!="ok") echo"Onload=\"focusIt();\""; ?>>
<table width="400" border="0" cellpadding="0" cellspacing="0">
<form name="form" method="post" action="<?= $PHP_SELF ?>" onSubmit="return Check(this);">
<input type="hidden" name="check_mode" value="">
<input type="hidden" name="type" value="<?=$type?>">
  <tr>
    <td><img src="/index/member/images/zip_top.gif" border="0" usemap="#close"></td>
  </tr>
  <tr>
    <td align="center" valign="top" background="/index/member/images/zip_bg.gif" >
      <table border="0" width="400" cellspacing="0" cellpadding="0">
        <tr>
          <td width="440" align="center">
            <table width="350" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="30" background="/index/member/images/zip_input_bg.gif" style="padding-left:122">
                <input type="text" name="zip" value="<?= $zip ?>" size="17" class="input">&nbsp;<input type="image" src="/index/member/images/zip_btn.gif" align="absmiddle" border="0">
                </td>
              </tr>
            </table>
          </td>
        </tr>
<?
if($check_mode=="ok") {
?>
        <tr>
          <td height="20"></td>
        </tr>
<?
  $db->Query("select * from BlueAD_areacode where area3 like '%$zip%'");  
  $total = $db->recordNum(); 

  if($total>0) {
    if($total<=5) {
      echo"<script>resizeTo(425,299);</script>";
    } else if($total > 4 && $total < 15) {
      $xheight = ($total - 4) * 20;
      $height = 299 + $xheight;
      echo"<script>resizeTo(425,$height);</script>";
    } else {
      echo"<script>resizeTo(425,499);</script>";
    }
    while($row = $db->Fetch()) {
      $nbsp =" ";
	  $post_no1 = substr($row[acode],0,3);
      $post_no2 = substr($row[acode],4,6);
      $address = $row[area1].$nbsp.$row[area2].$nbsp.$row[area3].$nbsp.$row[area4];
      $address1 = $row[area1].$nbsp.$row[area2].$nbsp.$row[area3];
?>
        <tr>
          <td align="center">
            <table border="0" width="350" cellpadding="5" cellspacing="0">
              <tr height=20>
                <td width="350">[<?= $post_no1 ?>-<?= $post_no2 ?>]&nbsp;&nbsp;<a href="javascript:Setting('<?= $post_no1 ?>','<?= $post_no2 ?>','<?= $address1 ?>','<?=$type?>')"><?= $address ?></a></td>
              </tr>
              <tr>
                <td colspan="2" height="1" background="/index/member/images/zip_dot_line.gif"></td>
              </tr>
            </table>
          </td>
        </tr>
<?
    }
  } else {
?>
        <tr>
          <td align="center">
            <table border="0" width="350" cellpadding="5" cellspacing="0">
              <tr>
                <td align="center">해당 우편번호를 찾을 수 없습니다. </td>
              </tr>
            </table>
          </td>
        </tr>
<script>
resizeTo(425,285);
</script>
<?
  }
}
?>
      </table>
    </td>
  </tr>
  <tr>
    <td><img src="/index/member/images/zip_foot.gif"></td>
  </tr>
</form>
</table>
<map name="close">
<area shape="rect" coords="338,16,377,35" href="javascript:self.close();" onFocus="this.blur();">
</map>

</body>
</html>