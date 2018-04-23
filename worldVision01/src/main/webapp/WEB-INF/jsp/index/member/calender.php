<?
session_start();

include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_db.php";
$db = new DB();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/define.php";
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/fun/function.php";

if(!$month || !$year) { $year = date(Y,time()); $month = date(n,time()); }

if($month == 1) { $past_m = 12; $past_y = $year - 1; }
else            { $past_m = $month - 1; $past_y = $year; }

if($month == 12) { $next_m = 1; $next_y = $year + 1; }
else             { $next_m = $month + 1; $next_y = $year; }
?>
<script language="javascript">
function fncSend(title){		
	if(title!=undefined){		
		parent.document.getElementById("div_msg").style.display = "";
		parent.document.getElementById("div_contents").innerHTML = title;
	}else{
		parent.document.getElementById("div_msg").style.display = "none";
		parent.document.getElementById("div_contents").innerHTML = "";
	}
	//   parent.m_xy(title,content);    
}
</script>
<link href="/index/include/style.css" rel="stylesheet" type="text/css">
<body align="top" leftmargin="0" topmargin="0">
<table width="185" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="70" valign="top"><img src="images/in_sca01.gif" width="70" height="15" /></td>
    <td width="39" align="right" valign="top"><a href="<?= $PHP_SELF ?>?year=<?=$past_y?>&month=<?=$past_m?>"><img src="images/in_sca08.gif" width="11" height="15" /></a></td>
    <td width="50" valign="top" align="center"><?=$month?>¿ù</td>
    <td width="11" valign="top"><a href="<?= $PHP_SELF ?>?year=<?=$next_y?>&month=<?=$next_m?>"><img src="images/in_sca09.gif" width="11" height="15" /></a></td>
    <td width="15" valign="top">&nbsp;</td>
  </tr>                
</table>
<table width="185" border="0" cellspacing="0" cellpadding="0">
  <tr>
	<td colspan="3" valign="top"><img src="images/in_sca02.gif" width="185" height="16" /></td>
  </tr>
  <tr>
	<td width="13" height="80" valign="top" background="images/in_sca03.gif">&nbsp;</td>
	<td width="157" height="105" align="center" valign="top" background="images/in_sca06.gif" style="background-repeat:repeat-x">
	<table width="154" height="15" border="0" cellpadding="0" cellspacing="0">	
	  <tr>
		<td colspan="7"><img src="images/in_sca07.gif" width="154" height="13" /></td>
	  </tr>					  
<?
	$fday=date(w,mktime(0, 0, 0, $month, 1, $year));
	for($i = 0; $i < $fday; $i++) {
	  echo "<td width=\"22\" align='center'>&nbsp;</td>\n";
	}
	$j=1;

	while(date(n, mktime(0, 0, 0, $month, $j, $year)) == $month){
	  $yoil = date("w", strtotime("$year-$month-$j"));
	  if($yoil == "0")      $y_color = "#FF3300";
	  else if($yoil == "6") $y_color = "#0066FF";
	  else                  $y_color = "#666666";
	  if($i == 7){
		echo "</tr><tr style='line-height:16px;font-size:9px;' align=\"center\" coloer='#FFFFFF'>";
		$i= 0;
	  }
	      $db->Query("SELECT * FROM BlueAD_schedule WHERE y = '$year' AND m = '$month' AND d = '$j' ORDER BY no ASC limit 1");          
		  $row = $db->Fetch();		
          if($row){
				?><td width="22" align="center" bgcolor="#FFE9A6" style="color:<?= $y_color ?>"><a onClick="parent.location.href('/index/event.php?year=<?=$year?>&month=<?=$month?>')" style="cursor:pointer" onMouseOver="javascript:fncSend('<?=$row[subject]?>');" onMouseOut="fncSend();"><?= $j ?></a></td><?			
		  }else{
			  ?><td width="22" align="center" style="color:<?= $y_color ?>"><?= $j ?></td><?
		  }
	  $j++;
	  $i++;
	}
	while($i != 7) {
	  echo "<td width=\"22\" align=\"center\"></td>\n";
	  $i++;
	}
	$db->Close();
	?>
	</table></td>
	<td width="15" height="0" valign="top" background="images/in_sca04.gif">&nbsp;</td>
  </tr>
  <tr>
	<td colspan="3" valign="top"><img src="images/in_sca05.gif" width="185" height="9" /></td>
  </tr>
</table>
</body>
<div id="div_cal" style="display:none;"></div>