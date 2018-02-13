<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Deletion Of Deduction Master</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
	<script language="javascript">
	function submits()
	{
	document.HDelDeductionMaster.action="JDelDeductionMaster.jsp";
	document.HDelDeductionMaster.submit();
	}
	function backs()
	{
	document.HDelDeductionMaster.action="HDeductionMaster.jsp";
	document.HDelDeductionMaster.submit();
	}
	
	</script>
</head>
<%@ include file="AHeader.jsp"%>
<form method="POST" action="" name="HDelDeductionMaster" onsubmit="return validate();">
<center>
<h1>PAYROLL SYSTEM</h1>
<hr>
<br>
<h2>Delete Deductions Details</h2>
<table bgcolor="white">
<tr>
<td>Employee Code</td><td>
<%@ include file="FetchEmpId.jsp"%></td>
</tr>
</table>
<br>
<table>
<tr>
<td><input type="submit" name="submit" value="Delete" onClick="submits()"></td>

<td><input type="submit" name="back" value="Back" onClick="backs()"</td>
</tr>
</table>
</center>
</form>
<%@ include file="AFooter.jsp"%>