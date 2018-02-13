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
<%@ page import="java.sql.*" %>
<%
try{
   String empids=request.getParameter("empid");
   String addresss=request.getParameter("empaddress");   
   String empemails=request.getParameter("empemail");
   String empphones=request.getParameter("empphone");
  
   Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","payroll","payroll");
   Statement stmt=conn.createStatement();
   int rs=stmt.executeUpdate("update employee set address='"+addresss+"',email='"+empemails+"',phone='"+empphones+"' where empid='"+empids+"'");
   
   %><%
   if(rs==1)
   {
%>

<center>
<h2>Record Updated Successfully .....
<a href="UpdateUserDetails.jsp">Click Here To Go Back</a></h2>
</center>
<%
   }
%>
<%
   }catch(Exception ex){ out.println(ex.toString());
%>
<center>
<h2>Dublicate employee code is not allowed here!!!</br>
<a href="UpdateUserDetails.jsp">Click Here To Back</a>
</center>

<%
}
%>
<%@ include file="Footer.jsp"%>