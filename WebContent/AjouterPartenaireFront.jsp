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
	
		<h1 style="margin-top: 20px; margin-left: 20px; color: #131161;">Ajouter Direction</h1>
	<div class="container">
		<div class="card">
			<div class="card-body">
	<form action="AjouterPartenaireBack" method="POST">
		 
		<label  class="col-sm-5 col-form-label">Nom partenaire:</label>
		<div class="col-sm-12">
		<input class="form-control" type="text" name="nom" />
		</div>
		 
		<label class="col-sm-5 col-form-label">Email:</label>
		<div class="col-sm-12">
		<input class="form-control" type="text" name="email" />
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