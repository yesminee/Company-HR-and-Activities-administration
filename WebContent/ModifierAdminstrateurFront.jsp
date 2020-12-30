<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.* , java.sql.* , DB.DataBase" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
		<%
	
	ResultSet rs=null;	
	Connection c=DataBase.conn();
	
	
	
	PreparedStatement stmt=c.prepareStatement("select Login , Password from admin_direct  where type=?");
	stmt.setString(1, "adminstrateur");
	
	rs=stmt.executeQuery();
	
	%>
	<h2>Modifier Adminstrateur</h2>
	<form method="post" action="ModifierAdminstrateur">
	<%
		if(rs.next()){ %>
		<div class="form-group">
		<label>Login:</label>
		<input  class="form-control"  type="text" name="login"  value=<%= rs.getString("Login") %>   /><br />
		</div>
		<div class="form-group">
		<label>password</label>
		<input type="password"   class="form-control"  name="password" value=<%= rs.getString("password") %>        /><br />			
		</div>
	<% 	}
	%>

		<button  class="btn btn-primary">Modifer Adminstrateur</button>
	</form>
	<%@ include file="footer.jsp" %>
</body>
</html>