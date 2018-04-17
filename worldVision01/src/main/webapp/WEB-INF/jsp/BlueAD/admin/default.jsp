<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html>
<head>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/BlueAD/admin/div.css">
<title>Example of CCS-simulated framed page</title>
</head>

<body>

<div id="header">
<jsp:include page="../top.jsp"/>
</div>

<div id="navigation">
<jsp:include page="../left.jsp"/>
</div>

<div id="content">
<jsp:include page="../../member/list.jsp"/>
</div>

</body>
</html>