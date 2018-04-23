<?
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_db.php";
$db = new DB();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/fun/function.php";

$db->Query("select * from BlueAD_member where member_id='$member_id'");
$total = $db->Fetch();

if($total=="0") {  
  echo"
       <script>         
         if(confirm('[$member_id]를 등록 하시겠습니까?')) {
           parent.form.real_id.value='$member_id'; 
           parent.form.dup_id.value='ok'; 
           parent.form.member_id.disabled=true; 
         } else {
           parent.form.member_id.disabled=false;
           parent.form.real_id.value=''; 
           parent.form.dup_id.value='';
           parent.form.member_id.value='';
           parent.form.member_id.focus();
         }
       </script>
      ";  
} else {
  echo"
       <script>
         parent.form.real_id.value=''; 
         parent.form.dup_id.value='';
         alert('[$member_id]는 사용 중입니다\\n\\n다른 아이디를 입력하세요.');
       </script>
      ";
}
?>