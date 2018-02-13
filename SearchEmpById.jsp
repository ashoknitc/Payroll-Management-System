<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<title>Employee Report</title>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Employee Report Form</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
	<script language="javascript">
	function deleted()
	{
	document.JEmployeeReport.action="DelHEmpRecord.jsp";
	document.JEmployeeReport.submit();
	}
	function addNew()
	{
	document.JEmployeeReport.action="EmpRecord.jsp";
	document.JEmployeeReport.submit();
	}
	</script>
</head>
<%@ include file="AHeader.jsp"%>
<form mothod="post" action="" name="JEmployeeReport" onsubmit="return validate();">
<%@ page import="java.sql.*"%>
<center>
<h1>PAYROLL SYSTEM</h1>
<hr>
<br>
<h2>Employee Report</h2>
<table bgcolor="white" border="1" alignment="Right" width="100%" style="font-size:20px;">

<%
try
{
String str;
String eid=request.getParameter("empid");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Payroll","payroll");
str="select * from employee where empid='"+eid+"'";
PreparedStatement pstmt=con.prepareStatement(str);
ResultSet rs=pstmt.executeQuery();
if(rs.next())
{
	if(eid.equals(rs.getString(1)))
	{
%>
	<tr><td width="50%">EmpId:</td><td width="70%" border="0"><%=rs.getString(1)%></td>
	</tr>
	<tr>
		<td> EmpName</td><td><%=rs.getString(2)%></td>
	</tr>
	<tr>
		<td> Department</td><td width="80%"><%=rs.getString(13)%></td>
	</tr>
	<tr>
		<td>Designation</td><td><%=rs.getString(14)%></td>
	</tr>
	<tr>
		<td>Address</td><td><%=rs.getString(7)%></td>
	</tr>
			<tr><td>Date of Joining</td><td><%=rs.getString(6)%></td>
	</tr>
	<tr>
			<td>Email </td><td><%=rs.getString(9)%></td>
	</tr>
	<tr>
			<td>Phone </td><td><%=rs.getString(8)%></td>
	</tr>
<%
	}
 }
 else 
 {
%>
	 <center>
	<h2>Record not found....
	<a href="EmployeeSearch.jsp">Click Here To Search Again</a></h2>
	</center>
</table>
<%
 }
}catch(Exception ex){out.println(ex.toString());
%>
			<h2 alignment="right">Record already exists!!! </br>
			<a href="EmployeeSearch.jsp">Click Here To Search Again</a></h2>
<%
}
%>
</br>

<table>
 <tr>
    
 </tr>
</table>
</center>

</form>
<%@ include file="AFooter.jsp"%>