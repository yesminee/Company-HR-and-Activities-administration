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

/**
 * Servlet implementation class SupprimerResponsable
 */
@WebServlet("/SupprimerResponsable")
public class SupprimerResponsable extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SupprimerResponsable() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int code=Integer.parseInt(request.getParameter("code"));
		
		try {
			Connection c=DataBase.conn();
			
			PreparedStatement stmt=c.prepareStatement("delete from responsable_direction where Code_utilisateur=?");
			stmt.setInt(1, code);
			
			stmt.executeUpdate();
			
			request.getRequestDispatcher("./DasAdminstrateur.jsp").include(request, response);
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
