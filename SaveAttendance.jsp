<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Saving Employee Record</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
</head>
<%@ include file="Header.jsp" %>		
<%@ page import="java.sql.*" %>
<%
try{
   String empid=request.getParameter("empid");
   int amonth=Integer.parseInt(request.getParameter("month"));
   int ayear=Integer.parseInt(request.getParameter("year"));
   int aday=Integer.parseInt(request.getParameter("aday"));
   int pday=30-aday;
   Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","payroll","payroll");
   String query="insert into attendance(empid,month,year,present,absent) values('"+empid+"',"+amonth+","+ayear+","+pday+","+aday+")";
   PreparedStatement pstmt=conn.prepareStatement(query);
   int rs=pstmt.executeUpdate();
   %><%
   if(rs==1)
   {
%>

<center>
<h2>Record Inserted Successfully .....
<a href="EnterAttendance.jsp">Click Here To Go Back</a></h2>
</center>
<%
   }
%>
<%
   }catch(Exception ex){ out.println(ex.toString());
%>
<center>
<h2>Dublicate employee code is not allowed here!!!</br>
<a href="EnterAttendance.jsp">Click Here To Back</a>
</center>

<%
}
%>
<%@ include file="Footer.jsp" %>