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
<%@ include file="AHeader.jsp"%>				
<%@ page import="java.sql.*" %>
<%@ page import="connect.*" %>
<%
   
	String oldpwd=request.getParameter("empid");
	String newpwd=request.getParameter("newpwd");
	String cnewpwd=request.getParameter("cnewpwd");
	session=request.getSession();
	String mlogin=(String)session.getAttribute("AdminLogin");
	Connection con=null;
	Statement stmt=null;
	String pwd="";
	String pass="";
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","payroll","payroll");
		stmt=con.createStatement();		
		ResultSet rs=stmt.executeQuery("select * from employee where empid='"+oldpwd+"'");
		if(rs.next())
		{
		 pass=rs.getString("empid");
		}
		if(newpwd.equals(cnewpwd))
		{	
			
				if(pass.equals(oldpwd))
				{
					stmt=con.createStatement();
					int i=stmt.executeUpdate("update employee set password='"+newpwd+"' where empid='"+oldpwd+"'");
				%>
					<center>
					<h2>password change Successfully .....
					<a href="ResetEmployeePwd.jsp">Click Here To Go Back</a></h2>
					</center>
				<%
				}
				else
				{
					%>
					<center>
					<h2>password does not.....
					<a href="ResetEmployeePwd.jsp">Click Here To Go Back</a></h2>
					</center>
					<%
				}
		}
		else
		{
		%>
				<center>
				<h2>new password and conform password does not match .....
				<a href="ResetEmployeePwd.jsp">Click Here To Go Back</a></h2>
				</center>
		<%
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}
 %> 
 <%@ include file="AFooter.jsp"%>