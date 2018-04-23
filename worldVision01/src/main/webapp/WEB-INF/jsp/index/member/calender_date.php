<script language="JScript">
<!-- Begin  //IE 4.0 버전 이하의 브라우저는 이 태그를 BODY 태그에 넣으세요
//****************************************************************************
// PopCalendar 4.1, Emailware(please mail&commend me if u like it)
// Originally coded by Liming(Victor) Weng, email:victorwon@netease.com
// Release date: 2000.5.9
// Anyone may modify it to satify his needs, but please leave this comment ahead.
//****************************************************************************

var gdCtrl = new Object();
var gcGray = "#808080";
var gcToggle = "#00ffff";
var gcBG = "#f5f5f5";

var gdCurDate = new Date();
var giYear = gdCurDate.getFullYear();
var giMonth = gdCurDate.getMonth()+1;
var giDay = gdCurDate.getDate();
var VicPopCal = new Object();

//****************************************************************************
// Param: popCtrl is the widget beyond which you want this calendar to appear;
//        dateCtrl is the widget into which you want to put the selected date;
//        popCal is the widget to display the calendar;
// i.e.: <input type="text" name="dc" style="text-align:center" readonly><INPUT type="button" value="V" onclick="fPopCalendar(dc,dc,popCal);return false">
//****************************************************************************
function fPopCalendar(popCtrl, dateCtrl, popCal){
  parent.event.cancelBubble=true;
  VicPopCal = popCal;
  gdCtrl = dateCtrl;
  fSetYearMon(giYear, giMonth);
  var point = fGetXY(popCtrl);
  with (VicPopCal.style) {
          left = point.x;
        top  = point.y+popCtrl.offsetHeight+1;
        visibility = 'visible';
  }
  VicPopCal.focus();
  // in order to make compatible with IE4.x , here I cut two line below off.
  // VicPopCal.all("popFrame").width=document.all("popTable").offsetWidth;
  // VicPopCal.all("popFrame").height=document.all("popTable").offsetHeight;
  // if u only target on IE5.x, uncommented them and delete the width&height prop in <IFrame> tag
  // thus you will find the 3rd para in fDrawCal() now works perfectly.
}

function fSetDate(iYear, iMonth, iDay){
//  gdCtrl.value = iMonth+"-"+iDay+"-"+iYear; //Here, you could modify the locale as you need !!!!
//  alert(iYear);
//  alert(iMonth);
//  alert(iDay);
  tempdate = new String(iYear);
  if (parseInt(iMonth) < 10)
  {
     tempdate = tempdate + "-0" + iMonth;
  }
  else
  {
     tempdate = tempdate + "-"+ iMonth;
  }

  if (parseInt(iDay) < 10)
  {
     tempdate = tempdate + "-0" + iDay;
  }
  else
  {
     tempdate = tempdate + "-"+ iDay;
  }

  gdCtrl.value = tempdate;
  gdCtrl.focus();
  VicPopCal.style.visibility = "hidden";
}

function fSetSelected(aCell){
  var iOffset = 0;
  var iYear = parseInt(tbSelYear.value);
  var iMonth = parseInt(tbSelMonth.value);

  aCell.bgColor = gcBG;
  with (aCell.children["cellText"]){
          var iDay = parseInt(innerText);
          if (color==gcGray)
                iOffset = (Victor<10)?-1:1;
        iMonth += iOffset;
        if (iMonth<1) {
                iYear--;
                iMonth = 12;
        }else if (iMonth>12){
                iYear++;
                iMonth = 1;
        }
  }
  fSetDate(iYear, iMonth, iDay);
}

function Point(iX, iY){
        this.x = iX;
        this.y = iY;
}

function fBuildCal(iYear, iMonth) {
  var aMonth=new Array();
  for(i=1;i<7;i++)
          aMonth[i]=new Array(i);

  var dCalDate=new Date(iYear, iMonth-1, 1);
  var iDayOfFirst=dCalDate.getDay();
  var iDaysInMonth=new Date(iYear, iMonth, 0).getDate();
  var iOffsetLast=new Date(iYear, iMonth-1, 0).getDate()-iDayOfFirst+1;
  var iDate = 1;
  var iNext = 1;

  for (d = 0; d < 7; d++)
        aMonth[1][d] = (d<iDayOfFirst)?-(iOffsetLast+d):iDate++;
  for (w = 2; w < 7; w++)
          for (d = 0; d < 7; d++)
                aMonth[w][d] = (iDate<=iDaysInMonth)?iDate++:-(iNext++);
  return aMonth;
}

