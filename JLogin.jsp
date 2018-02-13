<%@ page import="java.sql.*" %>
<%@ page import="connect.*" %>

<%
   int flag=0;
   String paramId,paramPwd;
   paramId=request.getParameter("uid");
   paramPwd=request.getParameter("pwd");
    try{	
	String id,pwd;
	//Connection conn=Connect.getConnection();
	DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Payroll","payroll");
	String str="select * from login";
	PreparedStatement pstmt=conn.prepareStatement(str);
	ResultSet rs=pstmt.executeQuery();
	while(rs.next())
	  {

	    id=rs.getString(1);
		pwd=rs.getString(2);
		if(paramId.equals(id)&&paramPwd.equals(pwd))
		     {
		      flag=1;
			  break;
			 }
	  }
		if(flag==1){
			session=request.getSession();
			session.setAttribute("AdminLogin",paramId);
			//session.setAttribute("session","TRUE");
			
%>
<%

}
else{
flag=0;
%>

<%@ include file="JLogin1.jsp" %>

<%	conn.close();
	}
       }catch(Exception e){ System.out.println(e.toString());}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Home Page</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
</head>
<%@ include file="AHeader.jsp" %>
<form method="POST" action="JLogin.jsp" onsubmit="return validate();">
<table width="100%" height="auto" border="0" align="center" cellpadding="5" cellspacing="0" bgcolor="white">
<tr>
<td width="100%" height="auto">
<ul>
<li>
  
	<h5>	Education is a powerful tool to drive societal transformation and to build advanced knowledge society to meet the challenges of  21st century.</h5>
</li>
	
<li>
		<h5>	Quality, access, equity and accountability are the four pillars of knowledge revolution.<h5>
</li>
<li>
		<h5>   Generation, acquisition, possession and application of knowledge serve as foundation for building a strong and developed information society.<h5>
</li>
		
</ul>
</td>
</tr>
<tr>
	<td valin="top">
		<h4 align="center">photos</h4>
			<hr>
				<marquee onmouseover=this.stop(); onmouseout=this.start(); scrollamount="10" loop="152" direction="right">
				<img src="images/pic1.jpg" width="100%" height="400">
				<img src="images/pic2.jpg" width="100%" height="400">
				<img src="images/pic3.jpg" width="100%" height="400">
				<img src="images/buliding.jpg" width="100%" height="400">
				<img src="images/contact.jpg"  width="100%" height="400">
				</marquee>
	</td>
			
</tr>
</table>
 </form>
 <%@ include file="AFooter.jsp" %>