<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="header.jsp" %>
	
	<a href="UtilisateurList">Affiche Liste des utlisateur</a>
	<a href="DirectionList">Affiche Liste des directions</a>
	<a href="PartenairesList">Affiche List des partenaires</a>
	<a href="ThemeList">Affiche List des themes</a>
	
	<h2>Afficher les activites de l'année courante selon les critères:</h2>
	<form method="post" action="ActiviteList">  
		<div class="form-group">
		<label> Direction:</label><input type="text"  class="form-control" name="direction" />
		</div>
		<div class="form-group">
		<label> Thème:</label><input type="text" name="theme"  class="form-control"/>
		</div>
		<div class="form-group">
		<label> Etat:</label><input type="text" name="etat"  class="form-control"/>
		</div>
		<button type="submit"  class="btn btn-primary">Afficher</button>
	</form>
<%@ include file="footer.jsp" %>
</body>
</html>