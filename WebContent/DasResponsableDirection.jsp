<%@page import="DB.DataBase , entity.ResponsableDirection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.* , java.sql.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<link rel="stylesheet" href="style.css" type="text/css">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	

	<h1>  Responsable Direction </h1>
	
	<main class="container">
	<a href="AjouterActP1" 	class="btn btn-primary btn-lg"  role="button" >Ajouter Activite</a>
	
	
	
	
	<%
		
		Connection c;
		ResultSet rs=null;
		c=DataBase.conn();
		boolean b=true;
		
		PreparedStatement stmt=c.prepareStatement("select Code_activite , Intitule , Etat from activite where Direction=?");
		ResponsableDirection rd=(ResponsableDirection)session.getAttribute("utilisateur");
		
		
		stmt.setInt(1,rd.getCodeDirection());
		
		rs=stmt.executeQuery();
		%>
		<br />
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th  scope="col">Code activite</th>
					<th  scope="col">Intitule</th>
					<th  scope="col">Etat</th>
				</tr>	
			</thead>
			<tbody>
	<%  while(rs.next()){
			b=false; %>
			<tr>
				<td><%=  rs.getInt("Code_activite") %></td>
				<td><%=  rs.getString("Intitule") %></td>
				<td><%=  rs.getString("Etat") %></td>
			</tr>	
	<% 	} %>
		</tbody>
		</table>
		<%
		if(b){ %>
				<p class="shadow-lg p-3 mb-5 bg-white rounded font-weight-bold" style="margin-top: 50px; margin-bottom: 20px;"> Aucune Activité trouvée, Veuillez ajouter une </p>
 <% 		}
	%>
	
	
	<div class="container">
	
	<h2  style="margin-top: 50px; margin-bottom: 20px;">Modifier Activite</h2>
			<div class="card">
			<div class="card-body">
	<form method="POST" action="ModifierEtat">
		<div class="form-group  row">
					<label class="col-sm-2 col-form-label">Code Activite</label>
					<div class="col-sm-7">
					<input type="text" name="code" class="form-control"  required="required"/>	
					</div>
		</div>

		<div class="form-group  row">
	
		<label class="col-sm-2 col-form-label">Etat</label>
		<div class="col-sm-7">
		<select name="etat" required="required" class="form-control" >		
			<option value="non_realise">non_realise</option>
			<option value="en_cours">en_cours</option>
			<option value="acheve">acheve</option>
		</select>
		</div>
		</div>

		
		
		<button  class="btn btn-primary">Modifier l'etat de l'activite</button>
	</form>
	 </main>
	 <%@ include file="footer.jsp" %>
</body>
</html>