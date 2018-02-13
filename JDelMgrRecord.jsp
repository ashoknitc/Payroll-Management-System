<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Deleting Employee Record</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
</head>
<%@ include file="AHeader.jsp"%>
<%@ page import="java.sql.*" %>
<%

String empids=request.getParameter("empid");
String mgrids=request.getParameter("mgrid");
String str;
try{
PreparedStatement pstmt;
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Payroll","payroll");
str="delete from employee where empid='"+empids+"' and mgrid='"+mgrids+"'";
pstmt=con.prepareStatement(str);
pstmt.executeUpdate();
%>
<center>
<h2>Record Deleted Successfully .....
<a href="DelMgrRecord.jsp">Click Here To Go Back</a>
</h2>
</center>
<%
/*}
else
{*/
%>

<%
//}
  }catch(Exception ex){
%>
<center>
<h2> Entered entry is invalid!!!!</h2>
</center>
<%
  out.println(ex.toString());
  }
  
%>
<%@ include file="AFooter.jsp"%>