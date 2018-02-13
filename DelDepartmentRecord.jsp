<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Deletion Employee Master</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
	<script language="javascript">
	</script>
	</head>
<%@ include file="AHeader.jsp"%>
	<form method="POST" action="JDelDepartmentRecord.jsp" name="DelDepartmentRecord" onsubmit="return validate();">    
<head>
<title>Employee Personal Master</title>
</head>
<body bgcolor="#FFFFCC">
<font color="#FFFFFF"></font> 
<center>
    <h1>PAY ROLL SYSTEM</h1>
    <hr>
    <h2> <font color="#800000"></font>Employee Personal Master</h2> 
    <table bgcolor="white">
<tr>
<td></td>
        <td><font color="#800000">&nbsp;</font><font color="#800000"><b>Department Name</b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><%@ include file="FetchDepartmentId.jsp" %></td>
<td></td>
</tr>
</table>
</br>
<center>
<table>
 <tr>
    <td><a href="JDepartmentWiseReport.jsp"><input type="button" name="Back" value="Back"></a></td>
	<td><input type="submit" name="save" value="Delete"></td>
 </tr>
</table>
</center>
</center>
        </form>
<%@ include file="AFooter.jsp"%>