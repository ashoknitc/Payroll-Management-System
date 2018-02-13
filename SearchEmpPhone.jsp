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
<form mothod="post" action="" name="SearchEmpName" onsubmit="return validate();">
<%@ page import="java.sql.*"%>
<center>
<h1>PAYROLL SYSTEM</h1>
<hr>
<br>
<h2>Employee Report</h2>
<%
try
{
String str;
String phones=request.getParameter("mobile");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Payroll","payroll");
str="select * from employee where phone='"+phones+"'";
PreparedStatement pstmt=con.prepareStatement(str);
ResultSet rs=pstmt.executeQuery();
int i=0;
while(rs.next())
{
	if(phones.equals(rs.getString(8)))
	{
		i=1;
%>
	<br><br>
	<table bgcolor="white" border="1" alignment="Right" width="100%" style="font-size:20px;">
	<tr><td>EmpId:</td><td><%=rs.getString(1)%></td>
	</tr>
	<tr>
		<td> EmpName</td><td><%=rs.getString(2)%></td>
	</tr>
	<tr>
		<td> Department</td><td><%=rs.getString(13)%></td>
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
	</table>
	<br>
	<br>
<%
	}
 }
if(i==0)
{
%>
	 <center>
	<h2>Record not found....
	<a href="PhoneSearch.jsp">Click Here To Search Again</a></h2>
	</center>
<%
}}catch(Exception ex){out.println(ex.toString());
%>
			<h2 alignment="right">Record already exists!!! </br>
			<a href="PhoneSearch.jsp">Click Here To Search Again</a></h2>
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