<?
	$db_config = new DB();

	$db_config->Query("SELECT * FROM BlueAD_site_config where s_no = '1'");
	$config = $db_config->Fetch();
    
	$site_name = $config[s_url]."/";
	$from = "������< ".$config[s_email]." >";
	$mailto = $member_name."< ".$row[member_email]." >";

	if($mode == "search_id"){
		
		$mail_subject = "[".$config[s_name]."] ���̵� �ȳ� �����Դϴ�.";

	}else if($mode == "search_pass"){
		
		$mail_subject = "[".$config[s_name]."] ��й�ȣ �ȳ� �����Դϴ�.";

	}
		$additional_headers = "From: $from\r\n";
		$additional_headers .= "Content-type: text/html; charset=euc-kr\r\n";
		$additional_headers .= "Return-Path: $from\r\n";
	
		$mail_contents = "
		<html>
		<head>
		<meta http-equiv='Content-Type' content='text/html; charset=euc-kr'>		
		<title>��й�ȣã��</title>
		<style type='text/css'>
		<!--
		.style1 {color: #F77878}
		a:link 
		{
		  color: #333333; font-family: ����; font-size: 12px; text-decoration: none
		}
		a:visited 
		{
		  color: #333333; font-family: ����; font-size: 12px; text-decoration: none
		}
		a:active
		{
		  color: #333333; font-family: ����; font-size: 12px; text-decoration: none
		}
		a:hover
		{
		  color: red; font-family: ����; font-size: 12px; text-decoration: none
		}

		td {color: #333333; font-family: ����; font-size: 12px;}

		body 
		{
			scrollbar-3dlight-color:dddddd; scrollbar-arrow-color:999999;
			scrollbar-base-color:FFFFFF; scrollbar-face-color:FFFFFF;
			scrollbar-highlight-color:FFFFFF; scrollbar-shadow-color:dddddd;
			scrollbar-darkshadow-color:FFFFFF;
		}

		textarea
		{
		  background-color: #ffffff; COLOR: #333333; font-family: ����; font-size: 12px;
		  scrollbar-face-color:#f0f0f0;
		  scrollbar-shadow-color:#9C9C9C;
		  scrollbar-highlight-color:#ffffff;
		  scrollbar-3dlight-color:#9C9C9C;
		  scrollbar-darkshadow-color:#ffffff;
		  scrollbar-base-color:#ffffff;
		  scrollbar-arrow-color:#DCDCDC
		}		
		-->
		</style>
		</head>
		<body marginheight='0' marginwidth='0' topmargin='0' leftmargin='0'>
		<br>
		<br>
		<table width='620' border='0' cellspacing='0' cellpadding='0' align='center'>
		  <tr>
			<td><img src='http://".$_SERVER['HTTP_HOST']."/index/member/images/box_top.gif' width='620' height='5'></td>
		  </tr>
		  <tr>
			<td height='30' background='http://".$_SERVER['HTTP_HOST']."/index/member/images/box_center.gif' style='padding-left:20px'></td>
		  </tr>
		  <tr>
			<td align='center' background='http://".$_SERVER['HTTP_HOST']."/index/member/images/box_center.gif' style='padding:15 0 15 0'><table width='580' border='0' cellpadding='0' cellspacing='1' bgcolor='#DBD9C6'>
			  <tr>
				<td bgcolor='#FFFFFF'>"; 
		if($mode == "search_id"){
			$mail_contents .= "<table width='580' border='0' cellspacing='0' cellpadding='0'>
					  <tr>
						<td width='270'><img src='http://".$_SERVER['HTTP_HOST']."/index/member/images/result_img.gif' width='270' height='123'></td>
						<td style='line-height:130%'><strong>".$member_name."</strong> ���� �ȳ��ϼ���.<BR>
						  ������ ��û�Ͻ� ID�� <strong>".$row[member_id]."</strong> �Դϴ�.
						</td>
					  </tr>
					</table></td>
				  </tr>
				</table>";
		}else if($mode == "search_pass"){
			$mail_contents .= "<table width='580' border='0' cellspacing='0' cellpadding='0'>
					  <tr>
						<td width='270'><img src='http://".$_SERVER['HTTP_HOST']."/index/member/images/result_img.gif' width='270' height='123'></td>
						<td style='line-height:130%'><strong>".$member_name."</strong> ���� �ȳ��ϼ���.<BR>
						  ������ ��û�Ͻ� ��й�ȣ�� <strong>".$row[member_pass]."</strong> �Դϴ�.<BR>
						  ������ ���� ��й�ȣ�� ���� ������ �ֽñ� �ٶ��ϴ�.
						</td>
					  </tr>
					</table></td>
				  </tr>
				</table>";
		}
		
		$mail_contents .= "</td>
		  </tr>
		  <tr>
			<td height='20' align='center' valign='top' background='http://".$_SERVER['HTTP_HOST']."/index/member/images/box_center.gif'>Copyright ��<a href='http://".$_SERVER['HTTP_HOST']."' target='_blank'><span class='style1'>".$site_name."</span></a>  All rights reserved. </td>
		  </tr>
		  <tr>
			<td><img src='http://".$_SERVER['HTTP_HOST']."/index/member/images/box_bottom.gif' width='620' height='5'></td>
		  </tr>
		</table>
		</body>
		</html>
		<br>
		<br>
		<br>
		";	

		mail($mailto, $mail_subject, $mail_contents, $additional_headers); 
?>