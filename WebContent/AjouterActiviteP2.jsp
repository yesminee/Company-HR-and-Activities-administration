<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@  page import="java.util.*, entity.Partenaire , entity.Theme" %>
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
	
	<h1 style="margin-top: 20px; margin-left: 20px; color: #131161;">Ajouter Activite</h1>
	<div class="container">
		<div class="card">
			<div class="card-body">
	
	<form method="post" action="AjouterActP3">
		  <div class="form-group row">
		<label  class="col-form-label">Année</label>
		<div class="col-sm-12">
		<input type="number" name="annee"  class="form-control" required/>
	</div>	
		  
		
		<label class="col-form-label">Intitulé</label>
		<div class="col-sm-12">
		<input type="text" name="intitule"  class="form-control" required/>
		</div>
		  
		<label class="col-form-label">Indicateur</label>
		<div class="col-sm-12">
		<input type="text" name="indicateur"  class="form-control" required/>
		</div>
		  
		<label class="col-form-label">Source d'information</label>
		<div class="col-sm-12">
		<input type="text" name="information"  class="form-control" required/>
		</div>
		  
		<label class="col-form-label">Source financiére</label>
		<div class="col-sm-12">
		<input type="text" name="financiere"  class="form-control" required/>
		</div>
		  <div>
		<label class="col-form-label">Etat</label>
		 <div class="col-sm-12">
		<select required name="etat" class="form-control">
			<option value="non_realise">non_réalise</option>
			<option value="en_cours">en_cours</option>
			<option value="acheve">achevé</option>
		</select>
		</div>
		 
		<label class="col-form-label">Partenaire</label>
		<div class="col-sm-12">
		<select required  name="partenaire" class="form-control">
			
			<% 
				List<Partenaire> tabP=(List<Partenaire>)request.getAttribute("partenaire");
					
				for(Partenaire p:tabP){ %>
						<option value=<%= p.getCode() %>><%= p.getNom() %></option>
						
				<% }
				
			%>
		
		</select>
		
		</div>
		  
		<label class="col-form-label">Theme</label>
		<div class="col-sm-12">
		<select required name="theme" class="form-control">
		
			
			<% 
				List<Theme> tabT=(List<Theme>)request.getAttribute("theme");
					
				for(Theme t:tabT){ %>
						<option value=<%= t.getCode() %>><%= t.getNom() %></option>
						
				<% }
				
			%>
		
		</select><br/>
		</div>
		  <div class="form-group">
		<label class="col-form-label">Periode: </label>
		<div class="form-check form-check-inline">
			<input type="checkbox"  name="periode" value="T1" class="form-check-input"/>
			<label class="form-check-label">Trimestre1</label>
		</div>
		<div class="form-check form-check-inline">
		<input type="checkbox" class="form-check-input" name="periode"  value="T2"/><label  class="form-check-label">Trimestre2</label>
		</div>
		<div class="form-check form-check-inline">
			<input type="checkbox"  class="form-check-input" name="periode"  value="T3"/>
			<label class="form-check-label">Trimestre3</label>
		</div>
		<div class="form-check form-check-inline">
			<input type="checkbox"  class="form-check-input" name="periode"  value="T4"/>
			<label  class="form-check-label">Trimestre4</label>
		</div>
		</div>
		<button type="submit"class="btn btn-primary"> ajouter Activite</button>
	</div>
	</div>
	</form>
</div>
</div>
</div>
<%@ include file="footer.jsp" %>


</body>
</html>