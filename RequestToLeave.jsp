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
	document.RequestToTransfer.action="SaveRequest.jsp";
	document.RequestToTransfer.submit();
	}
	</script>
	</head>
<%@ include file="EHeader.jsp"%>
	<form method="POST" action="SaveLeaveRequest.jsp" name="SaveLeaveRequest" onsubmit="return validate();">
        
<head>
<title>Employee Attendance Details</title>
</head>
<body bgcolor="#FFFFCC">
<font color="#FFFFFF"></font> 
<center>
    <h1>PAY ROLL SYSTEM</h1>
    <hr>
    <h2> <font color="#800000"></font>Employee Leave Details</h2> 
    <table bgcolor="white">
<tr>
<td></td>
        <td><font color="#800000"><b>Employee Id</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><%@ include file="FetchEmpId.jsp" %></td>
<td></td>
</tr>
<tr>
<td></td>
        <td><font color="#800000"><b>Leave Type</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td>
			<select id="leavetype" name="leavetype">
				<option>
					Casual Leave
				</option>
				<option>
					Sick Leave
				</option>
				<option>
					Others 
				</option>
			</select>
		</td>
<td></td>
</tr>

<tr> 
        <td><label><font color="#CC99FF"><strong>12-jan-1999</strong></font></label></td>
		<td><font color="#800000"><b>From Date</b></font></td>
        <td><input type="text" id="dat" name="dat" required="required"></td>
		
<td></td>
</tr>

<tr> 
        <td><label><font color="#CC99FF"><strong>12-jan-1999</strong></font></label></td>
		<td><font color="#800000"><b>To Date</b></font></td>
        <td><input type="text" id="todat" name="todat" required="required"></td>
		
<td></td>
</tr>
</table>
</br>
<center>
<table>
 <tr>
    <td><input type="submit" name="save" value="Save" onClick="saving()"></td>
	<td><input type="reset" name="reset" value="Reset"></td>
 </tr>
</table>
</center>
</center>
        </form>
<%@ include file="EFooter.jsp" %>								