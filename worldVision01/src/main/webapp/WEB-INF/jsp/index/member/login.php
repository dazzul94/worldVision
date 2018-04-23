<? 
	include $_SERVER['DOCUMENT_ROOT']."/index/head.php";
	include $_SERVER['DOCUMENT_ROOT']."/index/head_top.php";

		if($_SESSION['MEMBER_ID']){
		echo "<script language='javascript'>";
		echo "alert('이미 로그인 되어있습니다');";
		echo "location.href='/index/';";
		echo "</script>";
	}
?>
<table width="730" border="0" cellspacing="0" cellpadding="0">
<form name="main_form" method="post" action="login_process.php">
<input type="hidden" name="rtn_url" value="<?=$rtn_url?>">
  <tr>
    <td align="right" background="images/mb_img.gif" style="background-repeat:no-repeat">
      <table width="570" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="images/box_top.gif"></td>
        </tr>
        <tr>
          <td align="center" valign="top" background="images/box_bg.gif">
            <table width="530" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="170" rowspan="3" valign="top"><img src="images/login_title.gif"></td>
                <td><img src="images/login_mnt.gif"></td>
              </tr>
              <tr>
                <td height="95" valign="top">
                  <table width="350" border="0" cellpadding="0" cellspacing="3" bgcolor="#dddddd">
                    <tr>
                      <td height="80" align="center" bgcolor="#FFFFFF">
                        <!-- 로그인 폼 -->
                        <table width="270" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="65" height="22"><img src="images/login_id.gif"></td>
                            <td>
                              <input name="member_id" type="text" class="b_input" tabindex="1">
                            </td>
                            <td rowspan="2" align="right"><input type="image" src="images/btn_login.gif" tabindex="3"></td>
                          </tr>
                          <tr>
                            <td height="22"><img src="images/login_pw.gif"></td>
                            <td>
                              <input name="member_pass" type="password" class="b_input" tabindex="2">
                            </td>
                            </tr>
                        </table>
                        <!-- 로그인 폼 끝 -->
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td>
                  <!-- 회원가입 / 아이디비번찾기-->
                  <table width="350" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="220" height="22"><img src="images/login_mnt1.gif"></td>
                        <td><a href="join_agree.php" onfocus="blur();"><img src="images/btn_join.gif"></a></td>
                      </tr>
                      <tr>
                        <td height="22"><img src="images/login_mnt2.gif"></td>
                        <td><a href="id_pass.php" onfocus="blur();"><img src="images/btn_find.gif"></a></td>
                      </tr>
                  </table>
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
</form>
</table>
	
	<?
	include $_SERVER['DOCUMENT_ROOT']."/index/foot_top.php";
	include $_SERVER['DOCUMENT_ROOT']."/index/foot.php";
?>
