<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Deduction Master Form</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
	<script language="javascript">

	function saving()
	{
	document.HDeductionMaster.action="JDeductionMaster.jsp";
	document.HDeductionMaster.submit();
	}
	function deleted()
	{
	document.HDeductionMaster.action="HDelDeductionMaster.jsp";
	document.HDeductionMaster.submit();
	}
	function addnew()
	{
	document.HDeductionMaster.action="HDeductionMaster.jsp";
	document.HDeductionMaster.submit();
	}
	</script>
</head>
<%@ include file="AHeader.jsp"%>
<form method="POST" action="" name="HDeductionMaster" onsubmit="return validate();">
<center>
<h1>PAYROLL SYSTEM</h1>
<hr>
<br>
<h2>Employee Deduction Details</h2>
<table bgcolor="white">
<tr>
<td>Year</td><td><input type="text" name="year"></td>
</tr>
<tr>
<td>Month</td><td>
				<select name="month" id="month">
				<option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option>
				<option>7</option><option>8</option><option>9</option><option>10</option><option>11</option><option>12</option>
				</select>
			</td>
</tr>

<tr>
<td>Employee Code</td><td><%@ include file="FetchEmpId.jsp" %></td>
<td></td>
</tr>
<tr>
<td>House Rent</td><td><input type="text" name="oe1"></td>
</tr><tr>
<td>Loans</td><td><input type="text" name="oe2"></td>
</tr>

<tr>
<td>Income Tax</td><td><input type="text" name="it"></td>
</tr>
<tr>
<td>GPF</td><td><input type="text" name="od1"></td>
</tr>

<tr>
<td>PLI</td><td><input type="text" name="od2"></td>
</tr>
<tr>
<td>Others</td><td><input type="text" name="od3"></td>
</tr>
</table>
<br>
<table>
<tr>
<td><input type="submit" name="submit" value="Save" onClick="saving()"></td>
<td><input type="submit" name="submit" value="Delete" onClick="deleted()"></td>
<td><input type="submit" name="submit" value="AddNew" onClick="addnew()"></td>
<td><input type="reset" name="reset" value="Reset"></td>
</tr>
</table>
</center>
</form>
<%@ include file="AFooter.jsp"%>