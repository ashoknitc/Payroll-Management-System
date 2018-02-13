<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<title>Department Wise Report</title>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Department Wise Report Form</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
	<script language="javascript">
	function deleted()
	{
	document.JDepartmentWiseReport.action="DelDepartmentRecord.jsp";
	document.JDepartmentWiseReport.submit();
	}
	function addNew()
	{
	document.JDepartmentWiseReport.action="HDepartmentMaster.jsp";
	document.JDepartmentWiseReport.submit();
	}
	</script>
</head>
<%@ include file="AHeader.jsp"%>							
          <form mothod="post" action="" name="JDepartmentWiseReport" onsubmit="return validate();">
<%@ page import="java.sql.*"%>
<center>
<h1>PAYROLL SYSTEM</h1>
<hr>
<h2>Department Wise Report</h2>
<table bgcolor="white" border="1">
	<th>Department Id</th>
	<th>Department Name</th>
	<th>Department Location</th>
<% 
	try
	{
	String query="select * from department";
	DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Payroll","payroll");
	PreparedStatement pstmt=con.prepareStatement(query);
	ResultSet rs=pstmt.executeQuery();
	while(rs.next())
	{
%>
	<tr>
	<td><%=rs.getString(1)%></td>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	</tr>
<% }%>
</table>
<%
	}catch(SQLException ex){out.println(ex.toString());}
%>
<br>
<table>
	<tr>
		<td><input type="submit" name="delete" value="Delete" onClick="deleted()"></td>
		<td><input type="submit" name="addnew" value="AddNew" onClick="addNew()"></td>
	</tr>
</table>
</center>
</form>
<%@ include file="AFooter.jsp"%>