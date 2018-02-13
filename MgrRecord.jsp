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
	document.EmpRecord.action="SaveMgrRecord.jsp";
	document.EmpRecord.submit();
	}
	function deleted()
	{
	document.EmpRecord.action="DelMgrRecord.jsp";
	document.EmpRecord.submit();
	}
	function addNew()
	{
	document.EmpRecord.action="MgrRecord.jsp";
	document.EmpRecord.submit();
	}
	</script>
	</head>
<%@ include file="AHeader.jsp"%>					
<form method="POST" action="" name="EmpRecord" onsubmit="return validate();">
        
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
    <td>
	<font color="#800000"><b>Employee ID</b></font><font color="#800000" size=""><b></b></font>
	<font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font>
	</td>
    <td><input type="text" id="empid" name="empid" required="required"></td>
	<td></td>
     
	<td>
	<font color="#800000"><b>Employee Name</b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font>
	</td>
    <td><input type="text" id="empname" name="empname" required="required"></td>
	<td></td>
</tr>

<tr>
	<td></td>
       <td>
	   <font color="#800000"><b>Manger ID</b></font>
	   <font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font>
	   <font color="#800000" size="">&nbsp;</font>
	   </td>
       <td><input type="text" id="mgrid" name="mgrid" required="required"></td>
<td></td>
        <td>
		<font color="#800000"><b>Password</b></font>
		<font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font>
		<font color="#800000" size="">&nbsp;</font>
		</td>
        <td><input type="password" id="pwd" name="pwd" required="required"></td>
<td></td>
</tr>
<tr>
<td></td>
        <td>
		<font color="#800000"><b>Gender</b></font>
		<font color="#800000" size=""><b></b></font>
		<font color="#800000" size=""><b></b></font>
		<font color="#800000" size="">&nbsp;</font>
		</td>
        <td><select id="empgender" name="empgender">
				<option>Male</option>
				<option>Female</option>
			</select>
		</td>
<td></td>
        <td>
		<font color="#800000"><b>Marital Status</b></font>
		<font color="#800000" size=""><b></b></font>
		<font color="#800000" size=""><b></b></font>
		<font color="#800000" size="">&nbsp;</font></td>
        <td><select id="empstatus" name="empstatus">
			<option>Married</option>
			<option>Unmarried</option>
		</td>
<td></td>
</tr>

<tr> 
	<td><label><font color="#CC99FF"><strong>dd-mm-yyyy</strong></font></label>
	</td>
	<td>
	<font color="#800000"><b>Date of Birth</b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size="">&nbsp;</font>
	</td>
    <td><input type="text" id="dob" name="dob" required="required"></td>
	<td></td>
	<td><font color="#800000" size=""><b>Date of Joining</b></font>
	</td>
	<td><input type="text" name="doj" id="doj"></td>
	<td><label><font color="#CC99FF"><strong>dd-mm-yyyy</strong></font></label></td>
</tr>
<tr>
	<td></td>
    <td>
	<font color="#800000"><b>Department</b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size="">&nbsp;</font></td>
    <td><%@ include file="FetchDeptName.jsp" %></td>
<td></td>
    <td>
	<font color="#800000"><b>Designation</b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size="">&nbsp;</font></td>
    <td><%@ include file="FetchDesignMaster.jsp"%></td>
<td></td>
</tr>

<tr>
	<td></td>
	<td>
	<font color="#800000"><b>Address</b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size="">&nbsp;</font></td>
    <td><input type="text" id="empaddress" name="empaddress" required="required"></td>
<td></td>
    <td>
	<font color="#800000"><b>Phone</b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size="">&nbsp;</font>
	</td>
    <td><input type="text" id="emphone" name="emphone" required="required"></td>
<td></td>
</tr>

<tr>
<td></td>
       <td>
	   <font color="#800000"><b>Email ID</b></font>
	   <font color="#800000" size=""><b></b></font>
	   <font color="#800000" size=""><b></b></font>
	   <font color="#800000" size="">&nbsp;</font>
	   </td>
       <td><input type="text" id="empemail" name="empemail" required="required"></td>
<td></td>
<td>
	<font color="#800000"><b>Work Place</b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size="">&nbsp;</font>
	</td>
    <td><input type="text" id="workplace" name="workplace" required="required"></td>
</tr>

<tr>
<td></td>
	<td>
	<font color="#800000"><b>Salary</b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size="">&nbsp;</font></td>
    <td><input type="text" id="sal" name="sal" required="required"></td>
<td></td>
	<td>
	<font color="#800000"><b>TA</b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size="">&nbsp;</font>
	</td>
    <td><input type="text" id="ta" name="ta" required="required"></td>
</tr>

<tr>
<td></td>
	<td>
	<font color="#800000"><b>DA</b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size="">&nbsp;</font></td>
    <td><input type="text" id="da" name="da" required="required"></td>
<td></td>
	<td>
	<font color="#800000"><b>HRA</b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size="">&nbsp;</font>
	</td>
    <td><input type="text" id="hra" name="hra" required="required"></td>
</tr>
<tr>
<td></td>
	<td>
	<font color="#800000"><b>Other</b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size=""><b></b></font>
	<font color="#800000" size="">&nbsp;</font></td>
    <td><input type="text" id="other" name="other" required="required"></td>
<td></td>
</tr>

</table>
</br>
<center>
<table>
 <tr>
    <td><input type="submit" name="save" value="Save" onClick="saving()"></td>
	<td><input type="submit" name="delete" value="Delete" onClick="deleted()"></td>
	<td><input type="submit" name="addnew" value="AddNew" onClick="addNew()"></td>
	<td><input type="reset" name="reset" value="Reset"></td>
 </tr>
</table>
</center>
</center>
        </form>
<%@ include file="AFooter.jsp"%>