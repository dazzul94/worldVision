<?
session_start();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_db.php";
$db = new DB();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/fun/function.php";

//등록일
$bbs_date = nDate(2);

//인증번호 메일보내기
$coupon_type = "";  
for($i=0;$i<6;$i++) { // 문자생성의 갯수 : 6개  
    $doc = rand()%26+65;  
    $coupon_type .= chr($doc);  
}  


$db->Query("select * from BlueAD_member where member_name='$member_name' and member_id='$member_id' and member_email='$member_email' ");
$row = $db->Fetch();

if(!$row){
	echo "<script language='javascript'>";
	echo "alert('가입정보를 찾을 수 없습니다.');";
	echo "location.href='/index/member/id_pass.php';";
	echo "</script>";
	exit;
}




$db->Query(" insert into BlueAD_member_num (member_name, member_email, member_num, wdate) values ('$member_name','$member_email','$coupon_type','$bbs_date')  ");

	$m_contents ="";
	$m_contents .= 				"				<table width='100%' border='0' align='center' cellpadding='5' cellspacing='1' bgcolor='#e4e4e4'>";
	$m_contents .= 				"           <tr height='30'>";
	$m_contents .= 				"             <td bgcolor='#f7f7f7' align='center' colspan='2'>패스워드 찾기 인증번호</td>";
	$m_contents .= 				"           </tr>        ";
	$m_contents .= 				"         <tr height='30'>";
	$m_contents .= 				"            <td width='15%' bgcolor='#f7f7f7' align='center' ><span class='fd_br'>*</span> 회원ID</td>";
	$m_contents .= 				"            <td bgcolor='#FFFFFF' style='padding-left:10px;'>".$member_id."&nbsp;</td>";
	$m_contents .= 				"          </tr>";
	$m_contents .= 				"         <tr height='30'>";
	$m_contents .= 				"            <td width='15%' bgcolor='#f7f7f7' align='center' ><span class='fd_br'>*</span> 성명</td>";
	$m_contents .= 				"            <td bgcolor='#FFFFFF' style='padding-left:10px;'>".$member_name."&nbsp;</td>";
	$m_contents .= 				"          </tr>";
	$m_contents .= 				"          <tr height='30'>";
	$m_contents .= 				"            <td bgcolor='#f7f7f7' align='center'><span class='fd_br'>*</span> 인증번호</td>";
	$m_contents .= 				"            <td bgcolor='#FFFFFF' style='padding-left:10px;'>".$coupon_type."</td>";					
	$m_contents .= 				"          </tr>";
	$m_contents .= 				"           <tr height='30'>";
	$m_contents .= 				"             <td bgcolor='#f7f7f7' align='center' colspan='2'>블루애드 <a href='http://".$_SERVER['HTTP_HOST']."' target='_blank'>http://".$_SERVER['HTTP_HOST']."</a></td>";
	$m_contents .= 				"           </tr>        ";
	$m_contents .= 				" 				</table>";


	$to = $member_email;	
	
	$from = "월드비전선명회합창단". " < ymira01@naver.com > ";
	

	$mail_subject="[월드비전선명회합창단]패스워드 찾기 인증번호입니다..";
	$additional_headers = "From: $from\r\n";
	$additional_headers .= "Content-type: text/html; charset=euc-kr\r\n";
	$additional_headers .= "Return-Path: $from\r\n";
	$mail_contents = Tag_Allowed($m_contents, 3);
		

	mail($to, $mail_subject, $mail_contents, $additional_headers);	

?>
<script type="text/javascript">
	alert("인증번호 메일발송되었습니다.");
</script>