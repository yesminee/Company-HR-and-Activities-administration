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
	
	<h1> Directeur général </h1>
	<main class="container">
	<h2  style="margin-top: 50px; margin-bottom: 20px;">Recherche Activite selon theme</h2>
	<div class="card">
		<div class="card-body">
	<form action="ActiviteListConditionThemeBack" method="post">
		<%
			
			Connection c;
			ResultSet rs=null;
			
			c=DataBase.conn();
			PreparedStatement stmt=c.prepareStatement("Select * from theme");
			
			rs=stmt.executeQuery();
			
			
		
		%>
		 <div  style="margin-top: 5px;"  class="form-group  row">
		<label  style="font-size: 30px; color: #131161;" class="col-sm-2 font-weight-bold">Theme:</label>
			<div class="col-sm-7">
		<%
			while(rs.next()){	%>
					<input type="checkbox" name="theme" value=<%= rs.getInt("Code_theme") %> /><label class="col-sm-3 col-form-label"> <%= rs.getString("Nom_theme")  %> </label>
		<%	}  %>
		
		 </div>
		<button  class="btn btn-primary">Recherche</button> 
		</div>
		</form>
		</div>
		</div>
		<%
		
			stmt=c.prepareStatement("select Code_direction , Nom_direction from direction");
			rs=stmt.executeQuery();
		%>
		<h2 style="margin-top: 50px; margin-bottom: 20px;">Rechecher Activite selon direction</h2>
				<div class="card">
			<div class="card-body">
		<form method="post" action="ActiviteListConditionDirectionBack">
		<div style="margin-top: 5px;" class="form-group row">
		<label style="font-size: 30px; color: #131161;" class="col-sm-2 font-weight-bold">Direction:</label>
		<div class="col-sm-7">
		<%
			while(rs.next()){	%>
					<input  type="checkbox" name="direction" value=<%= rs.getInt("Code_direction") %> />
					<label  class="col-sm-3 col-form-label"> <%= rs.getString("Nom_direction")  %> </label>
		<%	}  %>
		</div>
		<button  class="btn btn-primary">Recherche</button>
		</div>
		</form>
		</div>
		</div>
		
		<h2  style="margin-top: 50px; margin-bottom: 20px;">Rechecher Activite selon Etat</h2>
		<div class="card">
			<div class="card-body">
				<form method="post" action="ActiviteListConditionEtatBack">
					<div class="form-group row" style="margin-top: 5px;">
					<label  style="font-size: 30px; color: #131161;" class="col-sm-2 font-weight-bold">Etat:</label>
			<div class="col-sm-7">
			<input type="checkbox" name="etat" class="form-check-input"  value="non_realise" /><label     class="col-sm-3 col-form-label">non_realise</label>
			<input type="checkbox" name="etat" class="form-check-input"  value="en_cours" /><label     class="col-sm-3 col-form-label">en_cours</label>
			<input type="checkbox" name="etat" class="form-check-input"  value="acheve" /><label    class="col-sm-3 col-form-label">acheve</label>
				<br />
	
						</div>
		<button  class="btn btn-primary">Recherche</button>
		</div>	
		</form>
		</div>
		</div>
	</main>
	<%@ include file="footer.jsp" %>
</body>
</html>