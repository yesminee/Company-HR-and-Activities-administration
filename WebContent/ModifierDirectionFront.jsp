<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.* , java.sql.* , DB.DataBase" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<%@ include file="header.jsp" %>
	<h2>Modifier Direction</h2>
	<%
		int code=Integer.parseInt(request.getParameter("code"));
		ResultSet rs=null;	
		Connection c=DataBase.conn();
		
		
		
		PreparedStatement stmt=c.prepareStatement("select Nom_direction , Email from direction where Code_direction=?");
		stmt.setInt(1, code);
		
		rs=stmt.executeQuery();
		
		%>
		<%
			if(rs.next()){ %>
				
				<form method="post" action="ModifierDirectionBack">
					<div class="form-group">
					<label>Nom direction:</label>
					<input  class="form-control" type="text" name="nom" value=<%=rs.getString("Nom_direction") %> />
					</div>
					<div class="form-group">
					<label>Email:</label>
					<input  class="form-control" type="text" name="email" value=<%=rs.getString("Email") %> />
					<input type="hidden" name="code" value=<%= code %>   />
					</div>
					<button class="btn btn-primary"> Modifier </button>
				</form>
				
				
	<%	 	}else{ %>
				<p> Code de la direction est incorrect </p>	
		<%	}
		%>
	
	<%@ include file="footer.jsp" %>
</body>
</html>