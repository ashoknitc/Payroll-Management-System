<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Department Master Form</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
</head>
<%@ include file="AHeader.jsp"%>							
<form method="POST" action="JSaveDepartmentMaster.jsp" onsubmit="return validate();">       
<head>
<title>PAYROLL SYSTEM</title>
</head>
<br><h3>Department Master Details</h3>
<hr>
<center>
<table bgcolor="white">
<br>
<tr><td>Dept Code	</td><td><input type="text" name="deptcode" onBlur="dcode()"></td></tr>
<tr><td>Dept Name	</td><td><input type="text" name="deptname" onBlur="ddesc()"></td></tr>
<tr><td>Dept Location</td><td><input type="text" name="deptlocation" onBlur="dloc()"></td></tr>
</br>
</table>
</center>
<center>
</br>
<table>
 <tr>
     <td><input type="submit" name="submit" value="Submit"></td>
	<td><input type="reset" name="reset" value="Reset"></td>
 </tr>
</table>
</center>
</center>
</form>
<%@ include file="AFooter.jsp" %>
