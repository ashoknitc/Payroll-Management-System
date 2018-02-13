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
	document.ChangeAdminPassword.action="ChangeAdminPwdPwd.jsp";
	document.ChangeAdminPassword.submit();
	}
	</script>
	</head>
<%@ include file="AHeader.jsp"%>								
<form method="POST" action="ResetForgetPwd.jsp" name="ChangeAdminPwd" onsubmit="return validate();">
        
<head>
<title>Employee Personal Master</title>
</head>
<body bgcolor="#FFFFCC">
<font color="#FFFFFF"></font> 
<center>
    <h1>PAY ROLL SYSTEM</h1>
    <hr>
    <h2> <font color="#800000"></font>RESET EMPLOYEE PASSWORD</h2> 
    <table bgcolor="white">
<tr>
<td></td>
        <td><font color="#800000"><b><b>Employee ID</b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;&nbsp;</font></td>
        <td><%@ include file="FetchEmployeeId.jsp" %></td></td>
<td></td>
</tr>
<tr>
<td></td>
        <td><font color="#800000"><b>NEW PASSWORD</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="password" id="newpwd" name="newpwd" required="required"></td>
<td></td>
</tr>
<tr>
<td></td>
        <td><font color="#800000"><b>CONFORM PASSWORD</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="password" id="cnewpwd" name="cnewpwd" required="required"></td>
<td></td>
</tr>


</table>
</br>
<center>
<table>
 <tr>
    <td><input type="submit" name="save" value="RESET Password" onClick="saving()"></td>
	<td><input type="reset" name="reset" value="Reset"></td>
 </tr>
</table>
</center>
</center>
        </form>
<%@ include file="AFooter.jsp"%>