function fDrawCal(iYear, iMonth, iCellWidth, iDateTextSize) {
//  var WeekDay = new Array("Su","Mo","Tu","We","Th","Fr","Sa");
  var WeekDay = new Array("일","월","화","수","목","금","토");
  var styleTD = " bgcolor='"+gcBG+"' width='"+iCellWidth+"' bordercolor='"+gcBG+"' valign='middle' align='center'  style='font:bold "+iDateTextSize+" Courier;";            //Coded by Liming Weng(Victor Won)  email:victorwon@netease.com

  with (document) {
        write("<tr>");
        for(i=0; i<7; i++)
                write("<td "+styleTD+"color:#990099' >" + WeekDay[i] + "</td>");
        write("</tr>");

          for (w = 1; w < 7; w++) {
                write("<tr>");
                for (d = 0; d < 7; d++) {
                        write("<td id=calCell "+styleTD+"cursor:hand;' onMouseOver='this.bgColor=gcToggle' onMouseOut='this.bgColor=gcBG' onclick='fSetSelected(this)'>");
                        write("<font id=cellText Victor='Liming Weng'> </font>");
                        write("</td>")
                }
                write("</tr>");
        }
  }
}

function fUpdateCal(iYear, iMonth) {
  myMonth = fBuildCal(iYear, iMonth);
  var i = 0;
  for (w = 0; w < 6; w++)
        for (d = 0; d < 7; d++)
                with (cellText[(7*w)+d]) {
                        Victor = i++;
                        if (myMonth[w+1][d]<0) {
                                color = gcGray;
                                innerText = -myMonth[w+1][d];
                        }else{
                                color = ((d==0)||(d==6))?"#ed1c24":"black";
                                innerText = myMonth[w+1][d];
                        }
                }
}

function fSetYearMon(iYear, iMon){
  tbSelMonth.options[iMon-1].selected = true;
  for (i = 0; i < tbSelYear.length; i++)
        if (tbSelYear.options[i].value == iYear)
                tbSelYear.options[i].selected = true;
  fUpdateCal(iYear, iMon);
}

function fPrevMonth(){
  var iMon = tbSelMonth.value;
  var iYear = tbSelYear.value;

  if (--iMon<1) {
          iMon = 12;
          iYear--;
  }

  fSetYearMon(iYear, iMon);
}

function fNextMonth(){
  var iMon = tbSelMonth.value;
  var iYear = tbSelYear.value;

  if (++iMon>12) {
          iMon = 1;
          iYear++;
  }

  fSetYearMon(iYear, iMon);
}

function fGetXY(aTag){
  var oTmp = aTag;
  var pt = new Point(0,0);
  do {
          pt.x += oTmp.offsetLeft;
          pt.y += oTmp.offsetTop;
          oTmp = oTmp.offsetParent;
  } while(oTmp.tagName!="BODY");
  return pt;
}

//var gMonths = new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
var gMonths = new Array("1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월");

with (document) {
write("<table id='popTable' border='0' bgcolor='#7094d1' cellspacing='0' cellpadding='0'>");
write("<TR>");
write("<td height='30' valign='middle' align='center'><input type='button' name='PrevMonth' value='<' style='height:20;width:20;FONT:16 Fixedsys' onClick='fPrevMonth()'>");
write(" <SELECT name='tbSelYear' style='font-size:9pt' onChange='fUpdateCal(tbSelYear.value, tbSelMonth.value)' Victor='Won'>");
for(i=2015;i>1918;i--)
        write("<OPTION value='"+i+"'>"+i+"</OPTION>");
write("</SELECT>");
write(" <select name='tbSelMonth' style='font-size:9pt' onChange='fUpdateCal(tbSelYear.value, tbSelMonth.value)' Victor='Won'>");
for (i=0; i<12; i++)
        write("<option value='"+(i+1)+"'>"+gMonths[i]+"</option>");
write("</SELECT>");
write(" <input type='button' name='PrevMonth' value='>' style='height:20;width:20;FONT:16 Fixedsys' onclick='fNextMonth()'>");
write("</td>");
write("</TR><TR>");
write("<td align='center'>");
write("<DIV style='background-color:#7094d1;'><table width='100%' border='0' cellpadding='2'>");
fDrawCal(giYear, giMonth, 19, 12);
write("</table></DIV>");
write("</td>");
write("</TR><TR><TD align='center'>");
write("<font style='cursor:hand;font:12 Fixedsys' onclick='fSetDate(giYear,giMonth,giDay)' onMouseOver='this.style.color=gcToggle' onMouseOut='this.style.color=0'>Today:  "+gMonths[giMonth-1]+" "+giDay+"일 "+giYear+"</font>");
write("</TD></TR>");write("</TD></TR>");
write("</TABLE>");
}
// End -- Coded by Liming Weng, email:victorwon@netease.com -->
</script>
