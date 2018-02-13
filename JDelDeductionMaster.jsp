<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Deleted Deduction Master</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
</head>
<%@ include file="AHeader.jsp"%>
<%@ page import="java.sql.*" %>
<%
String empids,empnames,deptcodes;
empids=request.getParameter("empid");
empnames=request.getParameter("empname");
deptcodes=request.getParameter("deptcode");
try
{
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Payroll","payroll");
String query;
query="delete from deductions where empid='"+empids+"'";
PreparedStatement pstmt=conn.prepareStatement(query);
pstmt.executeUpdate();
%>
<center>
<h2>Record Deleted Successfully .....</br>
<a href="HDelDeductionMaster.jsp">Click Here To Go Back</a></h2>
</center>
<%
}catch(SQLException ex){
%> 
 <center>
<h2>Record doesn't exists!!!!</br>
<a href="HDelDeductionMaster.jsp">Click Here To Go Back</a></h2>
</center>        
<% } %>  					
<%@ include file="AFooter.jsp"%>