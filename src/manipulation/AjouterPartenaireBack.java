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

@WebServlet("/AjouterPartenaireBack")
public class AjouterPartenaireBack extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AjouterPartenaireBack() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection c;
		String nom=request.getParameter("nom");
		String email=request.getParameter("email");
		
		try {
			c=DataBase.conn();
			
			PreparedStatement stmt=c.prepareStatement("INSERT INTO `partenaire`(`Nom_partenaire`, `Email`) VALUES (?,?)");
			stmt.setString(1, nom);
			stmt.setString(2, email);
			
			stmt.executeUpdate();
			
			request.getRequestDispatcher("./DasAdminstrateur.jsp").forward(request, response);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
