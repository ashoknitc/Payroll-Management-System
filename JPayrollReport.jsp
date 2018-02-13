<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<title>Payroll Report</title>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Payroll Report Form</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
</head>
<%@ include file="AHeader.jsp"%>
<%@ page import="java.sql.*"%>
<center>
<h1>PAYROLL SYSTEM</h1>
<hr>
<h2>Payroll Report</h2>
<table bgcolor="white" border="1">
<th>ECode</th>
<th>Name</th>
<th>Address</th>
<th>DptName</th>
<th>DesnName</th>
<th>Basic</th>
<th>year</th>
<th>month</th>
<th>House Rent</th>
<th>Loans</th>
<th>IT</th>
<th>GPF</th>
<th>PLI</th>
<th>Others</th>
<% 
try{
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Payroll","payroll");
String query="select *from employee,deductions where employee.empid=deductions.empid";
PreparedStatement pstmt=con.prepareStatement(query);
ResultSet rs=pstmt.executeQuery();
while(rs.next())
{%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(13)%></td>
<td><%=rs.getString(14)%></td>
<td><%=rs.getString(11)%></td>
<td><%=rs.getInt(21)%></td>
<td><%=rs.getInt(22)%></td>
<td><%=rs.getInt(24)%></td>
<td><%=rs.getInt(25)%></td>
<td><%=rs.getInt(26)%></td>
<td><%=rs.getInt(27)%></td>
<td><%=rs.getInt(28)%></td>
<td><%=rs.getInt(29)%></td>
</tr><%}%>
</table>
</center>
<%
}catch(SQLException ex){out.println(ex.toString());}
%>
<%@ include file="AFooter.jsp"%>