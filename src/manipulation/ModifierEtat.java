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


@WebServlet("/ModifierEtat")
public class ModifierEtat extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ModifierEtat() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection c;
	
		
		
		int codeA=Integer.parseInt(request.getParameter("code"));
		String etat=request.getParameter("etat");
		
		
		try {
			c=DataBase.conn();
			PreparedStatement stmt=c.prepareStatement("update activite set Etat=? where Code_activite=?");
			
			stmt.setString(1, etat);
			stmt.setInt(2, codeA);
			
			stmt.executeUpdate();
			
			request.getRequestDispatcher("./DasResponsableDirection.jsp").include(request, response);
			
			
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
