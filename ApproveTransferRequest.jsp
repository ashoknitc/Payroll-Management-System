<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Update Employee Record</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
</head>
<%@ include file="Header.jsp"%>						
<form mothod="post" action="ViewTransfer.jsp" name="JEmployeeReport" onsubmit="return validate();">
<%@ page import="java.sql.*"%>
<center>
<h1>PAYROLL SYSTEM</h1>
<hr>
<br>
<h2>Employee Transfer Details</h2><hr><br>
<%
	try
	{
	String str;
	String ename=request.getParameter("empid");
	DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Payroll","payroll");
	if(ename.equals("none"))
	{
%>	
	<table bgcolor="white">
		<tr>
			<td></td>
        <td><h2> record not found <br></h2></td>
        <td><h2><a href="ApproveTransfer.jsp">click here to back</a></h2></td>
		<td></td>
		</tr></table>
<%
	}
	else 
	{
		String query="update transfer set status='Approved' where empid='"+ename+"'";
		Statement stmt=con.createStatement();
		stmt.executeUpdate(query);
%>

<table bgcolor="white">
<tr>
	<td></td>td><h2> record Approved sucessfully<br></h2></td>
        <td><h2><a href="ApproveTransfer.jsp">click here to back</a></h2></td>
	<td></td>
</tr>
</table>	
<% 
}
}catch(Exception ex){out.println(ex.toString());}
%>
</br>
</center>
</form>
<%@ include file="Footer.jsp"%>
