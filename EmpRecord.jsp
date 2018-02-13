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
	function validate()
	{
		var result=true;
		var e=document.getElementByName("empemail")[0].value;
		var atindex=e.indexOf('@');
		var dotindex=e.lastIndexOf('.');
		if(atindex<1 || dotindex>=e.length-2 || dotindex-atindex<3)
			return false;
		return(result);
	}
	
	function saving()
	{
		var result=true;
		var e=document.getElementByName("empemail")[0].value;
		var atindex=e.indexOf('@');
		var dotindex=e.lastIndexOf('.');
		if(atindex<1 || dotindex>=e.length-2 || dotindex-atindex<3)
		{
				return false;
		}
		else
		{
		
//		return(result);
			document.EmpRecord.action="SaveEmpRecord.jsp";
			document.EmpRecord.submit();
		}
	}
	function deleted()
	{
	document.EmpRecord.action="DelHEmpRecord.jsp";
	document.EmpRecord.submit();
	}
	function addNew()
	{
	document.EmpRecord.action="EmpRecord.jsp";
	document.EmpRecord.submit();
	}
	</script>
	</head>
<%@ include file="AHeader.jsp"%>					
<form method="POST" action="SaveEmpRecord.jsp" name="EmpRecord" onsubmit="return validate();">
        
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
        <td><font color="#800000"><b>Employee ID</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="text" id="empid" name="empid" required="required"></td>
<td></td>
        <td><font color="#800000"><b>Employee Name</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="text" id="empname" name="empname" required="required"></td>
<td></td>
</tr>

<tr>
<td></td>
        <td><font color="#800000"><b>Gender</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><select id="empgender" name="empgender">
				<option>Male</option>
				<option>Female</option>
			</select>
		</td>
<td></td>
        <td><font color="#800000"><b>Marital Status</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><select id="empstatus" name="empstatus">
			<option>Married</option>
			<option>Unmarried</option>
		</td>
<td></td>
</tr>

<tr> 
<td><label><font color="#CC99FF"><strong>12-jan-1990</strong></font></label></td>
        <td><font color="#800000"><b>Date of Birth</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="text" placeholder="dd-mmm-yyyy" id="dob" name="dob" required="required"></td>
<td></td>
<td><font color="#800000" size=""><b>Date of Joining</b></font></td>
        <td><input type="text" placeholder="dd-mmm-yyyy" name="doj" id="doj"></td>
<td><label><font color="#CC99FF"><strong>01-feb-2010</strong></font></label></td>
</tr>
<tr>
<td></td>
        <td><font color="#800000"><b>Department</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><%@ include file="FetchDeptName.jsp" %></td>
<td></td>
        <td><font color="#800000"><b>Designation</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><%@ include file="FetchDesignMaster.jsp"%></td>
<td></td>
</tr>

<tr>
<td></td>
<td><font color="#800000"><b>Address</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="text" id="empaddress" name="empaddress" required="required"></td>
<td></td>
        <td><font color="#800000"><b>Phone</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="text" id="emphone" pattern="[789]{1}[0-9]{9}" name="emphone" required="required" /></td>
<td></td>
</tr>

<tr>
<td></td>
       <td><font color="#800000"><b>Email ID</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="email" id="empemail" name="empemail"></td>
<td></td>
        <td><font color="#800000"><b>Password</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="password" id="pwd" name="pwd" required="required"></td>
<td></td>
</tr>

<tr>
<td></td>
<td><font color="#800000"><b>Work Place</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="text" id="workplace" name="workplace" required="required"></td>
<td></td>
<td><font color="#800000"><b>Salary</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="text" id="sal" name="sal" pattern="[1-9]{1}[0-9]{0,5}" required="required"></td>
</tr>
<tr>
<td></td>
<td><font color="#800000"><b>TA</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="text" id="ta" name="ta" pattern="[0-9]{0,2}" required="required"></td>
<td></td>
<td><font color="#800000"><b>DA</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="text" id="da" name="da" pattern="[0-9]{0,2}" required="required"></td>
</tr>
<tr>
<td></td>
<td><font color="#800000"><b>HRA</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="text" id="hra" name="hra" pattern="[0-9]{0,2}" required="required"></td>
<td></td>
<td><font color="#800000"><b>Other</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="text" id="other" name="other" pattern="[0-9]{0,2}" required="required"></td>
</tr>
</table>
</br>
<center>
<table>
 <tr>
    <td><input type="submit" name="save" value="Save"/></td></form>
	<td><form action="DelHEmpRecord.jsp" method="post"><input type="submit" name="delete" value="Delete"></form></td>
	<td><form action="EmpRecord.jsp" method="post"><input type="submit" name="addnew" value="AddNew"></form></td>
	<td><input type="reset" name="reset" value="Reset"></td>
 </tr>
</table>
</center>
</center>

<%@ include file="AFooter.jsp"%>