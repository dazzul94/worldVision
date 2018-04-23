<?
session_start();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_db.php";
$db = new DB();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/fun/function.php";

//등록일
$bbs_date = nDate(2);
$member_email=$member_email."@".$member_email2;

if($mode == "modify"){  // 회원수정

	$db->Query("SELECT * FROM BlueAD_member where member_id = '".$_SESSION['MEMBER_ID']."'");
	$row = $db->Fetch();

	if(!$row){ 
		
		$url = "/index/member/join.php?mode=modify";
		Location($url, '회원정보가 일치 하지 않습니다.');

	}else{		
		
		if($row[member_pass] == sql_password($member_pass)){

			$db->Query("
				  UPDATE
					BlueAD_member
				  SET					
					member_birth1 = '$member_birth1',
					member_birth2 = '$member_birth2',
					member_email = '$member_email',
					member_zip1 = '$member_zip1',
					member_zip2 = '$member_zip2',
					member_address1 = '$member_address1',
					member_address2 = '$member_address2',
					member_tel1 = '$member_tel1',
					member_tel2 = '$member_tel2',
					member_tel3 = '$member_tel3',
					member_htel1 = '$member_htel1',
					member_htel2 = '$member_htel2',
					member_htel3 = '$member_htel3'
				  WHERE
					member_id = '".$_SESSION['MEMBER_ID']."'					
			");
		
			$url = "/index/member/join.php?mode=modify";
			Location($url, '수정 되었습니다');
		
		}else{

			ErrorMsg("비밀번호가 일치 하지 않습니다.", 1);

		}	
	}

}else{ // 회원등록


	$db->Query("
			INSERT INTO BlueAD_member VALUES (			
				'',
				'$real_id',
				'$real_nick',
				'".sql_password($member_pass)."',
				'$member_name',
				'$member_register1',
				'$member_register2',
				'$member_birth1',
				'$member_birth2',
				'$member_email',
				'$member_zip1',
				'$member_zip2',
				'$member_address1',
				'$member_address2',
				'$member_tel1',
				'$member_tel2',
				'$member_tel3',
				'$member_htel1',
				'$member_htel2',
				'$member_htel3',
				'$member_join_type',
				'$bbs_date'
				)
		");
	
	
	$db->Close();

	$url = "/index/member/login.php";	  
	$msg = "회원가입을 축하드립니다.\\n로그인 하신후 이용하기 바랍니다";
	Location($url,$msg);
}	
?>

