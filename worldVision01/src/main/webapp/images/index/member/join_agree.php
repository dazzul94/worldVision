<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />	



<title>::: 월드비전 합창단 :::</title>
<link href="/index/include/style.css" rel="stylesheet" type="text/css">
<link href="/index/include/font.css" rel="stylesheet" type="text/css">
<link href="/index/include/styles.css" rel="stylesheet" type="text/css"  >
<script language="JavaScript" src="/index/include/blue_fun.js"></script>
<script language="JavaScript" src="/index/include/url.js"></script>
<script language="javascript" src="/BlueAD/js/jquery-1.3.2.min.js"></script>


    
      	<script src="/index/include/jquery-1.7.2.min.js"></script>
<!--  javaScript -->
<script>  
<!--  // building select nav for mobile width only -->
$(function(){
	// building select menu
	$('<select />').appendTo('nav');

	// building an option for select menu
	$('<option />', {
		'selected': 'selected',
		'value' : '',
		'text': 'Choise Page...'
	}).appendTo('nav select');

	$('nav ul li a').each(function(){
		var target = $(this);

		$('<option />', {
			'value' : target.attr('href'),
			'text': target.text()
		}).appendTo('nav select');

	});

	// on clicking on link
	$('nav select').on('change',function(){
		window.location = $(this).find('option:selected').val();
	});
});

// show and hide sub menu
$(function(){
	$('nav ul li').hover(
		function () {
			//show its submenu
			$('ul', this).slideDown(150);
		}, 
		function () {
			//hide its submenu
			$('ul', this).slideUp(150);			
		}
	);
});
//end
</script>
<style>
ul, ol { list-style:none; margin:0; padding:0;}
@font-face {
    font-family: 'notokr-medium';
    src: url('http://www.wvchoir.or.kr/index/include/font/notokr-medium.eot');
    src: url('http://www.wvchoir.or.kr/index/include/font/notokr-medium.eot?#iefix') format('embedded-opentype'),
         url('http://www.wvchoir.or.kr/index/include/font/notokr-medium.woff2') format('woff2'),
         url('http://www.wvchoir.or.kr/index/include/font/notokr-medium.woff') format('woff'),
         url('http://www.wvchoir.or.kr/index/include/font/notokr-medium.ttf') format('truetype'),
         url('http://www.wvchoir.or.kr/index/include/font/notokr-medium.svg#notokr-medium') format('svg');
    font-weight: normal;
    font-style: normal;
}
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
	
</style>


