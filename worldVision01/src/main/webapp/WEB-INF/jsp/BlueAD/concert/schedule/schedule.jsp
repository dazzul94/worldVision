<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/div.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/style.css">
<link rel="stylesheet" media="screen" href="${contextPath}/css/BlueAD/lightbox/lightbox.css" type="text/css">
<link rel='stylesheet' type='text/css' href='${contextPath}/css/BlueAD/admin/fullcalendar.css' />
<script type='text/javascript' src='${contextPath}/js/BlueAD/calendar/jquery.js'></script>
<script type='text/javascript' src='${contextPath}/js/BlueAD/calendar/jquery-ui-custom.js'></script>
<script type='text/javascript' src='${contextPath}/js/BlueAD/calendar/fullcalendar.min.js'></script>
<style type='text/css'>

	/* body {
		margin-top: 40px;
		text-align: center;
		font-size: 14px;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		} */

	#calendar {
		/* width: 900px; */
		height: 792px;
		margin: 0 auto;
		}

</style>

</head>

<body>
<div id="header">
<jsp:include page="../../top.jsp"/>
</div>
<div id="navigation">
<jsp:include page="../concert_left.jsp"/>
</div>
<div id="content">
<c:forEach items="${list}" var="online" varStatus="status"></c:forEach>
<div id='calendar'></div>
</div>
<script type='text/javascript'>

	$(document).ready(function() {
	
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		
		var bluead_scheduleList = [];
		<c:forEach items="${list}" var="bluead_schedule">
		  var arr = new Object;

		  var y=("<c:out value="${bluead_schedule.y}" />");
		  var m=("<c:out value="${bluead_schedule.m}" />");
		  var d=("<c:out value="${bluead_schedule.d}" />");
		  arr.title=("<c:out value="${bluead_schedule.subject}" />");
		  arr.start= new Date(y,m,d);
		  arr.end=new Date(y,m,d);
		  /* arr.push("<c:out value="${bluead_schedule.no}" />");
		  arr.push("<c:out value="${bluead_schedule.color}" />");
		  arr.push("<c:out value="${bluead_schedule.content}" />"); */

		  bluead_scheduleList.push(arr);
		</c:forEach>
		/* for (var i = 0; i < bluead_scheduleList.length; i ++) {
		console.log(bluead_scheduleList[i]);
		} */
		var jsonInfo = JSON.stringify(bluead_scheduleList);
		console.log(jsonInfo);
		console.log(jsonInfo.replace(/\\/g,'\\'));
		
		$('#calendar').fullCalendar({
			editable: true,
			events: jsonInfo
				/* {
					title: 'All Day Event',
					start: new Date(y, m, 1)
				},
				{
					title: 'Long Event',
					start: new Date(y, m, d-5),
					end: new Date(y, m, d-2)
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: new Date(y, m, d-3, 16, 0),
					allDay: false
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: new Date(y, m, d+4, 16, 0),
					allDay: false
				},
				{
					title: 'Meeting',
					start: new Date(y, m, d, 10, 30),
					allDay: false
				},
				{
					title: 'Lunch',
					start: new Date(y, m, d, 12, 0),
					end: new Date(y, m, d, 14, 0),
					allDay: false
				},
				{
					title: 'Birthday Party',
					start: new Date(y, m, d+1, 19, 0),
					end: new Date(y, m, d+1, 22, 30),
					allDay: false
				},
				{
					title: 'Click for Google',
					start: new Date(y, m, 28),
					end: new Date(y, m, 29),
					url: 'http://google.com/'
				} */
			
		});
		
	});

</script>
</body>
</html>
