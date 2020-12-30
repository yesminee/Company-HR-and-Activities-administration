<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	
	<h1 style="margin-top: 20px; margin-left: 20px;">Adminstrateur</h1>
	
		<div class="container">
		<div class="card">
			<div class="card-body">
	
	<h2 style="color: #131161;">Ajouter:</h2>
	<ul>
	<li> <a href="AjouterDirectionFRONT.jsp">Ajouter Direction</a></li>
	<li> <a href="AjouterPartenaireFront.jsp">Ajouter Partenaire</a></li>
	<li><a href="AjouterThemeFront.jsp">Ajouter Theme</a></li>
	<li> <a href="AjouterResponsableFront.jsp">Ajouter Responsable</a> </li> 
	</ul>
	</div>
	</div>
	</div>
	<hr />

		<div class="container">
			<div class="card">
				<div class="card-body">	
	
	<h2 style="color: #131161;">Afficher:</h2>
	<ul>
	<li> <a href="DirectionList">Afficher Direction</a></li>
	<li><a href="PartenaireList">Afficher Partenaire</a></li>
	<li><a href="ThemeList">Afficher Theme</a></li>
	<li><a href="UtilisateurList">Afficher Utilisateur</a></li>
	</ul>
	</div>
	</div>
	</div>
	<hr />
	
			<div class="container">
			<div class="card">
				<div class="card-body">
	
	<h2 style="color: #131161;">Supprimer:</h2>
	<div style="display:flex;flex-wrap: wrap; justify-content: space-between;">
	<form action="SupprimerDirection" method="post">
		<div class="form-group">
			<label>Code direction</label> <input type="text" name="code" required class="form-control"/>
			<button class="btn btn-primary">Supprimer Direction</button>
		</div>
	</form>
	<form action="SupprimerPartenaire" method="post">
		<div class="form-group">
		<label>Code Partenaire</label> <input type="text" name="code" required class="form-control"/>
		<button class="btn btn-primary">Supprimer Partenaire</button>
		</div>
	</form>
	<form action="SupprimerTheme" method="post">
		<div class="form-group">
		<label>Code Theme</label> <input type="text" name="code" required class="form-control"/>
		<button class="btn btn-primary">Supprimer Theme</button>
		</div>
	</form>
	<form action="SupprimerResponsable" method="post">
		<div class="form-group">
		<label>Code Responsable</label> <input type="text" name="code" required class="form-control"/>
		<button class="btn btn-primary">Supprimer Responsable</button>
		</div>
	</form>
	
	</div>
	</div>
	</div>
	</div>
	<hr />
	
		
		<div class="container">
		<div class="card">
			<div class="card-body">
	<h2 style="color: #131161;">Modifier:</h2>
	<div style="display:flex;flex-wrap: wrap; justify-content: space-between;">
		<form action="ModifierDirectionFront.jsp" method="post">
		<div class="form-group">
		<label>Code direction</label> <input type="text" name="code" required class="form-control"/>
		<button class="btn btn-primary">Modifier Direction</button>
		</div>
	</form>
	<form action="ModifierPartenaireFront.jsp" method="post">
		<div class="form-group">
		<label>Code Partenaire</label> <input type="text" name="code" required class="form-control"/>
		<button class="btn btn-primary">Modifier Partenaire</button>
		</div>
	</form>
	<form action="ModifierThemeFront.jsp" method="post">
		<div class="form-group">
		<label>Code Theme</label> <input type="text" name="code" required class="form-control"/>
		<button class="btn btn-primary">Modifier Theme</button>
		</div>
	</form>
	<form action="ModifierResponsableFront.jsp" method="post">
		<div class="form-group">
		<label>Code Responsable</label> <input type="text" name="code" required class="form-control"/>
		<button class="btn btn-primary">Modifier Responsable</button>
		</div>
	</form>
		</div>
		</div>
		</div>
		</div>
	<br />
	
		<div class="container">
			<div class="card">
				<div class="card-body">
				<h2 style="color: #131161;">Modifier Adminstrateur</h2>
				<ul>
					<li><a href="ModifierAdminstrateurFront.jsp">Modifier Adminstrateur</a></li>
				</ul>
	</div>
	</div>
		<div class="card">
				<div class="card-body">
				<h2 style="color: #131161;">Modifier Directeur</h2>
				<ul>
					<li>	<a href="ModifierDirecteurFront.jsp">Modifier Directeur</a></li>
				</ul>
				</div>
				</div>
				</div>
			
	
		<%@ include file="footer.jsp" %>
</body>
</html>