<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Save Deduction Master Details</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
</head>
<%@ include file="AHeader.jsp"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*"%>
<%
String empids,empnames,deptcodes,desncodes;
int years,months,oe1s,oe2s,its,od1s,od2s,od3s;
years=Integer.parseInt(request.getParameter("year"));
months=Integer.parseInt(request.getParameter("month"));
empids=request.getParameter("empid");
empnames=request.getParameter("empname");
deptcodes=request.getParameter("deptcode");
desncodes=request.getParameter("desncode");
oe1s=Integer.parseInt(request.getParameter("oe1"));
oe2s=Integer.parseInt(request.getParameter("oe2"));
its=Integer.parseInt(request.getParameter("it"));
od1s=Integer.parseInt(request.getParameter("od1"));
od2s=Integer.parseInt(request.getParameter("od2"));
od3s=Integer.parseInt(request.getParameter("od3"));
try
{
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Payroll","payroll");
String query;
query="insert into deductions values("+years+","+months+",'"+empids+"',"+oe1s+","+oe2s+","+its+","+od1s+","+od2s+","+od3s+")";
PreparedStatement pstmt=conn.prepareStatement(query);
pstmt.executeUpdate();
%>
<center>
<h2>Record Inserted Successfully .....</br>
<a href="HDeductionMaster.jsp">Click Here To Go Back</a></h2>
</center>
<%
}catch(SQLException ex){out.println(ex.toString());}
 catch(NullPointerException ex1){}
%>            					
<%@ include file="AFooter.jsp"%>