<style type="text/css">
.member td { height:25px;  }
.member td a { padding: 2px 7px 2px 7px; font-size:11px; color:#555; }
.member td a:hover {  font-size:11px; color:#111; }
</style>
</head>


<body>
 
 <div class="headerWrap">
<div id="header">
<div class="memberMenu">
	
	

    <!-- 로그아웃 상태 -->
        <table class="member">
	  <tr>
        <td><a href="javascript:menu8sub2();">로그인</a></td>
          <td><a href="javascript:english();">English</a></td>
	  </tr>
	</table>
    <!-- 로그인 상태-->
        
 </div>
  <div class="topLogo">
         	<h1>
            	 <a href="javascript:index();"><img src="/index/images/logo.png" alt="월드비전 음악" /></a>
            </h1>
  </div>
<div class="container2">
  <div id="fdw">
				<!--nav-->
					<nav>
						<ul>
							
							
							<li>
								<a href="javascript:menu1sub4();">음악원</a>
								<ul style="display: none;" class="sub_menu">
									<li class="arrow_top"></li>
								    <li><a href="javascript:menu1sub4()">조직도</a></li>
									<li><a href="javascript:menu1sub1()">기관소개</a></li>
									<li><a href="javascript:menu1sub5()">오시는 길</a></li>
								</ul>
							</li>
							<li>
								<a href="javascript:menu1sub2()">합창단</a>
								<ul style="display: none;" class="sub_menu">
									<li class="arrow_top"></li>
									 <li><a href="javascript:menu1sub2()">소개</a></li>
									<li><a href="javascript:menu1sub3()">연혁</a></li>
									<li><a href="javascript:menu2sub1()">연주반</a></li>
									<li><a href="javascript:menu2sub2()">지역반</a></li>
									<li><a href="javascript:menu2sub4()">비전싱어즈</a></li>
									<li><a href="javascript:menu2sub5()">연주반 단원소개(파트별)</a></li>
								</ul>
							</li>
							<li>
								<a href="javascript:menu3sub1();">연주회</a>
								<ul style="display: none;" class="sub_menu">
									<li class="arrow_top"></li>
									<li><a href="javascript:menu3sub1();">연주일정</a></li>
									<li><a href="javascript:menu3sub2();">초청연주</a></li>
									<li><a href="javascript:menu3sub3();">기획연주</a></li>
									<li><a href="javascript:menu3sub4();">미션연주</a></li>
									<li><a href="javascript:menu3sub5();">해외연주</a></li>
									<li><a href="javascript:menu3sub6();">연주 레퍼토리</a></li>
								</ul>
							</li>
                            <li>
								<a href="javascript:menu4sub1();">갤러리</a>
								<ul style="display: none;" class="sub_menu">
									<li class="arrow_top"></li>
									<li><a href="javascript:menu4sub3();">사진</a></li>
									<li><a href="javascript:menu4sub2();">영상</a></li>
									<li><a href="javascript:menu4sub4();">포스터</a></li>
									<li><a href="javascript:menu4sub1();">음반</a></li>
								</ul>
							</li>
                            <li>
								<a href="javascript:menu5sub1();">각종신청</a>
								<ul style="display: none;" class="sub_menu">
									<li class="arrow_top"></li>
									 <li><a href="javascript:menu5sub1();">입단신청</a></li>
									<li><a href="javascript:menu5sub2();">합창단후원신청</a></li>
									<li><a href="javascript:menu5sub3();">음반·악보 구입신청</a></li>
									<li><a href="javascript:menu5sub4();">각종증명서신청</a></li>
								</ul>
							</li>
                            <li>
								<a href="javascript:menu7sub1();">게시판</a>
								<ul style="display: none;" class="sub_menu">
									<li class="arrow_top"></li>
									 <li><a href="javascript:menu7sub1();">자유게시판</a></li>
									<li><a href="javascript:menu7sub2();">보도자료</a></li>
									<li><a href="javascript:menu7sub3();">월비통신</a></li>
								</ul>
							</li>
						</ul>
					</nav>
		</div><!-- end fdw -->
            
      	</div>
 <div class="wv">  <a href="http://www.worldvision.or.kr" target="_blank"><img src="/index/images/logo_button_world.gif"></a></div>

</div>
</div>
<style>
.lnb { width:180px; }
.lnb td { 
border-bottom:1px solid #ddd; 
padding:7px 5px; 
font:15px notokr-medium, NanumBarunGothic, nbg_bold, 나눔고딕, NanumGothic, dotum, gulim, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    color: #202020 !important; }
.tc { color:#999; font-size:12px !important;}	
.tht { font:25px notokr-medium, NanumBarunGothic, nbg_bold, 나눔고딕, NanumGothic, dotum, gulim, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    color: #202020 !important;}
</style>
<table width="100%" align="center" border="0" cellpadding="0" cellspacing="0">
  <tr>
  	<td bgcolor="#ffc04c" height="2"></td>
  </tr>
  <tr>
  	<td align="center">
  	<table width="1000" border="0" cellspacing="0" cellpadding="0">
  	  <tr>
  	    <td width="200" valign="top" style="border-right:solid 1px #ebebeb">
        <table width="180" border="0" cellspacing="0" cellpadding="0">
  	      <tr>
  	        <td height="27"></td>
	      </tr>
          <tr>
  	        <td><span class="tht">Member </span></td>
	      </tr>
          <tr>
  	        <td height="16"></td>
	      </tr>
          <tr>
  	        <td>
			<table class="lnb">
																								</table>
			
			</td>
	      </tr>
          
          <tr>
  	        <td height="124" valign="middle"><a href="javascript:menu5sub1();"><img src="/index/images/sub_banner1.gif" border="0"></a></td>
	      </tr>
          
         
         
          <tr>
          	<td height="50"></td>
          </tr>
	    </table>
        </td>
        <td width="800" valign="top">
        <table width="800" >
          <tr>
            <td height="30" align="right" valign="bottom"><span class="his01">HOME > Member > </span><span class="his02">회원가입</span></td>
          </tr>
          <tr>
            <td>
			<img src="/index/images/sub_top.jpg" />
			</td>
          </tr>
          <tr>
            <td bgcolor="#ebebeb" height="1"></td>
          </tr>

          <tr>
            <td align="right">
            <table width="760" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="40" ><h2>회원가입 <span class="tc">월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h2></td>
              </tr>

              <tr>
                <td>
                
                
                
                


<script language="javascript">
	function OpenZip(url,w,h) {
	  window.open(url, "StartWindow", "scrollbars=yes, toolbar=no, location=no, directories=no, width="+w+",height="+h+",resizable=no,mebar=no,left=0,top=0");
	}

	function chk_sub() {
	  var DefinedStr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	  var emailEx1 = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	  var form = document.form;

	  if(form.member_name.value=="") {
		 alert('이름을 입력을 하세요.');
		 form.member_name.focus();
		 return false;
	  }
	  if(form.member_name.value.indexOf(" ")>=0) {
		alert('이름에는 공백이 포함될수 없습니다.');
		form.member_name.focus();
		return false;
	  }
	  for(i=0;i<form.member_name.value.length;i++) {
		var a=form.member_name.value.charCodeAt(i);
		if (a < 128) {
		  alert('이름은 한글만 가능합니다.');
		  form.member_name.focus();
		  return false;
		}
	  }	 

		if(form.member_email.value=="") {
		 alert('이메일주소를 입력을 하세요.');
		 form.member_email.focus();
		 return false;
	  }

		if(form.member_email_num.value=="") {
		 alert('인증번호를 입력을 하세요.');
		 form.member_email_num.focus();
		 return false;
	  }
	  

	  if(form.agree_chk.checked==false) {
		alert('회원가입약관에 동의 하셔야 회원가입을 하실수 있습니다.');
		form.agree_chk.focus();
		return false;
	  }  

	  if(form.agree_chk1.checked==false) {
		alert('개인정보보호정책에 동의 하셔야 회원가입을 하실수 있습니다.');
		form.agree_chk.focus();
		return false;
	  } 
		form.action = "join.php";
		form.target = "";
		form.submit();

	return true;
	}
//인증번호받기
function funEmail()	{
	var DefinedStr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	  var emailEx1 = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	  var form = document.form;

	  if(form.member_name.value=="") {
		 alert('이름을 입력을 하세요.');
		 form.member_name.focus();
		 return false;
	  }
	  if(form.member_name.value.indexOf(" ")>=0) {
		alert('이름에는 공백이 포함될수 없습니다.');
		form.member_name.focus();
		return false;
	  }
	  for(i=0;i<form.member_name.value.length;i++) {
		var a=form.member_name.value.charCodeAt(i);
		if (a < 128) {
		  alert('이름은 한글만 가능합니다.');
		  form.member_name.focus();
		  return false;
		}
	  }	 

		if(form.member_email.value=="") {
		 alert('이메일주소를 입력을 하세요.');
		 form.member_email.focus();
		 return false;
	  }

	form.action = "join_email_num.php";
	form.target = "emailChk";
	form.submit();

}
</script>
</div>


<table width="730" border="0" cellspacing="0" cellpadding="0">
<form name="form" method="post" >
	<input type="hidden" name="mode" value="chk_mode">
	<input type="hidden" name="mode_type" value="email">

	
  <tr>
    <td><img src="images/real_title.gif"></td>
  </tr>
  <tr>
    <td>
      <!-- 실명인증 -->
      <table width="730" border="0" cellspacing="0" cellpadding="0" >
        <tr>
          <td><img src="images/join_box_top.gif"></td>
        </tr>
        <tr>
          <td align="center" background="images/join_box_bg.gif" >
            <table border="0" cellspacing="0" cellpadding="0" >
              <tr>
                <td width="100" height="25"><img src="images/fd1.gif"></td>
                <td><input name="member_name" type="text" class="b_input" size="28"></td>
              </tr>
              
							<tr>
                <td width="100" height="25"><img src="images/fd3.gif"></td>
                <td><input name="member_email" type="text" class="b_input" size="28"> <img src="images/auth_num_re.gif" onclick="funEmail();" style="cursor:hand"></td>
              </tr>
							<tr>
                <td width="100" height="25"><img src="images/fd4.gif"></td>
                <td><input name="member_email_num" type="text" class="b_input" size="28"></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td><img src="images/join_box_foot.gif"></td>
        </tr>
      </table>
      <!-- 실명인증 끝 -->
    </td>
  </tr>
  <tr>
    <td height="45"></td>
  </tr>
  <tr>
    <td><img src="images/agree_title1.gif"></td>
  </tr>
  <tr>
    <td>
      <!-- 약관 -->
      <table width="730" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="images/join_box_top.gif"></td>
        </tr>
        <tr>
          <td background="images/join_box_bg.gif" style="padding:10px;">
            <div id="agree">
				<P><STRONG>제 1 장 총칙</STRONG></P>
<P><STRONG></STRONG>&nbsp;</P>
<P><STRONG>제1조(목적)</STRONG></P>
<P>이 약관은 월드비전 합창단(이하 &quot;회사&quot;라 함)가 인터넷사이트(<A href=&#039;&quot;http://wvchoir.bluead.co.kr/index&quot;&#039;>http://wvchoir.bluead.co.kr/index</A>)(이하 &quot;사이트&quot;라고 함)를 통하여 제공하는 인터넷 관련 서비스 (이하 &quot;서비스&quot;라 함) 와 관련하여 이용자의 권리와 의무, 책임사항 및 회원의 서비스이용절차에 관한 사항을 규정함을 목적으로 합니다.</P>
<P>&nbsp;</P>
<P><STRONG>제2조 (약관의 명시,효력 및 변경)</STRONG><BR>가. 회사는 이 약관을 서비스를 이용하고자 하는 자와 회원이 알 수 있도록 서비스가 제공 되는 인터넷사이트(<A href=&#039;&quot;http://wvchoir.bluead.co.kr/index&quot;&#039;>http://wvchoir.bluead.co.kr/index</A>)화면에 게시 합니다.<BR>나. 회사는 약관의 규제에 관한법률,전자거래기본법,전자서명법,정보통신망이용촉진및정보보호등에 관한 법률,전자상거래 등에서의 소비자 보호에 관한 법률,전자금융거래법등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.<BR>다. 회사가 이 약관을 개정하는 경우에는 개정된 약관의 적용일자 및 개정사유를 명시하여 그 적용일자 7일 이전부터 적용일자 전일까지 위 가항의 방법으로 공지 합니다.<BR>라. 이 약관은 회사와 이용자간에 성립되는 서비스 이용계약자의 기본 약정입니다. 회사는 필요한 경우 특정서비스에 관하여 적용될 사항(이하 “개별약관”이라고 합니다.)을 정하여 미리 공지할 수 있습니다. 회원이 이러한 개별약관에 동의하고 특정 서비스를 이용하는 경우에는 개별약관이 우선적으로 적용되고, 이 약관은 보충적인 효력을 갖습니다. 개별약관의 변경에 관해서는 위 나항을 준용합니다.</P>
<P>&nbsp;</P>
<P><STRONG>제3조(용어의 정의)<BR></STRONG>가. 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<BR>1) 회원:이 약관을 승인하고 회사와 서비스이용계약을 체결한 자를 말합니다.<BR>2) 비회원: 회원에 가입하지 않고 회사가 제공하는 서비스를 이용하는 자를 말합니다.<BR>3) 아이디(ID):회원의 식별과 서비스 이용을 위하여 회원이 설정하고 회사가 승인한 문자와 숫자의 조합을 말합니다.<BR>4) 비밀번호(Password):회원의 동일성 확인과 회원의 권익 및 비밀보호를 위하여 회원 스스로가 설정하여 회사에 등록한 영문과 숫자의 조합을 말합니다.<BR>5) 머니포인트:물품을 구매할때나 회사가 제공하는 서비스를 이용할 때 현금처럼 사용할 수 있는 회사 전용의 사이버 화폐를 말합니다.<BR>나. 위 가항에서 정의되지 않은 이 약관상의 용어의 의미는 일반적인 거래관행에 의합니다.</P>
<P>&nbsp;</P>
<P><STRONG>제4조 (구매 서비스 이용계약의 성립)</STRONG><BR>가. 구매 서비스 이용계약(이하”이용계약”이라고 합니다.)은 회사가 제공하는 구매 서비스를 이용하고자 하는 자의 이용신청에 대하여 회사가 이를 승낙함으로써 성립합니다. 회사는 이용승낙의 의사표시를 해당 서비스화면에 게시하거나 e-mail또는 기타 방법으로 통지합니다.<BR>나. 구매 서비스를 이용하고자 하는 자는 이 약관에 동의하고, 회사가 정하는 회원가입 신청 양식에 따라 신원정보 등의 필요한 사항을 기입합니다.<BR>다. 회원가입은 만14세 이상의 개인 실명으로 가입신청을 하여야 하며 실명이 아니거나 타인의 정보를 도용하여 회원으로 가입한 자는 회사가 제공하는 서비스를 이용할 수 없으며 이용하여서도 안됩니다.<BR>라. 이용신청의 처리는 신청순서에 의하며, 회원가입의 성립시기는 회사의 승낙이 회원에게 도달한 시점으로 합니다.<BR>마. 회사는 다음과 같은 사유가 발생한 경우 이용신청에 대한 승낙을 거부하거나 유보할 수 있습니다.<BR>1) 회사의 실명확인절차에서 실명가입신청이 아님이 확인된 경우<BR>2) 이미 가입된 회원과 이름 및 이메일주소가 동일한 경우<BR>3) 회사에 의하여 이용계약이 해지된 날로부터 2개월 이내에 재이용 신청을 하는 경우<BR>4) 설비에 여유가 없거나 기술상 지장이 있는 경우<BR>5) 기타 이 약관에 위배되거나 위법 또는 부당한 이용신청임이 확인된 경우 및 회사가 합리적인 판단에 의하여 필요하다고 인정하는 경우</P>
<P>&nbsp;</P>
<P><STRONG>제5조 (이용계약의 종료)</STRONG><BR>가. 회원의 해지<BR>1) 회원은 언제든지 회사에게 해지의사를 통지함으로써 이용계약을 해지할 수 있습니다.<BR>2) 이용계약은 회원의 해지의사가 회사에 도달한 때에 종료 됩니다.<BR>3) 본항에 따라 해지를 한 회원은 이 약관이 정하는 회원가입절차와 관련조항에 따라 회원으로 다시 가입할 수 있습니다.<BR>나. 회사의 해지<BR>1) 회사는 다음과 같은 사유가 있는 경우, 이용계약을 해지할수 있습니다.이 경우 회사는 회원에게 이메일,전화,팩스 기타의 방법을 통하여 해지사유를 밝혀 해지의사를 통지합니다. 다만 회사는 해당 회원에게 사전에 해지사유에 대한 의견진술의 기회를 부여 할수 있습니다.<BR>① 제4조 다항에서 정하고 있는 이용계약의 승낙거부사유가 있음이 확인된 경우<BR>② 회원이 회사나 다른 회원 기타 타인의 권리나 명예,신용 기타 정당한 이익을 침해하는 행위를 한 경우<BR>③ 기타 회원이 이 약관에 위배되는 행위를 하거나 이 약관에서 정한 해지사유가 발생한 경우<BR>2) 이용계약은 회사의 해지의사가 회원에게 도달한 때에 종료되거나, 회원이 제공한 연락처 정보의 오류로 인하여 회사가 해지 의사를 통지할수 없는 경우에는 회사 게시판에 해지 의사를 공지하는 때에 종료 됩니다.<BR>다. 이용계약이 종료되는 경우 회원의 현금성 머니포인트는 소멸 됩니다.<BR>라. 이용계약의 종료와 관련하여 발생한 손해는 이용계약이 종료된 해당 회원이 책임을 부담하여야 하고 회사는 일체의 책임을 지지 않습니다.</P>
<P>&nbsp;</P>
<P><STRONG>제6조 (개인정보의 변경,보호)</STRONG><BR>가. 회원은 이용신청시 허위의 정보를 제공하여서는 아니 되며 기재한 사항이 변경되었을 경우에는 즉시 변경사항을 최신의 정보로 수정하여야 합니다. 단, 이름,ID등은 수정할수 없으나 법령에 의한 경우는 예외적으로 수정 가능 합니다.<BR>나. 수정하지 않은 정보로 인하여 발생되는 손해는 당해 회원이 전적으로 부담하며 회사는 이에 대하여 아무런 책임을 지지 않습니다.<BR>다. 회사는 이용계약을 위하여 회원이 제공한 정보를 회사 서비스 운영을 위한 목적 이외의 용도로 사용하거나 이용자의 동의 없이 제3자에게 제공하지 않습니다. 단, 다음 각호의 경우에는 예외로 합니다.<BR>1) 법령에 근거하여 회원정보의 이용과 제3자에 대한 정보제공을 허용하고 있는 경우<BR>2) 공급업체에 배송을 위하여 필요한 최소한의 회원정보를 알려주는 경우<BR>3) 기타 회사의 약관 및 정책에 때라 이용자의 동의를 구한 경우<BR>라. 회사는 회원의 개인정보를 보호하기 위해 “개인정보취급정책”을 수립하고 개인정보 보호 책임자를 지정하여 이를 게시하고 운영 합니다.</P>
<P>&nbsp;</P>
<P><STRONG>제7조 (아이디 및 비밀번호의 관리)</STRONG><BR>가. 아이디 및 비밀번호에 대한 관리책임은 회원에게 있으며 회원은 아이디,비밀번호를 타인에게 양도,대여할수 없습니다.<BR>나. 회사의 행위에 의하지 아니한 아이디,비밀번호의 유출, 양도, 대여로 인한 손실이나 손해에 대하여 회사는 아무런 책임을 지지 않습니다.<BR>다. 회원이 아이디 또는 비밀번호를 도난당하거나 제3자가 이를 사용하고 있음을 인지한 경우, 즉시 회사에게 통보 하여야 하고, 회사의 안내가 있는 경우에는 그에 따라야 합니다.</P>
<P>&nbsp;</P>
<P><STRONG>제8조 (서비스기간과 중단)</STRONG><BR>가. 본 약관에 따른 서비스 기간은 서비스 신청일로부터 이용계약의 해지시 까지 입니다.<BR>나. 회사는 컴퓨터 등 정보통신설비의 보수,점검,교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다. 이 경우 서비스 일시 중단 사실과 그 사유를 사이트 초기화면에 통지 합니다.<BR>다. 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 회사 서비스를 제공할 수 없는 경우에는 서비스의 제공을 제한 하거나 일시 중단할 수 있습니다.</P>
<P>&nbsp;</P>
<P><STRONG>제9조(구매신청)</STRONG><BR>이용자는 사이트 에서 이하의 방법에 의하여 구매를 신청합니다.<BR>가. 성명, 주소, 전화번호 입력<BR>나. 재화 또는 용역의 선택<BR>다. 결제방법의 선택<BR>라. 이 약관에 동의한다는 표시(예, 마우스 클릭)</P>
<P>&nbsp;</P>
<P><STRONG>제10조 (계약의 성립)</STRONG><BR>가. 회사는 제9조와 같은 구매신청에 대하여 다음 각호에 해당하지 않는 한 승낙합니다.<BR>1) 신청 내용에 허위, 기재누락, 오기가 있는 경우<BR>2) 미성년자가 담배, 주류등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우<BR>3) 기타 구매신청에 승낙하는 것이 회사 기술상 현저히 지장이 있다고 판단하는 경우<BR>4) 회사가 판단하여 판매가 부적합 하다고 판단되는 구매자의 경우<BR>5) 회사가 준비한 수량이상으로 구매하여 재화 또는 용역을 제공하지 못한다고 판단하는 경우<BR>나. 회사의 승낙이 제12조제1항의 수신확인통지형태로 구매자에게 도달한 시점에 계약이 성립한 것으로 봅니다.</P>
<P>&nbsp;</P>
<P><STRONG>제11조(지급방법)</STRONG><BR>사이트 에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각호의 하나로 할 수 있습니다.<BR>가. 신용카드결제<BR>나. 실시간 계좌이체 결제<BR>다. 휴대전화 결제<BR>라. 머니 포인트 결제<BR>마. 기타 회사가 추가 지정하는 결제 수단</P>
<P>&nbsp;</P>
<P><STRONG>제12조 (수신확인통지?구매신청 변경 및 취소)</STRONG><BR>가. 회사는 구매자의 구매신청이 있는 경우 구매자에게 수신확인통지를 합니다.<BR>나. 수신확인통지를 받은 구매자는 의사표시의 불일치등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있습니다.<BR>다. 이용자는 구매신청 변경시에는 해당상품 판매종료전에 사이트에서 취소후 재구매를 하여야 하며 구매상품 취소시에는 해당제품 송장출력전에 사이트에서 이용자가 취소하여야 합니다. </P>
<P>&nbsp;</P>
<P><STRONG>제13조(배송)</STRONG><BR>가. 배송 소요기간은 입금 또는 대금결제 확인일의 익일을 기산일로 하여 배송이 완료 되기 까지의 기간을 말합니다.<BR>나. 회사는 구매자와 재화등의 공급시기에 관하여 별도의 약정이 없는 이상, 구매자가 구매를 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 이때 회사는 구매자가 재화등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.<BR>다. 회사는 구매자가 구매한 재화에 대해 배송수단, 수단별 배송 기간 등을 명시합니다. </P>
<P>&nbsp;</P>
<P><STRONG>제14조 (쿠폰 사용)</STRONG><BR>가. 이용자는 개별조건상에 명시된 장소 및 유효 기간내에 한해서만 업체의 서비스를 제공받을수 있습니다. 유효 기간이 만료된 쿠폰은 사용할 수 없으며 환불이 불가 합니다.<BR>나. 각 쿠폰 1매에 대한 이용 가능횟수는 1회로 한정 됩니다. 이용자가 발급된 쿠폰의 액면가를 모두 사용하지 않은 경우, 잔액에 대한 환불은 이루어 지지 않습니다.<BR>다. 이용자는 당사 홈페이지에 명시된 내용 및 개별주의사항(이용조건)을 확인하여야 할 책임이 있으며, 명시된 이용조건에 따라서만 쿠폰을 사용하실 수 있습니다.<BR>라. 쿠폰의 구입과 관련된 절차 등 회사의 귀책사유 이외의 해당 상품에 대한 책임(서비스의 품질등)은 해당 서비스 제공 업체가 부담하며, 회사는 통신판매중개자로서 해당 서비스 상품의 품질 등 이행에 대하여 책임을 부담하지 않습니다.</P>
<P>&nbsp;</P>
<P><STRONG>제15조 (취소)</STRONG><BR>가. 구매자는 구매한 상품이 발송되기 전까지 구매를 취소할수 있으며 배송중인 경우에는 취소가 아닌 반품절차에 따라 처리됩니다.<BR>나. 구매자가 결제를 완료한 후 배송준비 상태에서는 취소신청 접수시 특별한 사정이 없는한 회사는 즉시 취소처리를 합니다.<BR>다. 쿠폰의 경우 쿠폰의 주문완료후 7일안에는 쿠폰번호의 미출력 상태에서 취소가 가능하며 7일이후 또는 7일이전이라도 쿠폰번호를 출력한 상태에서는 취소가 불가능합니다.</P>
<P>&nbsp;</P>
<P><STRONG>제16조 (반품)<BR></STRONG>가. 구매자는 상품을 배송 받은 날로부터 관계법령에 의거하여 7일 이내에 반품을 신청할 수 있습니다.<BR>나. 반품에 대한 일반적인 사항은 전자상거래등에서의 소비자보호에 관한 법률 등 관련 법령에 의거하여 처리 됩니다.<BR>다. 반품에 소요되는 비용은 반품에 대한 귀책사유가 있는 자에게 일반적으로 귀속 됩니다. (단순변심:구매자부담, 상품하자:회사부담)<BR>라. 구매자는 위 가항에 의한 기간 종료 이후에도 상품의 표시,광고 내용이 다르거나 상품의 불량이 있을 경우 관련법령에 따라 반품을 행할 수 있습니다. 물품수령일로부터 3개월 이내, 또는 그러한 사실을 안 날이나 알 수 있었던 날부터 30일 이내에 반품 또는 교환을 요청 할 수 있습니다. <BR>마. 반품에 따른 환불은 반품상품이 회사에 도착되고 반품사유 및 반품배송비 부담자가 확인된 이후 3영업일 이내에 PG사에 해당거래건 취소 요청을 하며 이후 계좌이체의 경우에는 해당 거래은행에서 현금잔고로 환불되고, 카드 결제의 경우 즉시 결제가 취소 되며 해당 결제 카드사에서 취소처리가 진행 됩니다.<BR>바. 반품배송비를 구매자가 부담하여야 하는 경우 반품배송비의 추가결제가 이루어지지 않으면 환불이 지연될 수 있습니다.</P>
<P>&nbsp;</P>
<P><STRONG>제17조 (교환)</STRONG><BR>가. 구매자는 상품을 배송 받은 날로부터 관계법령에 의거하여 7일 이내에 교환을 신청 할수 있습니다.<BR>나. 교환신청을 하더라도 회사가 교환할 물품의 재고가 없는 경우에는 교환이 불가능 하며 이 경우에 해당 교환신청은 반품으로 처리됩니다.<BR>다. 교환에 소요되는 비용은 물품하자의 경우에는 회사가 왕복배송비를 부담하나 구매자의 변심에 의한 경우에는 구매자가 부담 합니다.</P>
<P>&nbsp;</P>
<P><STRONG>제18조 (환불)</STRONG><BR>가. 카드결제를 통한 구매건의 환불은 원칙적으로 카드결제 취소를 통해서만 가능합니다.<BR>나. 부분환불의 경우 해당환불금액 만큼 부분취소 또는 구매자의 계좌로 해당금액을 환불 합니다.</P>
<P>&nbsp;</P>
<P><STRONG>제19조 (반품/교환/환불의 적용 배제)</STRONG><BR>가. 구매자는 다음 각 호의 경우에는 구매자가 환불 또는 교환을 요청할 수 없습니다.<BR>1) 구매자의 귀책사유로 말미암아 상품이 멸실, 훼손된 경우<BR>2) 구매자의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우<BR>3) 시간의 경과에 의하여 재판매가 곤란할 정도로 상품의 가치가 현저히 감소한 경우<BR>4) 복제가 가능한 상품의 포장을 훼손한 경우<BR>5) 기타 구매자가 환불 또는 교환을 요청할 수 없는 합리적인 사유가 있는 경우.</P>
<P>&nbsp;</P>
<P><STRONG>제20조 (머니포인트)</STRONG><BR>가. 머니포인트는 사이트에서 사용되는 지불수단으로 주문결제시 사용가능하며 1P는 현금1원의 의미를 가지며 지급된 머니포인트는 양도,대여 등 어떠한 처분행위도 할 수 없습니다.<BR>나. 회사는 서비스의 효율적인 이용 및 운영을 위해 사전 공지후 포인트의 일부 또는 전부를 조정할수 있으며 머니포인트는 회사가 정한 기간에 따라 주기적으로 소멸할 수 있습니다.<BR>다. 부여된 머니포인트는 부여일로부터 1년간 유효하며 소진일 30일전에 회원에게 이메일등으로 통지되며 유효기간이 경과한 머니포인트는 자동적으로 소멸하게 됩니다. (단 블러그 판매등으로 인한 소득신고가 된 머니포인트는 제외)<BR>라. 회원중에 1년간 거래가 없는 경우 휴면회원으로 간주하여 회사는 해당 회원의 적립된 머니포인트를 회수하게 됩니다<BR>마. 구매를 통해 적립된 머니포인트는 해당 구매가 취소될 경우 회사에 의해 환수 됩니다.<BR>바. 회원의 구매 취소 등의 사유 발생으로 회사가 회원에게 기부여된 머니포인트를 환수 하고자 하는 경우 당해 머니포인트 환수 시점에 당해 회원의 포인트 잔액이 환수 포인트 보다 작을 경우에는 회사는 구매취소를 유보할수 있으며 회원에게 부족환수포인트 만큼 추가 결제를 요청할수 있으며 회원은 회사의 요청에 따라 추가 결제를 하여야 한다. <BR>사. 회원이 부정한 방법으로 머니포인트를 획득한 사실이 확인될 경우 회사는 회원의 포인트 회수,ID삭제 및 형사 고발등 기타 조치를 취할 수 있습니다.<BR>아. 블로그를 통한 적립머니포인트는 기타소득 원천징수후 지급 합니다.</P>
<P>&nbsp;</P>
<P><STRONG>제21조 (저작권의 귀속 및 이용제한)</STRONG><BR>가. 회사가 작성한 저작물에 대한 저작권 기타 지적재산권은 회사에 귀속합니다.<BR>나. 구매자는 사이트를 이용함으로써 얻은 정보를 회사의 사전 승낙없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.</P>
<P>&nbsp;</P>
<P><STRONG>제22조 (회사의 면책)</STRONG><BR>가. 회사는 인터넷 이용자 또는 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.<BR>나. 회사와 피연결회사(회사의 서비스 화면과 링크 등으로 연결된 사이트를 운영하는 회사를 말합니다.)는 독자적으로 운영되며 회사는 피연결회사와 회원간에 이루어진 거래에 대하여 책임을 지지 않습니다.<BR>다. 회원이 자신의 개인정보를 타인에게 유출 또는 제공함으로써 발생하는 피해에 대해서 회사는 일체의 책임을 지지 않습니다.</P>
<P>&nbsp;</P>
<P><STRONG>제23조 (분쟁해결)</STRONG><BR>가. 회사는 구매자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치?운영합니다.<BR>나. 회사는 구매자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.<BR>다. 회사와 구매자간에 발생한 분쟁은 전자거래기본법 제28조 및 동 시행령 제15조에 의하여 설치된 전자거래분쟁조정위원회의 조정에 따를 수 있습니다.</P>
<P>&nbsp;</P>
<P><STRONG>제24조 (준거법 및 관할법원)<BR></STRONG>가. 이 약관과 회사와 이용자 간의 서비스 이용계약 및 회원 상호간의 분쟁에 대해서는 대한민국 법령이 적용 됩니다.<BR>나.이 서비스와 관련하여 회상와 이용자 사이에 분쟁이 발생하여 소송이 제기되는 경우에는 서울중앙지방법원을 1심 관할 법원으로 합니다.</P>
<P>&nbsp;</P>
<P><STRONG>제25조 (기타조항)</STRONG><BR>가. 회사는 필요한 경우 특정 서비스(혹은 그일부)를 회사 홈페이지를 통하여 미리 공지한후 일시적 또는 영구적으로 수정하거나 중단할 수 있습니다.<BR>나. 회사와 회원은 상대방의 명백한 동의 없이 이 약관상의 권리와 의무를 제3자에게 양도 할 수 없습니다.<BR>다. 이 약관과 관련하여 당사자 간의 합의에 의하여 추가로 작성된 계약서,협정서,통보서 등과 회사의 정책변경, 법령의 제정, 개정 또는 공공기관의 고시,지침등에 의하여 회사가 사이트를 통해 회원에게 공지하는 내용도 본 약관의 일부를 구성합니다.<BR>라. 회사소개<BR>1) 회사명 : 월드비전 합창단</P>
<P>2) 소재지 : 서울 강서구 내발산동 711-11</P>
<P>3) 대표이사 :&nbsp;<BR>4) 사업자 등록번호 : 109-82-09997</P>
<P>&nbsp;</P>
<P><BR><STRONG>부 칙</STRONG></P>
<P><STRONG><BR>제1조 (적용일자)<BR></STRONG>가. 이 약관은 2012. 3.&nbsp;15 일부터 적용 됩니다.</P>
<P><BR>&nbsp;</P>            </div>
          </td>
        </tr>
        <tr>
          <td><img src="images/join_box_foot.gif"></td>
        </tr>
        <tr>
          <td align="right" style="padding-right:10px"><img src="images/agree_check1.gif" align="absmiddle">
            <input type="checkbox" name="agree_chk" value="ok" >
          </td>
        </tr>
      </table>
      <!-- 약관 끝 -->
    </td>
  </tr>
  <tr>
    <td height="30"></td>
  </tr>
  <tr>
    <td><img src="images/agree_title2.gif"></td>
  </tr>
  <tr>
    <td>
      <!-- 개인보호정책 -->
      <table width="730" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="images/join_box_top.gif"></td>
        </tr>
        <tr>
          <td background="images/join_box_bg.gif" style="padding:10px">
            <div id="agree">
              <P>&#039;월드비전 합창단&#039; 은 (이하 &#039;회사&#039;는) 고객님의 개인정보를 중요시하며, &quot;정보통신망 이용촉진 및 정보보호&quot;에 관한 법률을 준수하고 있습니다.<BR>회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.</P>
