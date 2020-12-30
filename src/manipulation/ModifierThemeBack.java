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

@WebServlet("/ModifierThemeBack")
public class ModifierThemeBack extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ModifierThemeBack() {
        super();
        // TODO Auto-generated constructor stub
    }



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection c;
		
		
		
		int code=Integer.parseInt(request.getParameter("code"));// le code de la direction ce trouver dans un champ hidden
		String nom=request.getParameter("nom");
		
		try {
			c=DataBase.conn();
			PreparedStatement stmt=c.prepareStatement("UPDATE `theme` SET `Nom_theme`=? WHERE Code_theme=?");
			stmt.setString(1, nom);
			stmt.setInt(2, code);
			
			stmt.executeUpdate();
			
			request.getRequestDispatcher("./DasAdminstrateur.jsp").include(request, response);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
