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
			<select  name="mgrid" id="mgrid">
			<%
				while(rs.next())
				{	
			%>
				
				<option>
				<%=rs.getString(16)%>
				</option>				
				<% } %>
				<option>none</option>
				</select>
				
				<% }catch(Exception e) { out.println(e.toString());} %>