<?
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/lib/class_db.php";
$db = new DB();
include $_SERVER['DOCUMENT_ROOT']."/BlueAD/fun/function.php";

$db->Query("select * from BlueAD_member where member_nick='$member_nick'");
$total = $db->Fetch();

if($total=="0") {  
  echo"
       <script>         
         if(confirm('[$member_nick]�� ��� �Ͻðڽ��ϱ�?')) {
           parent.form.real_nick.value='$member_nick'; 
           parent.form.dup_nick.value='ok'; 
           parent.form.member_nick.disabled=true; 
         } else {
           parent.form.member_nick.disabled=false;
           parent.form.real_nick.value=''; 
           parent.form.dup_nick.value='';
           parent.form.member_nick.value='';
           parent.form.member_nick.focus();
         }
       </script>
      ";  
} else {
  echo"
       <script>
         parent.form.real_nick.value=''; 
         parent.form.dup_nick.value='';
         alert('[$member_nick]�� ��� ���Դϴ�\\n\\n�ٸ� �г����� �Է��ϼ���.');
       </script>
      ";
}
?>