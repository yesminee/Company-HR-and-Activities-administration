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

@WebServlet("/AjouterResponsableBack")
public class AjouterResponsableBack extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AjouterResponsableBack() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection c;
		
		
		String login=request.getParameter("login");
		String password=request.getParameter("password");
		int codeD=Integer.parseInt(request.getParameter("code"));
	
		try {
			c=DataBase.conn();
			PreparedStatement stmt=c.prepareStatement("INSERT INTO `responsable_direction`(`Login`, `Password`, `Code_direction`) VALUES (?,?,?)");
			
			stmt.setString(1, login);
			stmt.setString(2, password);
			stmt.setInt(3, codeD);
			
			stmt.executeUpdate();
			
			request.getRequestDispatcher("./DasAdminstrateur.jsp").forward(request, response);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}

}
