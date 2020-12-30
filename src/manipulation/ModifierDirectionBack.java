package manipulation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DataBase;


@WebServlet("/ModifierDirectionBack")
public class ModifierDirectionBack extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ModifierDirectionBack() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection c;
		
		
		
		int code=Integer.parseInt(request.getParameter("code"));// le code de la direction ce trouver dans un champ hidden
		String nom=request.getParameter("nom");
		String email=request.getParameter("email");
		
		try {
			c=DataBase.conn();
			PreparedStatement stmt=c.prepareStatement("UPDATE `direction` SET `Nom_direction`=?,`Email`=? WHERE Code_direction=?");
			stmt.setString(1, nom);
			stmt.setString(2, email);
			stmt.setInt(3, code);
			
			stmt.executeUpdate();
			
			request.getRequestDispatcher("./DasAdminstrateur.jsp").include(request, response);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
