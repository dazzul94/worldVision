<?
session_start();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_db.php";
$db = new DB();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/define.php";
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/fun/function.php";

if(__REQUEST_METHOD__ == "GET") {
  ErrorMsg('�������� ���� �Դϴ�.', 1);
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
	Location($rtn_url, $_SESSION['MEMBER_NAME'].'���� �α��� �ϼ̽��ϴ�');
  
  }else{

	ErrorMsg('��й�ȣ�� �ٽ� Ȯ���� �ּ���.', 1);
  
  }

}else{

	ErrorMsg('���̵� �ٽ� Ȯ���� �ּ���.', 1);

}

$db->Close();
?>

