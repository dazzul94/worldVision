<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />	



<title>::: ������� ��â�� :::</title>
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
	
	

    <!-- �α׾ƿ� ���� -->
        <table class="member">
	  <tr>
        <td><a href="javascript:menu8sub2();">�α���</a></td>
          <td><a href="javascript:english();">English</a></td>
	  </tr>
	</table>
    <!-- �α��� ����-->
        
 </div>
  <div class="topLogo">
         	<h1>
            	 <a href="javascript:index();"><img src="/index/images/logo.png" alt="������� ����" /></a>
            </h1>
  </div>
<div class="container2">
  <div id="fdw">
				<!--nav-->
					<nav>
						<ul>
							
							
							<li>
								<a href="javascript:menu1sub4();">���ǿ�</a>
								<ul style="display: none;" class="sub_menu">
									<li class="arrow_top"></li>
								    <li><a href="javascript:menu1sub4()">������</a></li>
									<li><a href="javascript:menu1sub1()">����Ұ�</a></li>
									<li><a href="javascript:menu1sub5()">���ô� ��</a></li>
								</ul>
							</li>
							<li>
								<a href="javascript:menu1sub2()">��â��</a>
								<ul style="display: none;" class="sub_menu">
									<li class="arrow_top"></li>
									 <li><a href="javascript:menu1sub2()">�Ұ�</a></li>
									<li><a href="javascript:menu1sub3()">����</a></li>
									<li><a href="javascript:menu2sub1()">���ֹ�</a></li>
									<li><a href="javascript:menu2sub2()">������</a></li>
									<li><a href="javascript:menu2sub4()">�����̾���</a></li>
									<li><a href="javascript:menu2sub5()">���ֹ� �ܿ��Ұ�(��Ʈ��)</a></li>
								</ul>
							</li>
							<li>
								<a href="javascript:menu3sub1();">����ȸ</a>
								<ul style="display: none;" class="sub_menu">
									<li class="arrow_top"></li>
									<li><a href="javascript:menu3sub1();">��������</a></li>
									<li><a href="javascript:menu3sub2();">��û����</a></li>
									<li><a href="javascript:menu3sub3();">��ȹ����</a></li>
									<li><a href="javascript:menu3sub4();">�̼ǿ���</a></li>
									<li><a href="javascript:menu3sub5();">�ؿܿ���</a></li>
									<li><a href="javascript:menu3sub6();">���� �����丮</a></li>
								</ul>
							</li>
                            <li>
								<a href="javascript:menu4sub1();">������</a>
								<ul style="display: none;" class="sub_menu">
									<li class="arrow_top"></li>
									<li><a href="javascript:menu4sub3();">����</a></li>
									<li><a href="javascript:menu4sub2();">����</a></li>
									<li><a href="javascript:menu4sub4();">������</a></li>
									<li><a href="javascript:menu4sub1();">����</a></li>
								</ul>
							</li>
                            <li>
								<a href="javascript:menu5sub1();">������û</a>
								<ul style="display: none;" class="sub_menu">
									<li class="arrow_top"></li>
									 <li><a href="javascript:menu5sub1();">�Դܽ�û</a></li>
									<li><a href="javascript:menu5sub2();">��â���Ŀ���û</a></li>
									<li><a href="javascript:menu5sub3();">���ݡ��Ǻ� ���Խ�û</a></li>
									<li><a href="javascript:menu5sub4();">����������û</a></li>
								</ul>
							</li>
                            <li>
								<a href="javascript:menu7sub1();">�Խ���</a>
								<ul style="display: none;" class="sub_menu">
									<li class="arrow_top"></li>
									 <li><a href="javascript:menu7sub1();">�����Խ���</a></li>
									<li><a href="javascript:menu7sub2();">�����ڷ�</a></li>
									<li><a href="javascript:menu7sub3();">�������</a></li>
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
font:15px notokr-medium, NanumBarunGothic, nbg_bold, �������, NanumGothic, dotum, gulim, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    color: #202020 !important; }
.tc { color:#999; font-size:12px !important;}	
.tht { font:25px notokr-medium, NanumBarunGothic, nbg_bold, �������, NanumGothic, dotum, gulim, sans-serif;
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
            <td height="30" align="right" valign="bottom"><span class="his01">HOME > Member > </span><span class="his02">ȸ������</span></td>
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
                <td height="40" ><h2>ȸ������ <span class="tc">������� ��â���� ������ ��� ����� ǳ���� ���Դϴ�.</span></h2></td>
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
		 alert('�̸��� �Է��� �ϼ���.');
		 form.member_name.focus();
		 return false;
	  }
	  if(form.member_name.value.indexOf(" ")>=0) {
		alert('�̸����� ������ ���Եɼ� �����ϴ�.');
		form.member_name.focus();
		return false;
	  }
	  for(i=0;i<form.member_name.value.length;i++) {
		var a=form.member_name.value.charCodeAt(i);
		if (a < 128) {
		  alert('�̸��� �ѱ۸� �����մϴ�.');
		  form.member_name.focus();
		  return false;
		}
	  }	 

		if(form.member_email.value=="") {
		 alert('�̸����ּҸ� �Է��� �ϼ���.');
		 form.member_email.focus();
		 return false;
	  }

		if(form.member_email_num.value=="") {
		 alert('������ȣ�� �Է��� �ϼ���.');
		 form.member_email_num.focus();
		 return false;
	  }
	  

	  if(form.agree_chk.checked==false) {
		alert('ȸ�����Ծ���� ���� �ϼž� ȸ�������� �ϽǼ� �ֽ��ϴ�.');
		form.agree_chk.focus();
		return false;
	  }  

	  if(form.agree_chk1.checked==false) {
		alert('����������ȣ��å�� ���� �ϼž� ȸ�������� �ϽǼ� �ֽ��ϴ�.');
		form.agree_chk.focus();
		return false;
	  } 
		form.action = "join.php";
		form.target = "";
		form.submit();

	return true;
	}
