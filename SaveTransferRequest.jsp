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
</head>
								
 <%@ include file="EHeader.jsp"%>

<%@ page import="java.sql.*"%>
<center>
<h1>PAYROLL SYSTEM</h1>
<hr>
<br>
</center>
<%
try
{
	String empids=request.getParameter("empid");
	String places=request.getParameter("place");
	String pdates=request.getParameter("pdate");
	DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Payroll","payroll");
	String query="insert into transfer(empid,place,datefrom) values('"+empids+"','"+places+"','"+pdates+"')";
	Statement stmt=conn.createStatement();
	stmt.executeUpdate(query);
	
%>
<center>
<h2>Record Inserted Successfully .....
<a href="RequestToTransfer.jsp">Click Here To Go Back</a></h2>
</center>
<%
  }catch(Exception ex){ out.println(ex.toString());
%>
<center>
<h2>Dublicate employee code is not allowed here!!!</br>
<a href="RequestToTransfer.jsp">Click Here To Back</a>
</center>

<%
}
%>
<%@ include file="EFooter.jsp"%>            					
							