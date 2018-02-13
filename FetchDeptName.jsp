<%@ page import="java.sql.*" %>
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","payroll","payroll");
	String query;
	query="select * from department";
	PreparedStatement pstmt=con.prepareStatement(query);
	ResultSet rs=pstmt.executeQuery();
%>
	<select  name="deptname" id="deptname">
<%
	while(rs.next())
	{	
%>
		<option>
			<%=rs.getString(2)%>
		</option>				
<% 
} 
%>
		<option>
			none
		</option>
	</select>
				
<% }catch(Exception e) { out.println(e.toString());} %>