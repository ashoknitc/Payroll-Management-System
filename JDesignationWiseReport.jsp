<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<title>Designation Wise Report</title>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Designation Wise Report Form</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
	<script language="javascript">
	function deleted()
	{
	document.JDesignationWiseReport.action="DelDesignationRecord.jsp";
	document.JDesignationWiseReport.submit();
	}
	function addNew()
	{
	document.JDesignationWiseReport.action="HDesignationMaster.jsp";
	document.JDesignationWiseReport.submit();
	}
	</script>
</head>
<%@ include file="AHeader.jsp"%>
<form mothod="post" action="" name="JDesignationWiseReport" onsubmit="return validate();">
<center>
<h1>PAYROLL SYSTEM</h1>
<hr>
<h2>Designation Wise Report</h2>
<table bgcolor="white" border="1">
<th>Department Id</th>
<th>Designation Id</th>
<th>Designation Name</th>
<th>Grade</th>
<th>Grade Description</th>
<% 
		try
		{
		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Payroll","payroll");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from designation");
while(rs.next())
{%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
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