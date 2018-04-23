<?
session_start();
	unset($_SESSION['MEMBER_ID']);
	unset($_SESSION['MEMBER_NAME']);
	unset($_SESSION['MEMBER_EMAIL']);
	unset($_SESSION['MEMBER_LEVEL']);

include $_SERVER['DOCUMENT_ROOT']."/BlueAD/fun/function.php";
Location('/index/', '로그아웃 되었습니다');
?>