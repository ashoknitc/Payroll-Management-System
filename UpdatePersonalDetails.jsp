<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<title>Update Employee </title>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Update Employee</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
	<script language="javascript">
	
	</script>
</head>
								
 <%@ include file="EHeader.jsp"%>
 <form mothod="post" name="ViewUserDetails" onsubmit="return validate();">
<%@ page import="java.sql.*"%>
<center>
<h1>PAYROLL SYSTEM</h1>
<hr>
<br>

<%
try
{
	session=request.getSession();
	String EmpSessionId=(String)session.getAttribute("EmpLogin");
	
	String addresss=request.getParameter("address");
	 String emails=request.getParameter("email");
	String phones=request.getParameter("phone");
	Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","payroll","payroll");
   Statement stmt=conn.createStatement();
   out.println(EmpSessionId);
   stmt.executeUpdate("update emprecords ser address='"+addresss+"',email='"+emails+"',phone='"+phones"' where empid='"+EmpSessionId+"'");
	

%>
<center>
<h2>Record Updated Successfully .....
<a href="UpdatePersonalDetail.jsp">Click  Go Back</a></h2>
</center>

<%
   }catch(Exception ex){ out.println(ex.toString());
%>
<center>
<h2>Dublicate employee code is not allowed here!!!</br>
<a href="UpdatePersonalDetail.jsp">Click Here To Back</a>
</center>
<table>
<tr>
 <tr>
    <td><input type="submit" name="delete" value="Back To Home" onClick="back()"></td>
 </tr>
 </tr>
</table>
</center>
</form>
<%@ include file="EFooter.jsp"%>            					
							