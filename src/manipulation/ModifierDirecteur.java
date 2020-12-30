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

@WebServlet("/ModifierDirecteur")
public class ModifierDirecteur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ModifierDirecteur() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String login=request.getParameter("login");
		String password=request.getParameter("password");
		
		try {
			Connection c=DataBase.conn();
			PreparedStatement stmt=c.prepareStatement("UPDATE `admin_direct` SET `Login`=?,`Password`=? WHERE type=?");
			stmt.setString(1, login);
			stmt.setString(2, password);
			stmt.setString(3, "directeur");
			stmt.executeUpdate();
			request.getRequestDispatcher("./DasDirecteur.jsp").forward(request, response);
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}
