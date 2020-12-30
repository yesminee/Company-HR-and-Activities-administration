<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="DB.DataBase , entity.ResponsableDirection"%>
     <%@ page import="java.util.* , java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="header.jsp" %>
	
	<% 
		Connection c;
		ResultSet rs=null;
		
		c=DataBase.conn();
		
		PreparedStatement stmt=c.prepareStatement("SELECT `Code_direction`, `Nom_direction` FROM `direction` WHERE `Code_direction` NOT IN (SELECT `Code_direction` FROM `responsable_direction`)");
		
		rs=stmt.executeQuery();
	%>
		<h1 style="margin-top: 20px; margin-left: 20px; color: #131161;">Ajouter Responsable direction</h1>
			<div class="container">
				<div class="card">
					<div class="card-body">
	<form action="AjouterResponsableBack" method="POST">
	
		<label  class="col-sm-5 col-form-label">Login:</label>
		<div class="col-sm-12">
		<input class="form-control" type="text" name="login" placeholder="Entrer Login" required/>
		</div>
	
	
		<label class="col-sm-5 col-form-label">Password:</label>
		<div class="col-sm-12">
		<input class="form-control" type="text" name="password" placeholder="Entrer Password" required/>
	</div>
							
	
		<label  class="col-sm-5 col-form-label">Nom direction:</label>
		<div class="col-sm-12">
		<select name="code" class="form-control" required>
			
			<% 
				while(rs.next()){ %>
					<option value=<%= rs.getInt("Code_direction") %> > <%=rs.getString("Nom_direction") %> </option>		
			<%	
			}
			%>
		
		</select>
			</div>
			<br />
		<button  class="btn btn-primary">Ajouter</button>
	</form>
	</div>
	</div>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>