package manipulation;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DataBase;

@WebServlet("/ModifierResponsableBack")
public class ModifierResponsableBack extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ModifierResponsableBack() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	Connection c;
		
		
		
		int code=Integer.parseInt(request.getParameter("code"));// le code de la direction ce trouver dans un champ hidden
		String login=request.getParameter("login");
		String password=request.getParameter("password");
		int codeD=Integer.parseInt(request.getParameter("codeD"));
		
		System.out.println(login);
		
		try {
			c=DataBase.conn();
			PreparedStatement stmt=c.prepareStatement("UPDATE `responsable_direction` SET `Login`=?,`Password`=? , `Code_direction`=? WHERE Code_utilisateur=?");
			stmt.setString(1, login);
			stmt.setString(2, password);
			stmt.setInt(3, codeD);
			stmt.setInt(4, code);
			
			stmt.executeUpdate();
			
			request.getRequestDispatcher("./DasAdminstrateur.jsp").include(request, response);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
