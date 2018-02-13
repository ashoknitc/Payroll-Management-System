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
<table bgcolor="white" border="1">
<th>EmpId</th>
<th>EmpName</th>
<th>Department</th>
<th>Designation</th>
<th>Address</th>
<th>Date of Joining</th>
<th>Email</th>
<th>Phone</th>
<%
try
{
String str;
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Payroll","payroll");
str="select * from employee";
PreparedStatement pstmt=con.prepareStatement(str);
ResultSet rs=pstmt.executeQuery();
String sql2= "select to_date(doj,'DD-mm-yyyy') from employee";
PreparedStatement pstmt1=con.prepareStatement(sql2);
ResultSet rs1=pstmt1.executeQuery();
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(13)%></td>
<td><%=rs.getString(14)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(9)%></td>
<td><%=rs.getString(8)%></td>
</tr>
<% }%>
</table>
<%
}catch(Exception ex){out.println(ex.toString());}
%>
</br>

<table>
 <tr>
    <td><input type="submit" name="delete" value="Delete" onClick="deleted()"></td>
	<td><input type="submit" name="addnew" value="AddNew" onClick="addNew()"></td>
 </tr>
</table>
</center>

</form>
<%@ include file="AFooter.jsp"%>