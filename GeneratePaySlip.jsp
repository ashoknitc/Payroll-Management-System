<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Employee Master Form</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
	<script language="javascript">
	function saving()
	{
	document.GeneratePaySlip.action="PaySlip.jsp";
	document.GeneratePaySlip.submit();
	}
	</script>
	</head>
	<%@ include file="Header.jsp" %>
<form method="POST" action="" name="GeneratePaySlip" onsubmit="return validate();">        
<head>
<title>Employee Payment Details</title>
</head>
<body bgcolor="#FFFFCC">
<font color="#FFFFFF"></font> 
<center>
    <h1>PAY ROLL SYSTEM</h1>
    <hr>
    <h2> <font color="#800000"></font>Generate Employee Payment Details</h2> 
    <table bgcolor="white">
<tr>
<td></td>
        <td><font color="#800000">&nbsp;</font><font color="#800000"><b>Employee Id</b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="text" name="empid" id="empid" </td>
</tr>
</table>
</br>
<center>
<table>
 <tr>
    <td><input type="submit" name="save" value="Generate Payment " onClick="saving()"></td>
 </tr>
</table>
</center>
</center>
        </form>
<%@ include file="Footer.jsp" %>