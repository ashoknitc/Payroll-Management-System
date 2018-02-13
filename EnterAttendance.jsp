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
	document.EnterAttendance.action="SaveAttendance.jsp";
	document.EnterAttendance.submit();
	}
	</script>
	</head>
	<%@ include file="Header.jsp" %>
<form method="POST" action="" name="EnterAttendance" onsubmit="return validate();">        
<head>
<title>Employee Attendance Details</title>
</head>
<body bgcolor="#FFFFCC">
<font color="#FFFFFF"></font> 
<center>
    <h1>PAY ROLL SYSTEM</h1>
    <hr>
    <h2> <font color="#800000"></font>Employee Attendance Details</h2> 
    <table bgcolor="white">
<tr>
<td></td>
        <td><font color="#800000">&nbsp;</font><font color="#800000"><b>Employee Id</b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="text" name="empid" id="empid" ></td>
</tr>


<tr> <td></td>
		<td><font color="#800000">&nbsp;</font><font color="#800000"><b>Month</b></font><font color="#800000" size="">&nbsp;</font></td>
		<%@ page import="java.io.*,java.util.*" %>
		<%@ page import="javax.servlet.*,java.text.*" %>
		<%
			Date dNow = new Date( );
			SimpleDateFormat ft1 = new SimpleDateFormat ("M");
			int da=Integer.parseInt(ft1.format(dNow));
			SimpleDateFormat ft = new SimpleDateFormat ("yyyy");
			int ya=Integer.parseInt(ft.format(dNow));
		%>
        <td>
			<select name="month" id="month">
				<option>
					<%=da%>
				</option>
			</select>
		</td>
</tr>
<tr>
		<td></td>
		<td><font color="#800000">&nbsp;</font><font color="#800000"><b>year</b></font><font color="#800000" size="">&nbsp;</font></td>
		<td>
			<select name="year" id="year">
				<option>
					<%=ya%>
				</option>
			</select>
		</td>
</tr>
<tr>
<td></td>
</tr>

<tr>
<td></td>
<td><font color="#800000" size=""><b>No of Absent</b></font></td>
<td><input type="text" name="aday" id="aday"></td>
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
<%@ include file="Footer.jsp" %>