//������ȣ�ޱ�
function funEmail()	{
	var DefinedStr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	  var emailEx1 = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	  var form = document.form;

	  if(form.member_name.value=="") {
		 alert('�̸��� �Է��� �ϼ���.');
		 form.member_name.focus();
		 return false;
	  }
	  if(form.member_name.value.indexOf(" ")>=0) {
		alert('�̸����� ������ ���Եɼ� �����ϴ�.');
		form.member_name.focus();
		return false;
	  }
	  for(i=0;i<form.member_name.value.length;i++) {
		var a=form.member_name.value.charCodeAt(i);
		if (a < 128) {
		  alert('�̸��� �ѱ۸� �����մϴ�.');
		  form.member_name.focus();
		  return false;
		}
	  }	 

		if(form.member_email.value=="") {
		 alert('�̸����ּҸ� �Է��� �ϼ���.');
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
      <!-- �Ǹ����� -->
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
      <!-- �Ǹ����� �� -->
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
      <!-- ��� -->
      <table width="730" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="images/join_box_top.gif"></td>
        </tr>
        <tr>
          <td background="images/join_box_bg.gif" style="padding:10px;">
            <div id="agree">
				<P><STRONG>�� 1 �� ��Ģ</STRONG></P>
<P><STRONG></STRONG>&nbsp;</P>
<P><STRONG>��1��(����)</STRONG></P>
<P>�� ����� ������� ��â��(���� &quot;ȸ��&quot;�� ��)�� ���ͳݻ���Ʈ(<A href=&#039;&quot;http://wvchoir.bluead.co.kr/index&quot;&#039;>http://wvchoir.bluead.co.kr/index</A>)(���� &quot;����Ʈ&quot;��� ��)�� ���Ͽ� �����ϴ� ���ͳ� ���� ���� (���� &quot;����&quot;�� ��) �� �����Ͽ� �̿����� �Ǹ��� �ǹ�, å�ӻ��� �� ȸ���� �����̿������� ���� ������ �������� �������� �մϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��2�� (����� ���,ȿ�� �� ����)</STRONG><BR>��. ȸ��� �� ����� ���񽺸� �̿��ϰ��� �ϴ� �ڿ� ȸ���� �� �� �ֵ��� ���񽺰� ���� �Ǵ� ���ͳݻ���Ʈ(<A href=&#039;&quot;http://wvchoir.bluead.co.kr/index&quot;&#039;>http://wvchoir.bluead.co.kr/index</A>)ȭ�鿡 �Խ� �մϴ�.<BR>��. ȸ��� ����� ������ ���ѹ���,���ڰŷ��⺻��,���ڼ����,������Ÿ��̿�������������ȣ� ���� ����,���ڻ�ŷ� ����� �Һ��� ��ȣ�� ���� ����,���ڱ����ŷ����� ���ù��� �������� �ʴ� �������� �� ����� ������ �� �ֽ��ϴ�.<BR>��. ȸ�簡 �� ����� �����ϴ� ��쿡�� ������ ����� �������� �� ���������� ����Ͽ� �� �������� 7�� �������� �������� ���ϱ��� �� ������ ������� ���� �մϴ�.<BR>��. �� ����� ȸ��� �̿��ڰ��� �����Ǵ� ���� �̿������� �⺻ �����Դϴ�. ȸ��� �ʿ��� ��� Ư�����񽺿� ���Ͽ� ����� ����(���� ������������̶�� �մϴ�.)�� ���Ͽ� �̸� ������ �� �ֽ��ϴ�. ȸ���� �̷��� ��������� �����ϰ� Ư�� ���񽺸� �̿��ϴ� ��쿡�� ��������� �켱������ ����ǰ�, �� ����� �������� ȿ���� �����ϴ�. ��������� ���濡 ���ؼ��� �� ������ �ؿ��մϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��3��(����� ����)<BR></STRONG>��. �� ������� ����ϴ� ����� ���Ǵ� ������ �����ϴ�.<BR>1) ȸ��:�� ����� �����ϰ� ȸ��� �����̿����� ü���� �ڸ� ���մϴ�.<BR>2) ��ȸ��: ȸ���� �������� �ʰ� ȸ�簡 �����ϴ� ���񽺸� �̿��ϴ� �ڸ� ���մϴ�.<BR>3) ���̵�(ID):ȸ���� �ĺ��� ���� �̿��� ���Ͽ� ȸ���� �����ϰ� ȸ�簡 ������ ���ڿ� ������ ������ ���մϴ�.<BR>4) ��й�ȣ(Password):ȸ���� ���ϼ� Ȯ�ΰ� ȸ���� ���� �� ��к�ȣ�� ���Ͽ� ȸ�� �����ΰ� �����Ͽ� ȸ�翡 ����� ������ ������ ������ ���մϴ�.<BR>5) �Ӵ�����Ʈ:��ǰ�� �����Ҷ��� ȸ�簡 �����ϴ� ���񽺸� �̿��� �� ����ó�� ����� �� �ִ� ȸ�� ������ ���̹� ȭ�� ���մϴ�.<BR>��. �� ���׿��� ���ǵ��� ���� �� ������� ����� �ǹ̴� �Ϲ����� �ŷ����࿡ ���մϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��4�� (���� ���� �̿����� ����)</STRONG><BR>��. ���� ���� �̿���(���ϡ��̿��ࡱ�̶�� �մϴ�.)�� ȸ�簡 �����ϴ� ���� ���񽺸� �̿��ϰ��� �ϴ� ���� �̿��û�� ���Ͽ� ȸ�簡 �̸� �³������ν� �����մϴ�. ȸ��� �̿�³��� �ǻ�ǥ�ø� �ش� ����ȭ�鿡 �Խ��ϰų� e-mail�Ǵ� ��Ÿ ������� �����մϴ�.<BR>��. ���� ���񽺸� �̿��ϰ��� �ϴ� �ڴ� �� ����� �����ϰ�, ȸ�簡 ���ϴ� ȸ������ ��û ��Ŀ� ���� �ſ����� ���� �ʿ��� ������ �����մϴ�.<BR>��. ȸ�������� ��14�� �̻��� ���� �Ǹ����� ���Խ�û�� �Ͽ��� �ϸ� �Ǹ��� �ƴϰų� Ÿ���� ������ �����Ͽ� ȸ������ ������ �ڴ� ȸ�簡 �����ϴ� ���񽺸� �̿��� �� ������ �̿��Ͽ����� �ȵ˴ϴ�.<BR>��. �̿��û�� ó���� ��û������ ���ϸ�, ȸ�������� �����ñ�� ȸ���� �³��� ȸ������ ������ �������� �մϴ�.<BR>��. ȸ��� ������ ���� ������ �߻��� ��� �̿��û�� ���� �³��� �ź��ϰų� ������ �� �ֽ��ϴ�.<BR>1) ȸ���� �Ǹ�Ȯ���������� �Ǹ��Խ�û�� �ƴ��� Ȯ�ε� ���<BR>2) �̹� ���Ե� ȸ���� �̸� �� �̸����ּҰ� ������ ���<BR>3) ȸ�翡 ���Ͽ� �̿����� ������ ���κ��� 2���� �̳��� ���̿� ��û�� �ϴ� ���<BR>4) ���� ������ ���ų� ����� ������ �ִ� ���<BR>5) ��Ÿ �� ����� ����ǰų� ���� �Ǵ� �δ��� �̿��û���� Ȯ�ε� ��� �� ȸ�簡 �ո����� �Ǵܿ� ���Ͽ� �ʿ��ϴٰ� �����ϴ� ���</P>
<P>&nbsp;</P>
<P><STRONG>��5�� (�̿����� ����)</STRONG><BR>��. ȸ���� ����<BR>1) ȸ���� �������� ȸ�翡�� �����ǻ縦 ���������ν� �̿����� ������ �� �ֽ��ϴ�.<BR>2) �̿����� ȸ���� �����ǻ簡 ȸ�翡 ������ ���� ���� �˴ϴ�.<BR>3) ���׿� ���� ������ �� ȸ���� �� ����� ���ϴ� ȸ������������ �������׿� ���� ȸ������ �ٽ� ������ �� �ֽ��ϴ�.<BR>��. ȸ���� ����<BR>1) ȸ��� ������ ���� ������ �ִ� ���, �̿����� �����Ҽ� �ֽ��ϴ�.�� ��� ȸ��� ȸ������ �̸���,��ȭ,�ѽ� ��Ÿ�� ����� ���Ͽ� ���������� ���� �����ǻ縦 �����մϴ�. �ٸ� ȸ��� �ش� ȸ������ ������ ���������� ���� �ǰ������� ��ȸ�� �ο� �Ҽ� �ֽ��ϴ�.<BR>�� ��4�� ���׿��� ���ϰ� �ִ� �̿����� �³��źλ����� ������ Ȯ�ε� ���<BR>�� ȸ���� ȸ�糪 �ٸ� ȸ�� ��Ÿ Ÿ���� �Ǹ��� ��,�ſ� ��Ÿ ������ ������ ħ���ϴ� ������ �� ���<BR>�� ��Ÿ ȸ���� �� ����� ����Ǵ� ������ �ϰų� �� ������� ���� ���������� �߻��� ���<BR>2) �̿����� ȸ���� �����ǻ簡 ȸ������ ������ ���� ����ǰų�, ȸ���� ������ ����ó ������ ������ ���Ͽ� ȸ�簡 ���� �ǻ縦 �����Ҽ� ���� ��쿡�� ȸ�� �Խ��ǿ� ���� �ǻ縦 �����ϴ� ���� ���� �˴ϴ�.<BR>��. �̿����� ����Ǵ� ��� ȸ���� ���ݼ� �Ӵ�����Ʈ�� �Ҹ� �˴ϴ�.<BR>��. �̿����� ����� �����Ͽ� �߻��� ���ش� �̿����� ����� �ش� ȸ���� å���� �δ��Ͽ��� �ϰ� ȸ��� ��ü�� å���� ���� �ʽ��ϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��6�� (���������� ����,��ȣ)</STRONG><BR>��. ȸ���� �̿��û�� ������ ������ �����Ͽ����� �ƴ� �Ǹ� ������ ������ ����Ǿ��� ��쿡�� ��� ��������� �ֽ��� ������ �����Ͽ��� �մϴ�. ��, �̸�,ID���� �����Ҽ� ������ ���ɿ� ���� ���� ���������� ���� ���� �մϴ�.<BR>��. �������� ���� ������ ���Ͽ� �߻��Ǵ� ���ش� ���� ȸ���� �������� �δ��ϸ� ȸ��� �̿� ���Ͽ� �ƹ��� å���� ���� �ʽ��ϴ�.<BR>��. ȸ��� �̿����� ���Ͽ� ȸ���� ������ ������ ȸ�� ���� ��� ���� ���� �̿��� �뵵�� ����ϰų� �̿����� ���� ���� ��3�ڿ��� �������� �ʽ��ϴ�. ��, ���� ��ȣ�� ��쿡�� ���ܷ� �մϴ�.<BR>1) ���ɿ� �ٰ��Ͽ� ȸ�������� �̿�� ��3�ڿ� ���� ���������� ����ϰ� �ִ� ���<BR>2) ���޾�ü�� ����� ���Ͽ� �ʿ��� �ּ����� ȸ�������� �˷��ִ� ���<BR>3) ��Ÿ ȸ���� ��� �� ��å�� ���� �̿����� ���Ǹ� ���� ���<BR>��. ȸ��� ȸ���� ���������� ��ȣ�ϱ� ���� ���������������å���� �����ϰ� �������� ��ȣ å���ڸ� �����Ͽ� �̸� �Խ��ϰ� � �մϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��7�� (���̵� �� ��й�ȣ�� ����)</STRONG><BR>��. ���̵� �� ��й�ȣ�� ���� ����å���� ȸ������ ������ ȸ���� ���̵�,��й�ȣ�� Ÿ�ο��� �絵,�뿩�Ҽ� �����ϴ�.<BR>��. ȸ���� ������ ������ �ƴ��� ���̵�,��й�ȣ�� ����, �絵, �뿩�� ���� �ս��̳� ���ؿ� ���Ͽ� ȸ��� �ƹ��� å���� ���� �ʽ��ϴ�.<BR>��. ȸ���� ���̵� �Ǵ� ��й�ȣ�� �������ϰų� ��3�ڰ� �̸� ����ϰ� ������ ������ ���, ��� ȸ�翡�� �뺸 �Ͽ��� �ϰ�, ȸ���� �ȳ��� �ִ� ��쿡�� �׿� ����� �մϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��8�� (���񽺱Ⱓ�� �ߴ�)</STRONG><BR>��. �� ����� ���� ���� �Ⱓ�� ���� ��û�Ϸκ��� �̿����� ������ ���� �Դϴ�.<BR>��. ȸ��� ��ǻ�� �� ������ż����� ����,����,��ü �� ����, ����� ���� ���� ������ �߻��� ��쿡�� ������ ������ �Ͻ������� �ߴ��� �� �ֽ��ϴ�. �� ��� ���� �Ͻ� �ߴ� ��ǰ� �� ������ ����Ʈ �ʱ�ȭ�鿡 ���� �մϴ�.<BR>��. ȸ��� õ������ �Ǵ� �̿� ���ϴ� �Ұ��׷����� ���Ͽ� ȸ�� ���񽺸� ������ �� ���� ��쿡�� ������ ������ ���� �ϰų� �Ͻ� �ߴ��� �� �ֽ��ϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��9��(���Ž�û)</STRONG><BR>�̿��ڴ� ����Ʈ ���� ������ ����� ���Ͽ� ���Ÿ� ��û�մϴ�.<BR>��. ����, �ּ�, ��ȭ��ȣ �Է�<BR>��. ��ȭ �Ǵ� �뿪�� ����<BR>��. ��������� ����<BR>��. �� ����� �����Ѵٴ� ǥ��(��, ���콺 Ŭ��)</P>
<P>&nbsp;</P>
<P><STRONG>��10�� (����� ����)</STRONG><BR>��. ȸ��� ��9���� ���� ���Ž�û�� ���Ͽ� ���� ��ȣ�� �ش����� �ʴ� �� �³��մϴ�.<BR>1) ��û ���뿡 ����, ���紩��, ���Ⱑ �ִ� ���<BR>2) �̼����ڰ� ���, �ַ��� û�ҳ⺸ȣ������ �����ϴ� ��ȭ �� �뿪�� �����ϴ� ���<BR>3) ��Ÿ ���Ž�û�� �³��ϴ� ���� ȸ�� ����� ������ ������ �ִٰ� �Ǵ��ϴ� ���<BR>4) ȸ�簡 �Ǵ��Ͽ� �ǸŰ� ������ �ϴٰ� �ǴܵǴ� �������� ���<BR>5) ȸ�簡 �غ��� �����̻����� �����Ͽ� ��ȭ �Ǵ� �뿪�� �������� ���Ѵٰ� �Ǵ��ϴ� ���<BR>��. ȸ���� �³��� ��12����1���� ����Ȯ���������·� �����ڿ��� ������ ������ ����� ������ ������ ���ϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��11��(���޹��)</STRONG><BR>����Ʈ ���� ������ ��ȭ �Ǵ� �뿪�� ���� ������޹���� ���� ��ȣ�� �ϳ��� �� �� �ֽ��ϴ�.<BR>��. �ſ�ī�����<BR>��. �ǽð� ������ü ����<BR>��. �޴���ȭ ����<BR>��. �Ӵ� ����Ʈ ����<BR>��. ��Ÿ ȸ�簡 �߰� �����ϴ� ���� ����</P>
<P>&nbsp;</P>
<P><STRONG>��12�� (����Ȯ������?���Ž�û ���� �� ���)</STRONG><BR>��. ȸ��� �������� ���Ž�û�� �ִ� ��� �����ڿ��� ����Ȯ�������� �մϴ�.<BR>��. ����Ȯ�������� ���� �����ڴ� �ǻ�ǥ���� ����ġ���� �ִ� ��쿡�� ����Ȯ�������� ���� �� ��� ���Ž�û ���� �� ��Ҹ� ��û�� �� �ֽ��ϴ�.<BR>��. �̿��ڴ� ���Ž�û ����ÿ��� �ش��ǰ �Ǹ��������� ����Ʈ���� ����� �籸�Ÿ� �Ͽ��� �ϸ� ���Ż�ǰ ��ҽÿ��� �ش���ǰ ����������� ����Ʈ���� �̿��ڰ� ����Ͽ��� �մϴ�. </P>
<P>&nbsp;</P>
<P><STRONG>��13��(���)</STRONG><BR>��. ��� �ҿ�Ⱓ�� �Ա� �Ǵ� ��ݰ��� Ȯ������ ������ ����Ϸ� �Ͽ� ����� �Ϸ� �Ǳ� ������ �Ⱓ�� ���մϴ�.<BR>��. ȸ��� �����ڿ� ��ȭ���� ���޽ñ⿡ ���Ͽ� ������ ������ ���� �̻�, �����ڰ� ���Ÿ� �� ������ 7�� �̳��� ��ȭ ���� ����� �� �ֵ��� �ֹ�����, ���� �� ��Ÿ�� �ʿ��� ��ġ�� ���մϴ�. �̶� ȸ��� �����ڰ� ��ȭ���� ���� ���� �� ���� ������ Ȯ���� �� �ֵ��� ������ ��ġ�� �մϴ�.<BR>��. ȸ��� �����ڰ� ������ ��ȭ�� ���� ��ۼ���, ���ܺ� ��� �Ⱓ ���� ����մϴ�. </P>
<P>&nbsp;</P>
<P><STRONG>��14�� (���� ���)</STRONG><BR>��. �̿��ڴ� �������ǻ� ��õ� ��� �� ��ȿ �Ⱓ���� ���ؼ��� ��ü�� ���񽺸� ���������� �ֽ��ϴ�. ��ȿ �Ⱓ�� ����� ������ ����� �� ������ ȯ���� �Ұ� �մϴ�.<BR>��. �� ���� 1�ſ� ���� �̿� ����Ƚ���� 1ȸ�� ���� �˴ϴ�. �̿��ڰ� �߱޵� ������ �׸鰡�� ��� ������� ���� ���, �ܾ׿� ���� ȯ���� �̷�� ���� �ʽ��ϴ�.<BR>��. �̿��ڴ� ��� Ȩ�������� ��õ� ���� �� �������ǻ���(�̿�����)�� Ȯ���Ͽ��� �� å���� ������, ��õ� �̿����ǿ� ���󼭸� ������ ����Ͻ� �� �ֽ��ϴ�.<BR>��. ������ ���԰� ���õ� ���� �� ȸ���� ��å���� �̿��� �ش� ��ǰ�� ���� å��(������ ǰ����)�� �ش� ���� ���� ��ü�� �δ��ϸ�, ȸ��� ����Ǹ��߰��ڷμ� �ش� ���� ��ǰ�� ǰ�� �� ���࿡ ���Ͽ� å���� �δ����� �ʽ��ϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��15�� (���)</STRONG><BR>��. �����ڴ� ������ ��ǰ�� �߼۵Ǳ� ������ ���Ÿ� ����Ҽ� ������ ������� ��쿡�� ��Ұ� �ƴ� ��ǰ������ ���� ó���˴ϴ�.<BR>��. �����ڰ� ������ �Ϸ��� �� ����غ� ���¿����� ��ҽ�û ������ Ư���� ������ ������ ȸ��� ��� ���ó���� �մϴ�.<BR>��. ������ ��� ������ �ֹ��Ϸ��� 7�Ͼȿ��� ������ȣ�� ����� ���¿��� ��Ұ� �����ϸ� 7������ �Ǵ� 7�������̶� ������ȣ�� ����� ���¿����� ��Ұ� �Ұ����մϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��16�� (��ǰ)<BR></STRONG>��. �����ڴ� ��ǰ�� ��� ���� ���κ��� ������ɿ� �ǰ��Ͽ� 7�� �̳��� ��ǰ�� ��û�� �� �ֽ��ϴ�.<BR>��. ��ǰ�� ���� �Ϲ����� ������ ���ڻ�ŷ������ �Һ��ں�ȣ�� ���� ���� �� ���� ���ɿ� �ǰ��Ͽ� ó�� �˴ϴ�.<BR>��. ��ǰ�� �ҿ�Ǵ� ����� ��ǰ�� ���� ��å������ �ִ� �ڿ��� �Ϲ������� �ͼ� �˴ϴ�. (�ܼ�����:�����ںδ�, ��ǰ����:ȸ��δ�)<BR>��. �����ڴ� �� ���׿� ���� �Ⱓ ���� ���Ŀ��� ��ǰ�� ǥ��,���� ������ �ٸ��ų� ��ǰ�� �ҷ��� ���� ��� ���ù��ɿ� ���� ��ǰ�� ���� �� �ֽ��ϴ�. ��ǰ�����Ϸκ��� 3���� �̳�, �Ǵ� �׷��� ����� �� ���̳� �� �� �־��� ������ 30�� �̳��� ��ǰ �Ǵ� ��ȯ�� ��û �� �� �ֽ��ϴ�. <BR>��. ��ǰ�� ���� ȯ���� ��ǰ��ǰ�� ȸ�翡 �����ǰ� ��ǰ���� �� ��ǰ��ۺ� �δ��ڰ� Ȯ�ε� ���� 3������ �̳��� PG�翡 �ش�ŷ��� ��� ��û�� �ϸ� ���� ������ü�� ��쿡�� �ش� �ŷ����࿡�� �����ܰ�� ȯ�ҵǰ�, ī�� ������ ��� ��� ������ ��� �Ǹ� �ش� ���� ī��翡�� ���ó���� ���� �˴ϴ�.<BR>��. ��ǰ��ۺ� �����ڰ� �δ��Ͽ��� �ϴ� ��� ��ǰ��ۺ��� �߰������� �̷������ ������ ȯ���� ������ �� �ֽ��ϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��17�� (��ȯ)</STRONG><BR>��. �����ڴ� ��ǰ�� ��� ���� ���κ��� ������ɿ� �ǰ��Ͽ� 7�� �̳��� ��ȯ�� ��û �Ҽ� �ֽ��ϴ�.<BR>��. ��ȯ��û�� �ϴ��� ȸ�簡 ��ȯ�� ��ǰ�� ��� ���� ��쿡�� ��ȯ�� �Ұ��� �ϸ� �� ��쿡 �ش� ��ȯ��û�� ��ǰ���� ó���˴ϴ�.<BR>��. ��ȯ�� �ҿ�Ǵ� ����� ��ǰ������ ��쿡�� ȸ�簡 �պ���ۺ� �δ��ϳ� �������� ���ɿ� ���� ��쿡�� �����ڰ� �δ� �մϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��18�� (ȯ��)</STRONG><BR>��. ī������� ���� ���Ű��� ȯ���� ��Ģ������ ī����� ��Ҹ� ���ؼ��� �����մϴ�.<BR>��. �κ�ȯ���� ��� �ش�ȯ�ұݾ� ��ŭ �κ���� �Ǵ� �������� ���·� �ش�ݾ��� ȯ�� �մϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��19�� (��ǰ/��ȯ/ȯ���� ���� ����)</STRONG><BR>��. �����ڴ� ���� �� ȣ�� ��쿡�� �����ڰ� ȯ�� �Ǵ� ��ȯ�� ��û�� �� �����ϴ�.<BR>1) �������� ��å������ ���̾Ͼ� ��ǰ�� ���, �Ѽյ� ���<BR>2) �������� ��� �Ǵ� �Ϻ� �Һ� ���Ͽ� ��ǰ�� ��ġ�� ������ ������ ���<BR>3) �ð��� ����� ���Ͽ� ���ǸŰ� ����� ������ ��ǰ�� ��ġ�� ������ ������ ���<BR>4) ������ ������ ��ǰ�� ������ �Ѽ��� ���<BR>5) ��Ÿ �����ڰ� ȯ�� �Ǵ� ��ȯ�� ��û�� �� ���� �ո����� ������ �ִ� ���.</P>
<P>&nbsp;</P>
<P><STRONG>��20�� (�Ӵ�����Ʈ)</STRONG><BR>��. �Ӵ�����Ʈ�� ����Ʈ���� ���Ǵ� ���Ҽ������� �ֹ������� ��밡���ϸ� 1P�� ����1���� �ǹ̸� ������ ���޵� �Ӵ�����Ʈ�� �絵,�뿩 �� ��� ó�������� �� �� �����ϴ�.<BR>��. ȸ��� ������ ȿ������ �̿� �� ��� ���� ���� ������ ����Ʈ�� �Ϻ� �Ǵ� ���θ� �����Ҽ� ������ �Ӵ�����Ʈ�� ȸ�簡 ���� �Ⱓ�� ���� �ֱ������� �Ҹ��� �� �ֽ��ϴ�.<BR>��. �ο��� �Ӵ�����Ʈ�� �ο��Ϸκ��� 1�Ⱓ ��ȿ�ϸ� ������ 30������ ȸ������ �̸��ϵ����� �����Ǹ� ��ȿ�Ⱓ�� ����� �Ӵ�����Ʈ�� �ڵ������� �Ҹ��ϰ� �˴ϴ�. (�� ���� �Ǹŵ����� ���� �ҵ�Ű� �� �Ӵ�����Ʈ�� ����)<BR>��. ȸ���߿� 1�Ⱓ �ŷ��� ���� ��� �޸�ȸ������ �����Ͽ� ȸ��� �ش� ȸ���� ������ �Ӵ�����Ʈ�� ȸ���ϰ� �˴ϴ�<BR>��. ���Ÿ� ���� ������ �Ӵ�����Ʈ�� �ش� ���Ű� ��ҵ� ��� ȸ�翡 ���� ȯ�� �˴ϴ�.<BR>��. ȸ���� ���� ��� ���� ���� �߻����� ȸ�簡 ȸ������ ��ο��� �Ӵ�����Ʈ�� ȯ�� �ϰ��� �ϴ� ��� ���� �Ӵ�����Ʈ ȯ�� ������ ���� ȸ���� ����Ʈ �ܾ��� ȯ�� ����Ʈ ���� ���� ��쿡�� ȸ��� ������Ҹ� �����Ҽ� ������ ȸ������ ����ȯ������Ʈ ��ŭ �߰� ������ ��û�Ҽ� ������ ȸ���� ȸ���� ��û�� ���� �߰� ������ �Ͽ��� �Ѵ�. <BR>��. ȸ���� ������ ������� �Ӵ�����Ʈ�� ȹ���� ����� Ȯ�ε� ��� ȸ��� ȸ���� ����Ʈ ȸ��,ID���� �� ���� ��ߵ� ��Ÿ ��ġ�� ���� �� �ֽ��ϴ�.<BR>��. ��α׸� ���� �����Ӵ�����Ʈ�� ��Ÿ�ҵ� ��õ¡���� ���� �մϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��21�� (���۱��� �ͼ� �� �̿�����)</STRONG><BR>��. ȸ�簡 �ۼ��� ���۹��� ���� ���۱� ��Ÿ ���������� ȸ�翡 �ͼ��մϴ�.<BR>��. �����ڴ� ����Ʈ�� �̿������ν� ���� ������ ȸ���� ���� �³����� ����, �۽�, ����, ����, ��� ��Ÿ ����� ���Ͽ� ������������ �̿��ϰų� ��3�ڿ��� �̿��ϰ� �Ͽ����� �ȵ˴ϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��22�� (ȸ���� ��å)</STRONG><BR>��. ȸ��� ���ͳ� �̿��� �Ǵ� ȸ���� ��å������ ���� ���� �̿��� ��ֿ� ���Ͽ� å���� ���� �ʽ��ϴ�.<BR>��. ȸ��� �ǿ���ȸ��(ȸ���� ���� ȭ��� ��ũ ������ ����� ����Ʈ�� ��ϴ� ȸ�縦 ���մϴ�.)�� ���������� ��Ǹ� ȸ��� �ǿ���ȸ��� ȸ������ �̷���� �ŷ��� ���Ͽ� å���� ���� �ʽ��ϴ�.<BR>��. ȸ���� �ڽ��� ���������� Ÿ�ο��� ���� �Ǵ� ���������ν� �߻��ϴ� ���ؿ� ���ؼ� ȸ��� ��ü�� å���� ���� �ʽ��ϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��23�� (�����ذ�)</STRONG><BR>��. ȸ��� �����ڰ� �����ϴ� ������ �ǰ��̳� �Ҹ��� �ݿ��ϰ� �� ���ظ� ����ó���ϱ� ���Ͽ� ���غ���ó���ⱸ�� ��ġ?��մϴ�.<BR>��. ȸ��� �����ڷκ��� ����Ǵ� �Ҹ����� �� �ǰ��� �켱������ �� ������ ó���մϴ�. �ٸ�, �ż��� ó���� ����� ��쿡�� �̿��ڿ��� �� ������ ó�������� ��� �뺸�� �帳�ϴ�.<BR>��. ȸ��� �����ڰ��� �߻��� ������ ���ڰŷ��⺻�� ��28�� �� �� ����� ��15���� ���Ͽ� ��ġ�� ���ڰŷ�������������ȸ�� ������ ���� �� �ֽ��ϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��24�� (�ذŹ� �� ���ҹ���)<BR></STRONG>��. �� ����� ȸ��� �̿��� ���� ���� �̿��� �� ȸ�� ��ȣ���� ���￡ ���ؼ��� ���ѹα� ������ ���� �˴ϴ�.<BR>��.�� ���񽺿� �����Ͽ� ȸ��� �̿��� ���̿� ������ �߻��Ͽ� �Ҽ��� ����Ǵ� ��쿡�� �����߾���������� 1�� ���� �������� �մϴ�.</P>
<P>&nbsp;</P>
<P><STRONG>��25�� (��Ÿ����)</STRONG><BR>��. ȸ��� �ʿ��� ��� Ư�� ����(Ȥ�� ���Ϻ�)�� ȸ�� Ȩ�������� ���Ͽ� �̸� �������� �Ͻ��� �Ǵ� ���������� �����ϰų� �ߴ��� �� �ֽ��ϴ�.<BR>��. ȸ��� ȸ���� ������ ����� ���� ���� �� ������� �Ǹ��� �ǹ��� ��3�ڿ��� �絵 �� �� �����ϴ�.<BR>��. �� ����� �����Ͽ� ����� ���� ���ǿ� ���Ͽ� �߰��� �ۼ��� ��༭,������,�뺸�� ��� ȸ���� ��å����, ������ ����, ���� �Ǵ� ��������� ���,��ħ� ���Ͽ� ȸ�簡 ����Ʈ�� ���� ȸ������ �����ϴ� ���뵵 �� ����� �Ϻθ� �����մϴ�.<BR>��. ȸ��Ұ�<BR>1) ȸ��� : ������� ��â��</P>
<P>2) ������ : ���� ������ ���߻굿 711-11</P>
<P>3) ��ǥ�̻� :&nbsp;<BR>4) ����� ��Ϲ�ȣ : 109-82-09997</P>
<P>&nbsp;</P>
<P><BR><STRONG>�� Ģ</STRONG></P>
<P><STRONG><BR>��1�� (��������)<BR></STRONG>��. �� ����� 2012. 3.&nbsp;15 �Ϻ��� ���� �˴ϴ�.</P>
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
      <!-- ��� �� -->
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
      <!-- ���κ�ȣ��å -->
      <table width="730" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="images/join_box_top.gif"></td>
        </tr>
        <tr>
          <td background="images/join_box_bg.gif" style="padding:10px">
            <div id="agree">
              <P>&#039;������� ��â��&#039; �� (���� &#039;ȸ��&#039;��) ������ ���������� �߿���ϸ�, &quot;������Ÿ� �̿����� �� ������ȣ&quot;�� ���� ������ �ؼ��ϰ� �ֽ��ϴ�.<BR>ȸ��� ����������޹�ħ�� ���Ͽ� ���Բ��� �����Ͻô� ���������� ��� �뵵�� ������� �̿�ǰ� ������, ����������ȣ�� ���� ��� ��ġ�� �������� �ִ��� �˷��帳�ϴ�.</P>
