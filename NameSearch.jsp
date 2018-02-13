<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Grade Master Form</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
</head>

<%@ include file="AHeader.jsp"%>		
<form method="POST" action="SearchEmpName.jsp" onsubmit="return validate();">
<h2>PAYROLL SYSTEM</h2>
<hr>    
<center>
<table bgcolor="white">
<center>
<h3>Search Employee Records</h3>
<table bgcolor="white">
<tr>
<td align="right"><div align="center">Name</div></td><td><input type="text" name="name" required="required"></td>
</tr>
</table>
</br>
 <tr>
	 <td><input type="submit" name="save" value="Search"></td>
 </tr>
</table>

</center>
        </form>
		
<%@ include file="AFooter.jsp"%>