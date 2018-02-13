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
<form mothod="post" action="DownloadPaySlip" name="JEmployeeReport" onsubmit="return validate();">
<%@ page import="java.sql.*"%>

<h1>PAY SLIP</h1>
<hr>

<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%
			String empids=request.getParameter("empid");
			
			Calendar cal=new GregorianCalendar();
            int Month=cal.get(Calendar.MONTH);
            int Year=cal.get(Calendar.YEAR);
            int day=cal.get(Calendar.DAY_OF_MONTH);
            out.println(day+"/"+(Month+1)+"/"+Year);
			out.println();
			int hour=cal.get(Calendar.HOUR);
			int minute=cal.get(Calendar.MINUTE);
			int second=cal.get(Calendar.SECOND);
			out.println(hour+":"+minute+":"+second);
			String str;
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Payroll","payroll");
%>

<h1>Employee Details</h1>
<hr>
<%
	str="select * from employee where empid='"+empids+"'";
	PreparedStatement pstmt=con.prepareStatement(str);
	ResultSet rs1=pstmt.executeQuery();
	while(rs1.next())
	{
%>
	<table border="0">
	<tr>
	<td width="50%">Name:</td><td><%=rs1.getString(2)%></td>
	</tr>
	<tr>
	<td width="50%">Designation:</td><td><%=rs1.getString(14)%></td>
	</tr>
	<tr>
	<td width="50%">Department:</td><td><%=rs1.getString(13)%></td>
	</tr>
	</table>
<%
	}
%>

<h1>Salary</h1>
<hr><br>

<%
	str="select * from employee where empid='"+empids+"'";
	PreparedStatement pstmt2=con.prepareStatement(str);
	ResultSet rs2=pstmt2.executeQuery();
	while(rs2.next())
	{
%>
	<table border="0">
	<tr>
	<td width="50%">Pay_Scale:</td><td><%=rs2.getString(11)%></td>
	</tr>
	<tr>
	<td width="50%">TA:</td><td><%=rs2.getString(17)%></td>
	</tr>
	<td width="50%">DA:</td><td><%=rs2.getString(18)%></td>
	</tr>
	<td width="50%">HRA:</td><td><%=rs2.getString(19)%></td>
	</tr>
	</tr>
	<td width="50%">Others:</td><td><%=rs2.getString(20)%></td>
	</tr>
	
	</tr>
	</table>
<%
	}
%>


<h1>Deductions</h1>
<hr>

<%
	str="select * from deductions,employee,attendance where employee.empid=deductions.empid and employee.empid='"+empids+"' and employee.empid=attendance.empid";
	PreparedStatement pstmt3=con.prepareStatement(str);
	ResultSet rs3=pstmt3.executeQuery();
	if(rs3.next())
	{
		int total_sal,total_deducts;
%>
	<table border="0">
	<tr>
	<td width="50%">Total Deductions:</td>
	<td>
		<%=((Integer.parseInt(rs3.getString(4)))+(Integer.parseInt(rs3.getString(5)))+(Integer.parseInt(rs3.getString(6)))+(Integer.parseInt(rs3.getString(7)))+(Integer.parseInt(rs3.getString(8)))+(Integer.parseInt(rs3.getString(9))))%>
	</td>
	</tr>
	
	<tr>
	<td width="50%">Total Monthly Earning:</td><td><%=((Integer.parseInt(rs3.getString(20)))+(Integer.parseInt(rs3.getString(26)))+(Integer.parseInt(rs3.getString(27)))+(Integer.parseInt(rs3.getString(28)))+(Integer.parseInt(rs3.getString(29))))%></td>
	</tr>
	</table>
<%	

	total_sal=((Integer.parseInt(rs3.getString(20)))+(Integer.parseInt(rs3.getString(26)))+(Integer.parseInt(rs3.getString(27)))+(Integer.parseInt(rs3.getString(28)))+(Integer.parseInt(rs3.getString(29))));
	int total_absent=(Integer.parseInt(rs3.getString(34)));
	int tot_absent;
	if(total_absent>=2)
	{
		tot_absent=total_absent-2;
	}
	else
	{
		tot_absent=total_absent;
	}
	int total_present=30-tot_absent;
	float total_earning=(total_sal* total_present)/30;
	
%>
	<table>
	<tr>
	<td>Total Present day:</td><td><%=total_present %></td>
	</tr>
	</table>
	<table>
	<tr>
	<td>Total salary :</td><td><%=total_earning %></td>
	</tr>
	</table>
<%	
	
	
	total_deducts=((Integer.parseInt(rs3.getString(4)))+(Integer.parseInt(rs3.getString(5)))+(Integer.parseInt(rs3.getString(6)))+(Integer.parseInt(rs3.getString(7)))+(Integer.parseInt(rs3.getString(8)))+(Integer.parseInt(rs3.getString(9))));
	float net_pay=(total_earning)-(total_deducts);
%>
	<table>
	<tr>
	<td>Net Pay:</td><td><%=net_pay %></td>
	</tr>
	</table>
<%
	}
%>















<center>
<br>


</br>
</center>
</form>
<%@ include file="Footer.jsp"%>