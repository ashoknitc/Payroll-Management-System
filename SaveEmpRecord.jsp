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
<%
try{
   String empids=request.getParameter("empid");
   String empnames=request.getParameter("empname");
   String genders=request.getParameter("empgender");
   String empstatuss=request.getParameter("empstatus");
   String dobs=request.getParameter("dob");
   String dojs=request.getParameter("doj");
   String addresss=request.getParameter("empaddress");
   String phones=request.getParameter("emphone");
   String empemails=request.getParameter("empemail");
   String pwds=request.getParameter("pwd");
   float salarys=Float.parseFloat(request.getParameter("sal"));
   String workplaces=request.getParameter("workplace");
   String deptname=request.getParameter("deptname");
   String desnname=request.getParameter("desnname");
   float tas=Float.parseFloat(request.getParameter("ta"));
   float das=Float.parseFloat(request.getParameter("da"));
   float hras=Float.parseFloat(request.getParameter("hra"));
   float others=Float.parseFloat(request.getParameter("other"));
   
	Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","payroll","payroll");
   String query="insert into employee(empid,empname,gender,status,dob,doj,address,phone,email,password,salary,workplace,deptname,desnname,ta,da,hra,other) values('"+empids+"','"+empnames+"','"+genders+"','"+empstatuss+"','"+dobs+"','"+dojs+"','"+addresss+"','"+phones+"','"+empemails+"','"+pwds+"',"+salarys+",'"+workplaces+"','"+deptname+"','"+desnname+"',"+tas+","+das+","+hras+","+others+")";
   PreparedStatement pstmt=conn.prepareStatement(query);
   pstmt.executeUpdate();
%>
<center>
<h2>Record Inserted Successfully .....
<a href="EmpRecord.jsp">Click Here To Go Back</a></h2>
</center>
<%
  }catch(Exception ex){ out.println(ex.toString());
%>
<center>
<h2>Dublicate employee code is not allowed here!!!</br>
<a href="EmpRecord.jsp">Click Here To Back</a>
</center>

<%
}
%>
<%@ include file="AFooter.jsp"%>