<!--
function onlyNumber(str,field) {
  if(isNaN(str)) { 
    alert("���ڸ� �Է� �����մϴ�."); 
    field.value = "";
    field.focus();
    return false; 
  } 
} 
function textBox_chk(field,msg) {
  var obj=document.getElementsByName(field)[0];
  if(obj.value=="") {  
    alert(msg+' �Է��� �ּ���');
    obj.focus();
    return false;
  }
}
function radioBtn_chk(field,msg) {
	var obj=document.getElementsByName;
	var count=0; 
	for(var i=0; i<obj(field).length; i++) {
    if(obj(field)[i].checked) {      
      count++;
      break;
    }
  }
  if(count==0) {
    alert(msg+' ������ �ּ���');
    obj(field)[0].focus()
    return false;
  }
}
function selectBox_chk(field,msg) {
	var obj=document.getElementsByName(field)[0];
  if(obj.selectedIndex==0) {      
    alert(msg+' ������ �ּ���');
    obj.focus();
    return false;
  }
}
-->