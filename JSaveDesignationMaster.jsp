<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Department Master Form</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
</head>
<%@ include file="AHeader.jsp"%>
<%@ page import="java.sql.*"%>
<%							
String str;
String deptcodes,desncodes,desndescs,grades,gradedesc;
deptcodes=request.getParameter("deptid");
desncodes=request.getParameter("desncode");
desndescs=request.getParameter("desndesc");
grades=request.getParameter("grade");
gradedesc=request.getParameter("gradedesc");

try{
	DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Payroll","payroll");
	str="insert into designation(deptid,desnid,desn_name,grade,grade_desc) values('"+deptcodes+"','"+desncodes+"','"+desndescs+"','"+grades+"','"+gradedesc+"')";
	PreparedStatement pstmt=con.prepareStatement(str);
	pstmt.executeUpdate();
%>
<center>
	<h2>Record Inserted Successfully .....</br>
	<a href="HDesignationMaster.jsp">Click Here To Back</a></h2>
</center>
<%
  }catch(Exception ex){
%>		
	<center>
		<h2>Record does not exists!!! </br>
		<a href="HDesignationMaster.jsp">Click Here To Back</a></h2>
	</center>		
<% } %>
<%@ include file="AFooter.jsp"%>
