<?
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_db.php";
$db = new DB();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/fun/function.php";

$db->Query("select * from BlueAD_member where member_reg_no1='$member_register1' and member_reg_no2='$member_register2'");
$total = $db->Fetch();

if($total=="0") {  
  $year = substr($member_register1,0,1);
  $month = substr($member_register2,2,2);
  $day = substr($member_register1,4,2);
  if($year == 0) {
    $year = "20".substr($member_register1,0,2);
  }
  else {
    $year = "19".substr($member_register1,0,2);
  }
  echo"
       <script>
         if(confirm('[$member_register1 - $member_register2]를 등록 하시겠습니까?')) {
           parent.form.real_member_register1.value='$member_register1'; 
           parent.form.real_member_register2.value='$member_register2'; 
           parent.form.dup_jumin.value='ok';
           parent.form.member_register1.disabled=true; 
           parent.form.member_register2.disabled=true;
         } else {
           parent.form.member_register1.disabled=false; 
           parent.form.member_register2.disabled=false;
           parent.form.real_member_register1.value=''; 
           parent.form.real_member_register2.value=''; 
           parent.form.dup_jumin.value='';
           parent.form.member_register1.value=''; 
           parent.form.member_register2.value='';
           parent.form.member_register1.focus();
         }  
       </script>
      ";  
} else {
  echo"
       <script>
         parent.form.real_member_register1.value=''; 
         parent.form.real_member_register2.value=''; 
         parent.form.dup_jumin.value=''; 
         alert('이미 등록된 주민등록 번호 입니다.\\n\\n확인 하신후 문의 사항은 관리자에게 연락 바랍니다.');
       </script>
      ";
}
?>