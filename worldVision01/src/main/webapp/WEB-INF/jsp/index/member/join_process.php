<?
session_start();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_db.php";
$db = new DB();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/fun/function.php";

//�����
$bbs_date = nDate(2);
$member_email=$member_email."@".$member_email2;

if($mode == "modify"){  // ȸ������

	$db->Query("SELECT * FROM BlueAD_member where member_id = '".$_SESSION['MEMBER_ID']."'");
	$row = $db->Fetch();

	if(!$row){ 
		
		$url = "/index/member/join.php?mode=modify";
		Location($url, 'ȸ�������� ��ġ ���� �ʽ��ϴ�.');

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
			Location($url, '���� �Ǿ����ϴ�');
		
		}else{

			ErrorMsg("��й�ȣ�� ��ġ ���� �ʽ��ϴ�.", 1);

		}	
	}

}else{ // ȸ�����


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
	$msg = "ȸ�������� ���ϵ帳�ϴ�.\\n�α��� �Ͻ��� �̿��ϱ� �ٶ��ϴ�";
	Location($url,$msg);
}	
?>