<P>회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.</P>
<P>&nbsp;○ 본 방침은 : 2012 년 03 월 15 일 부터 시행됩니다. </P>
<P>&nbsp;</P>
<P><STRONG>수집하는 개인정보의 항목<BR></STRONG>회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.</P>
<P>ο 수집항목 : 이름 , 생년월일 , 성별 , 휴대전화번호 , 이메일 , 서비스 이용기록 , 접속 로그 , 쿠키 , 접속 IP 정보 , 결제기록<BR>ο 개인정보 수집방법 : 홈페이지(회원가입) </P>
<P>&nbsp;</P>
<P><STRONG>개인정보의 수집 및 이용목적</STRONG></P>
<P>회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.</P>
<P>ο 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산<BR>콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융 서비스 , 요금추심<BR>ο 회원 관리<BR>회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 가입 의사 확인 , 연령확인 , 불만처리 등 민원처리 , 고지사항 전달 </P>
<P>개인정보의 보유 및 이용기간<BR>원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.</P>
<P>보존 항목 : 이름 , 생년월일 , 성별 , 결제기록<BR>보존 근거 : 신용정보의 이용 및 보호에 관한 법률<BR>보존 기간 : 5년</P>
<P>보존 항목 : 휴대전화번호 , 이메일 , 서비스 이용기록 , 접속 로그 , 쿠키<BR>보존 근거 : 전자상거래등에서의 소비자보호에 관한 법률<BR>보존 기간 : 5년</P>
<P>대금결제 및 재화 등의 공급에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)<BR>소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래등에서의 소비자보호에 관한 법률)<BR>신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년 (신용정보의 이용 및 보호에 관한 법률) </P>
<P>&nbsp;</P>
<P><STRONG>개인정보의 파기 절차 및 방법</STRONG><BR>회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.</P>
<P>ο 파기절차<BR>회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다. 별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다. </P>
<P>ο 파기방법 <BR>- 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. </P>
<P>&nbsp;</P>
<P><STRONG>개인정보 제공</STRONG><BR>회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.<BR>- 이용자들이 사전에 동의한 경우<BR>- 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우</P>
<P>&nbsp;</P>
<P><STRONG>수집한 개인정보의 위탁<BR></STRONG>회사는 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다. 향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다. </P>
<P>이용자 및 법정대리인의 권리와 그 행사방법<BR>이용자 및 법정 대리인은 언제든지 등록되어 있는 자신 혹은 당해 만 14세 미만 아동의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니 다. <BR>이용자 혹은 만 14세 미만 아동의 개인정보 조회/수정을 위해서는 ‘개인정보변 경’(또는 ‘회원정보수정’ 등)을 가입해지(동의철회)를 위해서는 “회원탈퇴”를 클릭 하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다. 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이 조 치하겠습니다. <BR>귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까 지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자 에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다. <BR>회사는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 “회사 가 수집하는 개인정보의 보유 및 이용기간”에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다. </P>
<P>&nbsp;</P>
<P><STRONG>개인정보 자동수집 장치의 설치,운영 및 그 거부에 관한 사항</STRONG><BR>쿠키 등 인터넷 서비스 이용 시 자동 생성되는 개인정보를 수집하는 장치를 운영하지 않습니다.<BR></P>
<P><BR><STRONG>개인정보에 관한 민원서비스</STRONG></P>
<P>회사는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.</P>
<P>고객서비스담당 부서 : </P>
<P>담당자 : <BR>전화번호 : </P>
<P>이메일 : </P>
<P>귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다. 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다</P>
<P>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</P>
<P><BR>1.개인분쟁조정위원회 (<A href=&#039;&quot;http://www.1336.or.kr/1336&quot;&#039;>www.1336.or.kr/1336</A>)<BR>2.정보보호마크인증위원회 (<A href=&#039;&quot;http://www.eprivacy.or.kr/02-580-0533~4&quot;&#039;>www.eprivacy.or.kr/02-580-0533~4</A>)<BR>3.대검찰청 인터넷범죄수사센터 (<A href=&#039;&quot;http://icic.sppo.go.kr/02-3480-3600&quot;&#039;>http://icic.sppo.go.kr/02-3480-3600</A>)<BR>4.경찰청 사이버테러대응센터 (<A href=&#039;&quot;http://www.ctrc.go.kr/02-392-0330&quot;&#039;>www.ctrc.go.kr/02-392-0330</A>)<BR></P>            </div>
          </td>
        </tr>
        <tr>
          <td><img src="images/join_box_foot.gif"></td>
        </tr>
        <tr>
          <td align="right" style="padding-right:10px"><img src="images/agree_check2.gif" align="absmiddle">
            <input type="checkbox" name="agree_chk1" value="ok">
          </td>
        </tr>
      </table>
      <!-- 개인정책 끝 -->
    </td>
  </tr>
  <tr>
    <td height="15"></td>
  </tr>
  <tr>
    <td align="center"><img src="images/btn_next.gif" onclick="chk_sub();" style="cursor:hand"></td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
</form>
</table>

<iframe name="idChk" style="display:none;"></iframe>
<iframe name="emailChk" style="display:none;"></iframe>


</td>
              </tr>
              <tr>
                <td height="70"></td>
              </tr>
            </table>
            </td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table><table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td background="/index/images/foot_bg.gif" align="center"><table width="1000" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="230" height="100"><img src="/index/images/foot_logo.gif" /></td>
        <td>기관:월드비전 음악원 │ 주소:서울 강서구 내발산동 711-11 │ 대표자:한상호  │ 사업자등록번호:109-82-09997<br />
          대표전화:02-2662-1803 │  팩스:02-2661-2568 <br />
          <br />
          COPYRIGHT 2010 WVCHOIR ALL RIGHTS RESERVED.</td>
      </tr>
    </table></td>
  </tr>
</table>
<style>
        /* =============================== Main / ToggleMenu1  =============================== */
#SP_toggleMenu_ver2 {
	display:none;
	position:fixed;
	top:0;
	right:0;
	bottom:0;
	height:100%;
	z-index:98;
	border-left: 1px solid #cbcbcb;
    background-color: rgba( 255, 255, 255, 0.3 );

}
#SP_toggleMenu_ver2 > div{
	width:140px;
	height:100%;
}
#SP_toggleMenu_ver2 button{
	position: absolute;
	top: 107px;
	left: -32px;
	width: 32px;
	height: 61px;
	background: url("/index/images/toggleBtn-on.gif") no-repeat;
	text-indent: -9999px;
	border:0;
}

