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

@WebServlet("/AjouterThemeBack")
public class AjouterThemeBack extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AjouterThemeBack() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String nom=request.getParameter("nom");
		
		try {
			Connection c=DataBase.conn();
			PreparedStatement stmt=c.prepareStatement("INSERT INTO `theme`(`Nom_theme`) VALUES (?)");
			stmt.setString(1, nom);
			
			stmt.executeUpdate();
			
			request.getRequestDispatcher("./DasAdminstrateur.jsp").forward(request, response);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
