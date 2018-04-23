<?
session_start();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_db.php";
$db = new DB();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/define.php";
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/fun/function.php";

if(__REQUEST_METHOD__ == "GET") {
  ErrorMsg('부적절한 실행 입니다.', 1);
}

$db->Query("SELECT * FROM BlueAD_member WHERE member_id = '$member_id'");
$mem_row = $db->Fetch();

if($mem_row) {
  if($mem_row[member_pass] == sql_password($member_pass)) {	
	
	$_SESSION['MEMBER_ID'] = $mem_row[member_id];
	$_SESSION['MEMBER_NAME']  = $mem_row[member_name];
	$_SESSION['MEMBER_EMAIL'] = $mem_row[member_email];	
	$_SESSION['MEMBER_LEVEL'] = $mem_row[member_join_type];

	if (!$rtn_url) $rtn_url = "/index/";
	Location($rtn_url, $_SESSION['MEMBER_NAME'].'님이 로그인 하셨습니다');
  
  }else{

	ErrorMsg('비밀번호를 다시 확인해 주세요.', 1);
  
  }

}else{

	ErrorMsg('아이디를 다시 확인해 주세요.', 1);

}

$db->Close();
?>