<P>ȸ��� ����������޹�ħ�� �����ϴ� ��� ������Ʈ ��������(�Ǵ� ��������)�� ���Ͽ� ������ ���Դϴ�.</P>
<P>&nbsp;�� �� ��ħ�� : 2012 �� 03 �� 15 �� ���� ����˴ϴ�. </P>
<P>&nbsp;</P>
<P><STRONG>�����ϴ� ���������� �׸�<BR></STRONG>ȸ��� ȸ������, ���, ���� ��û ����� ���� �Ʒ��� ���� ���������� �����ϰ� �ֽ��ϴ�.</P>
<P>�� �����׸� : �̸� , ������� , ���� , �޴���ȭ��ȣ , �̸��� , ���� �̿��� , ���� �α� , ��Ű , ���� IP ���� , �������<BR>�� �������� ������� : Ȩ������(ȸ������) </P>
<P>&nbsp;</P>
<P><STRONG>���������� ���� �� �̿����</STRONG></P>
<P>ȸ��� ������ ���������� ������ ������ ���� Ȱ���մϴ�.</P>
<P>�� ���� ������ ���� ��� ���� �� ���� ������ ���� �������<BR>������ ���� , ���� �� ��� ���� , ��ǰ��� �Ǵ� û���� �� �߼� , �����ŷ� ���� ���� �� ���� ���� , ����߽�<BR>�� ȸ�� ����<BR>ȸ���� ���� �̿뿡 ���� ����Ȯ�� , ���� �ĺ� , ���� �ǻ� Ȯ�� , ����Ȯ�� , �Ҹ�ó�� �� �ο�ó�� , �������� ���� </P>
<P>���������� ���� �� �̿�Ⱓ<BR>��Ģ������, �������� ���� �� �̿������ �޼��� �Ŀ��� �ش� ������ ��ü ���� �ı��մϴ�. ��, ��������� ������ ���Ͽ� ������ �ʿ䰡 �ִ� ��� ȸ��� �Ʒ��� ���� ������ɿ��� ���� ������ �Ⱓ ���� ȸ�������� �����մϴ�.</P>
<P>���� �׸� : �̸� , ������� , ���� , �������<BR>���� �ٰ� : �ſ������� �̿� �� ��ȣ�� ���� ����<BR>���� �Ⱓ : 5��</P>
<P>���� �׸� : �޴���ȭ��ȣ , �̸��� , ���� �̿��� , ���� �α� , ��Ű<BR>���� �ٰ� : ���ڻ�ŷ������ �Һ��ں�ȣ�� ���� ����<BR>���� �Ⱓ : 5��</P>
<P>��ݰ��� �� ��ȭ ���� ���޿� ���� ��� : 5�� (���ڻ�ŷ������ �Һ��ں�ȣ�� ���� ����)<BR>�Һ����� �Ҹ� �Ǵ� ����ó���� ���� ��� : 3�� (���ڻ�ŷ������ �Һ��ں�ȣ�� ���� ����)<BR>�ſ������� ����/ó�� �� �̿� � ���� ��� : 3�� (�ſ������� �̿� �� ��ȣ�� ���� ����) </P>
<P>&nbsp;</P>
<P><STRONG>���������� �ı� ���� �� ���</STRONG><BR>ȸ��� ��Ģ������ �������� ���� �� �̿������ �޼��� �Ŀ��� �ش� ������ ��ü���� �ı��մϴ�. �ı����� �� ����� ������ �����ϴ�.</P>
<P>�� �ı�����<BR>ȸ������ ȸ������ ���� ���� �Է��Ͻ� ������ ������ �޼��� �� ������ DB�� �Ű���(������ ��� ������ ������) ���� ��ħ �� ��Ÿ ���� ���ɿ� ���� ������ȣ ������ ����(���� �� �̿�Ⱓ ����) ���� �Ⱓ ����� �� �ı�Ǿ����ϴ�. ���� DB�� �Ű��� ���������� ������ ���� ��찡 �ƴϰ��� �����Ǿ����� �̿��� �ٸ� �������� �̿���� �ʽ��ϴ�. </P>
<P>�� �ı��� <BR>- ������ �������·� ����� ���������� ����� ����� �� ���� ����� ����� ����Ͽ� �����մϴ�. </P>
<P>&nbsp;</P>
<P><STRONG>�������� ����</STRONG><BR>ȸ��� �̿����� ���������� ��Ģ������ �ܺο� �������� �ʽ��ϴ�. �ٸ�, �Ʒ��� ��쿡�� ���ܷ� �մϴ�.<BR>- �̿��ڵ��� ������ ������ ���<BR>- ������ ������ �ǰ��ϰų�, ���� �������� ���ɿ� ������ ������ ����� ���� �������� �䱸�� �ִ� ���</P>
<P>&nbsp;</P>
<P><STRONG>������ ���������� ��Ź<BR></STRONG>ȸ��� ������ ���Ǿ��� ������ ������ �ܺ� ��ü�� ��Ź���� �ʽ��ϴ�. ���� �׷��� �ʿ䰡 ���� ���, ��Ź ����ڿ� ��Ź ���� ���뿡 ���� ���Կ��� �����ϰ� �ʿ��� ��� ���� ���Ǹ� �޵��� �ϰڽ��ϴ�. </P>
<P>�̿��� �� �����븮���� �Ǹ��� �� �����<BR>�̿��� �� ���� �븮���� �������� ��ϵǾ� �ִ� �ڽ� Ȥ�� ���� �� 14�� �̸� �Ƶ��� ���������� ��ȸ�ϰų� ������ �� ������ ���������� ��û�� ���� �ֽ��� ��. <BR>�̿��� Ȥ�� �� 14�� �̸� �Ƶ��� �������� ��ȸ/������ ���ؼ��� ������������ �桯(�Ǵ� ��ȸ������������ ��)�� ��������(����öȸ)�� ���ؼ��� ��ȸ��Ż�𡱸� Ŭ�� �Ͽ� ���� Ȯ�� ������ ��ġ�� �� ���� ����, ���� �Ǵ� Ż�� �����մϴ�. Ȥ�� ������������å���ڿ��� ����, ��ȭ �Ǵ� �̸��Ϸ� �����Ͻø� ��ü���� �� ġ�ϰڽ��ϴ�. <BR>���ϰ� ���������� ������ ���� ������ ��û�Ͻ� ��쿡�� ������ �Ϸ��ϱ� ���� �� ���� ���������� �̿� �Ǵ� �������� �ʽ��ϴ�. ���� �߸��� ���������� ��3�� ���� �̹� ������ ��쿡�� ���� ó������� ��3�ڿ��� ��ü���� �����Ͽ� ������ �̷�������� �ϰڽ��ϴ�. <BR>ȸ��� �̿��� Ȥ�� ���� �븮���� ��û�� ���� ���� �Ǵ� ������ ���������� ��ȸ�� �� �����ϴ� ���������� ���� �� �̿�Ⱓ���� ��õ� �ٿ� ���� ó���ϰ� �� ���� �뵵�� ���� �Ǵ� �̿��� �� ������ ó���ϰ� �ֽ��ϴ�. </P>
<P>&nbsp;</P>
<P><STRONG>�������� �ڵ����� ��ġ�� ��ġ,� �� �� �źο� ���� ����</STRONG><BR>��Ű �� ���ͳ� ���� �̿� �� �ڵ� �����Ǵ� ���������� �����ϴ� ��ġ�� ����� �ʽ��ϴ�.<BR></P>
<P><BR><STRONG>���������� ���� �ο�����</STRONG></P>
<P>ȸ��� ���� ���������� ��ȣ�ϰ� ���������� ������ �Ҹ��� ó���ϱ� ���Ͽ� �Ʒ��� ���� ���� �μ� �� ������������å���ڸ� �����ϰ� �ֽ��ϴ�.</P>
<P>�����񽺴�� �μ� : </P>
<P>����� : <BR>��ȭ��ȣ : </P>
<P>�̸��� : </P>
<P>���ϲ����� ȸ���� ���񽺸� �̿��Ͻø� �߻��ϴ� ��� ����������ȣ ���� �ο��� ������������å���� Ȥ�� ���μ��� �Ű��Ͻ� �� �ֽ��ϴ�. ȸ��� �̿��ڵ��� �Ű���׿� ���� �ż��ϰ� ����� �亯�� �帱 ���Դϴ�</P>
<P>��Ÿ ��������ħ�ؿ� ���� �Ű� ����� �ʿ��Ͻ� ��쿡�� �Ʒ� ����� �����Ͻñ� �ٶ��ϴ�.</P>
<P><BR>1.���κ�����������ȸ (<A href=&#039;&quot;http://www.1336.or.kr/1336&quot;&#039;>www.1336.or.kr/1336</A>)<BR>2.������ȣ��ũ��������ȸ (<A href=&#039;&quot;http://www.eprivacy.or.kr/02-580-0533~4&quot;&#039;>www.eprivacy.or.kr/02-580-0533~4</A>)<BR>3.�����û ���ͳݹ��˼��缾�� (<A href=&#039;&quot;http://icic.sppo.go.kr/02-3480-3600&quot;&#039;>http://icic.sppo.go.kr/02-3480-3600</A>)<BR>4.����û ���̹��׷��������� (<A href=&#039;&quot;http://www.ctrc.go.kr/02-392-0330&quot;&#039;>www.ctrc.go.kr/02-392-0330</A>)<BR></P>            </div>
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
      <!-- ������å �� -->
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
        <td>���:������� ���ǿ� �� �ּ�:���� ������ ���߻굿 711-11 �� ��ǥ��:�ѻ�ȣ  �� ����ڵ�Ϲ�ȣ:109-82-09997<br />
          ��ǥ��ȭ:02-2662-1803 ��  �ѽ�:02-2661-2568 <br />
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
     <li><a href="http://www.wvchoir.or.kr/index/online/online_01.php?type=1" target="_self">�Դܽ�û</a></li>
     <li><a href="http://www.wvchoir.or.kr/index/gallery_01.php" target="_self">���ǰ����</a></li>
     <li><a href="http://www.wvchoir.or.kr/BlueAD/board.php?bbs_id=wv_gallery02" target="_self">���󰶷���</a></li>
     <li><a href="http://www.wvchoir.or.kr/BlueAD/board.php?bbs_id=wv_gallery03" target="_self">����������</a></li>
     <li><a href="http://www.wvchoir.or.kr/BlueAD/board.php?bbs_id=wv_webzine" target="_self">�������</a></li>
     <li><a href="http://www.wvchoirfestival.or.kr/" target="_blank">��������â��</a></li>
     <li><a href="http://wvchoir01.window.gabiauser.com" target="_blank">������</a></li>

     </ul>
</div>
    <div class="left_sp">
		<button id="toggle_btn_left" class="off">��۹�ư</button>
	</div>

</div>
</div>
<script>
     	//��Űüũ
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
     
        
	//��۸޴�
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
