<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Designation Master Form</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
</head>
<%@ include file="AHeader.jsp"%>
<form method="POST" action="JSaveDesignationMaster.jsp" onsubmit="return validate();">
<h2>Designation Master Details</h2> 
<hr>
<br>  
<center>
<table bgcolor="white">
<tr><td>Department Id</td><td><%@ include file="FetchDepartmentId.jsp" %>
</td></tr>
<tr><td>Designation Id</td><td><input type="text" name="desncode"></td></tr>
<tr><td>Designation Name</td><td><input type="text" name="desndesc"></td></tr>

<tr><td>Grade of employee</td><td><select name="grade">
								<option>A</option>
								<option>B</option>
								<option>C</option>
								<option>D</option>
								</select>
</td></tr>
<tr><td>Grade Description</td><td><input type="text" name="gradedesc"></td></tr>
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
        </form>
<%@ include file="AFooter.jsp"%>