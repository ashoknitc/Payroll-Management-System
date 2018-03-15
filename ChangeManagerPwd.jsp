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
<%@ include file="Header.jsp"%>								
<%@ page import="java.sql.*" %>
<%@ page import="connect.*" %>
<% 
	String oldpwd=request.getParameter("oldpwd");
	String newpwd=request.getParameter("newpwd");
	String cnewpwd=request.getParameter("cnewpwd");
	session=request.getSession();
	String mlogin=(String)session.getAttribute("MgrLogin");
	Connection con=null;
	Statement stmt=null;
	String pwd="";
	String pass="";
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","payroll","payroll");
		stmt=con.createStatement();		
		ResultSet rs=stmt.executeQuery("select * from employee where mgrid='"+mlogin+"'");
		if(rs.next())
		{
		 pass=rs.getString("mgrid");
		 pwd=rs.getString("password");
		}
		if(newpwd.equals(cnewpwd))
		{	
			if(pwd.equals(oldpwd))
			{
				if(pass.equals(mlogin))
				{
					stmt=con.createStatement();
					int i=stmt.executeUpdate("update employee set password='"+newpwd+"' where mgrid='"+mlogin+"'");
				%>
					<center>
					<h2>password Change  Successfully .....
					<a href="ChangeManagerPassword.jsp">Click Here To Go Back</a></h2>
					</center>
				<%
				}
				else
				{
					%>
					<center>
					<h2>password does not change.....
					<a href="ChangeManagerPassword.jsp">Click Here To Go Back</a></h2>
					</center>
					<%
				}
			}
			else
			{
				%>
					<center>
					<h2>password does not match .....
					<a href="ChangeManagerPassword.jsp">Click Here To Go Back</a></h2>
					</center>
				<%
			}
		}
		else
		{
		%>
				<center>
				<h2>new password and conform password does not match .....
				<a href="ChangeManagerPassword.jsp">Click Here To Go Back</a></h2>
				</center>
		<%
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}
 %> 
<%@ include file="Footer.jsp" %>
