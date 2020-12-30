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
		<h2>Modifier Theme</h2>
	<%
		int code=Integer.parseInt(request.getParameter("code"));
		ResultSet rs=null;	
		Connection c=DataBase.conn();
		
		
		
		PreparedStatement stmt=c.prepareStatement("select Nom_theme from theme where Code_theme=?");
		stmt.setInt(1, code);
		
		rs=stmt.executeQuery();
		
		%>
		<%
			if(rs.next()){ %>
				
				<form method="post" action="ModifierThemeBack">
				<div class="form-group">
					<label>Nom theme:</label>
					<input class="form-control" type="text" name="nom" value=<%=rs.getString("Nom_theme") %> />
					<br />
					</div>
				<div class="form-group">	
					<input class="form-control" type="hidden" name="code" value=<%= code %>   />
					<button class="btn btn-primary"> Modifier </button>
				</div>	
				</form>
				
				
	<%	 	}else{ %>
				<p> Code du theme est incorrect </p>	
		<%	}
		%>
		<%@ include file="footer.jsp" %>
</body>
</html>