#SP_toggleMenu_ver2 button.off {
	background: url("/index/images/toggleBtn-off.gif") no-repeat;
}

#SP_toggleMenu_ver2 button:hover,#SP_toggleMenu_ver1 button.off{

}

.quick_menu ul { margin-top:200px; border-top:1px solid #ddd;	} 
.quick_menu li { border-bottom:1px solid #ddd; padding:5px 0 7px 20px; list-style:none;} 




    </style>
<script language="JavaScript" src="/index/include/jquery-1.9.1.min.js" ></script>
    
<div id="SP_toggleMenu_ver2">
<div class="quick_menu">
     <ul class="quick_menu">
     <li><a href="http://www.wvchoir.or.kr/index/online/online_01.php?type=1" target="_self">입단신청</a></li>
     <li><a href="http://www.wvchoir.or.kr/index/gallery_01.php" target="_self">음악감상실</a></li>
     <li><a href="http://www.wvchoir.or.kr/BlueAD/board.php?bbs_id=wv_gallery02" target="_self">영상갤러리</a></li>
     <li><a href="http://www.wvchoir.or.kr/BlueAD/board.php?bbs_id=wv_gallery03" target="_self">사진갤러리</a></li>
     <li><a href="http://www.wvchoir.or.kr/BlueAD/board.php?bbs_id=wv_webzine" target="_self">월비통신</a></li>
     <li><a href="http://www.wvchoirfestival.or.kr/" target="_blank">세계어린이합창제</a></li>
     <li><a href="http://wvchoir01.window.gabiauser.com" target="_blank">유앤유</a></li>

     </ul>
</div>
    <div class="left_sp">
		<button id="toggle_btn_left" class="off">토글버튼</button>
	</div>

</div>
</div>
<script>
     	//쿠키체크
	function SP_cookieParse(parm){
		var data;
		var c = document.cookie.split(';');
		for(var i=0; i < c.length; i++){
			if(c[i].indexOf(parm)!=-1){
				data = c[i].split('=')[1];
			}
		}
		return data;
	};
     
        
	//토글메뉴
	SMS$.fn.SP_toggleMenu_left = function (options){
		if(this.length == 0) return this;
		if(this.length > 1){
			this.each(function(){SMS$(this).SP_toggleMenu_left(options)});
			return this;
		}
		var defaults = {
			mode:1,
			speed:1000
		};
		var option = SMS$.extend({},defaults,options);
		var mode = {};
		mode.mode1 = {
			self : {
				_toggleMenu : SMS$(this),
				_toggleWid : SMS$(this).find('div').outerWidth(true)
			},
			move : function(){
				var _this = this;

				if(SP_cookieParse('SP_toggle_left')=='off'){
					_this.self._toggleMenu.css({right:-_this.self._toggleWid});
					_this.self._toggleMenu.find('button').removeClass('off');
                    
				}else if(SP_cookieParse('SP_toggle_left')=='on'){
					_this.self._toggleMenu.css({right:0});
					_this.self._toggleMenu.find('button').addClass('off');
				}
                
				_this.self._toggleMenu.show();
				_this.self._toggleMenu.find('button').on('click',function (){
					if (SMS$(this).hasClass('off')) {
						_this.self._toggleMenu.stop().animate({right:-_this.self._toggleWid},option.speed)
						SMS$(this).removeClass('off');
						document.cookie="SP_toggle_left=off;path=/";
                        
					}else {
						_this.self._toggleMenu.stop().animate({right:0},300);
						SMS$(this).addClass('off');
						document.cookie="SP_toggle_left=on;path=/";
					}	
				});				
			}
		};
		mode.mode1.move();
	}
	SMS$('#SP_toggleMenu_ver2').SP_toggleMenu_left({
		mode:1,
		speed:500
	});
     
    
	
    </script>
</body>
</html>
