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
	<h2>Modifier Responsable</h2>
		<%
		int code=Integer.parseInt(request.getParameter("code"));
		ResultSet rs=null;	
		Connection c=DataBase.conn();
		
		
		
		PreparedStatement stmt=c.prepareStatement("select Login , Password , Code_direction from responsable_direction where Code_utilisateur=?");
		stmt.setInt(1, code);
		
		
		
		rs=stmt.executeQuery();
		%>
		<%
			if(rs.next()){  
		int codeD =rs.getInt("Code_direction");%>
				
				<form method="post" action="ModifierResponsableBack">
					  <div class="form-group">
					<label>Login:</label>
					<input class="form-control" type="text" name="login" value=<%=rs.getString("Login") %> />
					</div>
					<div class="form-group">
					<label>Password:</label>
					<input type="text" class="form-control" name="password" value=<%=rs.getString("Password") %> />
					</div>
					<input type="hidden" class="form-control" name="code" value=<%= code %>   /> <br />
						
		<%
			stmt=c.prepareStatement("SELECT `Code_direction` FROM `direction` WHERE `Code_direction` NOT IN (SELECT `Code_direction` FROM `responsable_direction`)");
			rs=stmt.executeQuery();
			
		%>	<div class="form-group">
			<label>Code</label>
			<select name="codeD" class="form-control">
					<option value=<%= codeD %> ><%=codeD %></option>
					<%
					
						while(rs.next()){ %>
							<option value=<%=rs.getInt("Code_direction") %> > <%=rs.getInt("Code_direction") %> </option>	
					<%	}
					%>
			
			</select>	
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