<%@ page import="java.sql.*" %>
		<%
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","payroll","payroll");
				String query;
				query="select * from employee";
				PreparedStatement pstmt=con.prepareStatement(query);
				ResultSet rs=pstmt.executeQuery();
			%>
			<select  name="empid" id="empid">
			<%
				while(rs.next())
				{	
			%>
				
				<option>
				<%=rs.getString(1)%>
				</option>
				
				<% } %>
				</select>
				<% }catch(Exception e) { out.println(e.toString());} %>