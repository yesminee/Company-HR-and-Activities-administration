<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>

	<%@ include file="header.jsp" %>
	
	<%
		String b=(String)request.getAttribute("b");
		if(b!=null){
			out.println(request.getAttribute("b"));	
		}
		
	%>
		<div class="container">
		<h1>Authentification Form :</h1>
		<div class="card">
			<div class="card-body">
	<form method="post" action="Authentification">
	
		  <div class="form-group row">
    		<label for="login" class="col-sm-2 col-form-label">Login</label>
    		<div class="col-sm-7">
   			<input type="text" class="form-control" placeholder="Enter Login"  name="login" required>
   			</div>
  		 </div>
  		 <div class="form-group row">
    		<label for="password" class="col-sm-2 col-form-label">Password</label>
    		<div class="col-sm-7">
   			<input type="password" class="form-control"   name="password" required placeholder="Enter password" />
  		 	</div>
  		 </div>
		<button type="submit" class="btn btn-primary">Se connecter</button>
	</form>
	</div>
	</div>
	</div>

		<%@ include file="footer.jsp" %>
</body>
</html>